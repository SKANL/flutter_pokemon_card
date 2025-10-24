import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart' hide DiagnosticableTreeMixin, DiagnosticsNode;
import '/src/core/core_domain/entities/pokemon_card.dart';
import '/src/core/core_persistence/app_db.dart';
import 'dart:async';
import 'dart:convert';
// *** ADAPTACIÓN V5 CRÍTICA ***
// Importamos el UseCase, NO el repositorio
import '/src/features/pokemon_cards/domain/usecases/get_pokemon_cards_usecase.dart';
import 'package:stream_transform/stream_transform.dart';

part 'pokemon_card_event.dart';
part 'pokemon_card_state.dart';
part 'pokemon_card_bloc.freezed.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class PokemonCardBloc extends Bloc<PokemonCardEvent, PokemonCardState> {

  // The BLoC now depends on the GetPokemonCardsUseCase and AppDb to listen
  // for cache updates (stale-while-revalidate UX).
  PokemonCardBloc({required GetPokemonCardsUseCase getPokemonCards, required AppDb appDb})
      : _getPokemonCards = getPokemonCards,
        _appDb = appDb,
        super(const PokemonCardState()) {
    on<CardsFetched>(
      _onCardsFetched,
      transformer: throttleDroppable(_throttleDuration),
    );
    on<CardsSearched>(
      _onCardsSearched,
      transformer: debounce(const Duration(milliseconds: 500)),
    );

    // Subscribe to DB cache updates and emit cached pages when they change.
    _cacheSub = _appDb.watchCards().listen((rows) {
      // Parse cached rows into entities and dispatch an event. The event
      // handler will emit the new state.
      final cachedCards = rows
          .map((r) {
            final m = r['json'] as String;
            final parsed = m.isNotEmpty ? (jsonDecode(m) as Map<String, dynamic>) : null;
            if (parsed == null) return null;
            return PokemonCard(
              id: parsed['id'] as String,
              name: parsed['name'] as String,
              imageUrl: parsed['imageUrl'] as String? ?? '',
              hp: parsed['hp'] as String?,
              supertype: parsed['supertype'] as String?,
            );
          })
          .whereType<PokemonCard>()
          .toList();

      if (cachedCards.isNotEmpty) add(PokemonCardEvent.cardsCacheUpdated(cachedCards));
    });

    on<CardsCacheUpdated>(_onCardsCacheUpdated);
  }

  final GetPokemonCardsUseCase _getPokemonCards; // <-- Cambio aquí
  final AppDb _appDb;
  StreamSubscription? _cacheSub;
  int _currentPage = 1;
  String? _currentQuery;
  
  @override
  Future<void> close() {
    _cacheSub?.cancel();
    return super.close();
  }

  Future<void> _onCardsFetched(
    CardsFetched event,
    Emitter<PokemonCardState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == PokemonCardStatus.initial) {
        final paginated = await _getPokemonCards(page: _currentPage, query: _currentQuery);
        _currentPage++;
        final combined = List.of(state.cards)..addAll(paginated.data);
        final hasReached = combined.length >= paginated.totalCount;
        return emit(state.copyWith(
          status: PokemonCardStatus.success,
          cards: combined,
          hasReachedMax: hasReached,
        ));
      }

      final paginated = await _getPokemonCards(page: _currentPage, query: _currentQuery);
      _currentPage++;
      final combined = List.of(state.cards)..addAll(paginated.data);
      final hasReached = combined.length >= paginated.totalCount;
      if (paginated.data.isEmpty) {
        emit(state.copyWith(hasReachedMax: true));
      } else {
        emit(state.copyWith(
          status: PokemonCardStatus.success,
          cards: combined,
          hasReachedMax: hasReached,
        ));
      }
    } catch (error, stackTrace) {
      // Log the actual error for debugging
      if (kDebugMode) {
        print('❌ Error in _onCardsFetched: $error');
        print('Stack trace: $stackTrace');
      }
      emit(state.copyWith(status: PokemonCardStatus.failure));
    }
  }

  Future<void> _onCardsSearched(
    CardsSearched event,
    Emitter<PokemonCardState> emit,
  ) async {
    // reset pagination and set query
    _currentPage = 1;
    _currentQuery = event.query;
    try {
      final paginated = await _getPokemonCards(page: _currentPage, query: _currentQuery);
      _currentPage++;
      final hasReached = paginated.data.length >= paginated.totalCount;
      emit(state.copyWith(
        status: PokemonCardStatus.success,
        cards: paginated.data,
        hasReachedMax: hasReached,
      ));
    } catch (error, stackTrace) {
      // Log the actual error for debugging
      if (kDebugMode) {
        print('❌ Error in _onCardsSearched: $error');
        print('Stack trace: $stackTrace');
      }
      emit(state.copyWith(status: PokemonCardStatus.failure));
    }
  }

  Future<void> _onCardsCacheUpdated(
    CardsCacheUpdated event,
    Emitter<PokemonCardState> emit,
  ) async {
    // When cache updates, if UI is still on first page or empty, show cached
    // cards. This keeps the UI fast and offline-capable.
    if (_currentPage <= 2 || state.cards.isEmpty) {
      emit(state.copyWith(status: PokemonCardStatus.success, cards: event.cached, hasReachedMax: false));
    }
  }
}
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
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

class PokemonCardBloc extends Bloc<PokemonCardEvent, PokemonCardState> {

  // *** ADAPTACIÓN V5 CRÍTICA ***
  // El BLoC ahora depende del UseCase
  PokemonCardBloc({required GetPokemonCardsUseCase getPokemonCards})
      : _getPokemonCards = getPokemonCards,
        super(const PokemonCardState()) {
    on<CardsFetched>(
      _onCardsFetched,
      transformer: throttleDroppable(_throttleDuration),
    );
  }

  final GetPokemonCardsUseCase _getPokemonCards; // <-- Cambio aquí
  int _currentPage = 1;

  Future<void> _onCardsFetched(
    CardsFetched event,
    Emitter<PokemonCardState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == PokemonCardStatus.initial) {
        // *** ADAPTACIÓN V5 CRÍTICA ***
        // Llamamos al UseCase
        final cards = await _getPokemonCards(page: _currentPage);
        _currentPage++;
        return emit(state.copyWith(
          status: PokemonCardStatus.success,
          cards: cards,
          hasReachedMax: false,
        ));
      }

      // *** ADAPTACIÓN V5 CRÍTICA ***
      // Llamamos al UseCase
      final cards = await _getPokemonCards(page: _currentPage);
      _currentPage++;
      if (cards.isEmpty) {
        emit(state.copyWith(hasReachedMax: true));
      } else {
        emit(state.copyWith(
          status: PokemonCardStatus.success,
          cards: List.of(state.cards)..addAll(cards),
          hasReachedMax: false,
        ));
      }
    } catch (_) {
      emit(state.copyWith(status: PokemonCardStatus.failure));
    }
  }
}
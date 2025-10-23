part of 'pokemon_card_bloc.dart';

@freezed
abstract class PokemonCardState with _$PokemonCardState {
  const factory PokemonCardState({
    @Default(PokemonCardStatus.initial) PokemonCardStatus status,
    @Default(<PokemonCard>[]) List<PokemonCard> cards,
    @Default(false) bool hasReachedMax,
  }) = _PokemonCardState;
}

enum PokemonCardStatus { initial, success, failure }
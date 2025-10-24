part of 'pokemon_card_bloc.dart';

@freezed
class PokemonCardEvent with _$PokemonCardEvent {
  const factory PokemonCardEvent.cardsFetched() = CardsFetched;
  const factory PokemonCardEvent.cardsSearched(String query) = CardsSearched;
  const factory PokemonCardEvent.cardsCacheUpdated(List<PokemonCard> cached) = CardsCacheUpdated;
}
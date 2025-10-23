import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_card.freezed.dart';

@freezed
abstract class PokemonCard with _$PokemonCard {
  const factory PokemonCard({
    required String id,
    required String name,
    required String imageUrl,
    String? hp,
    String? supertype,
  }) = _PokemonCard;
}
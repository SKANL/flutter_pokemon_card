import '/src/core/core_domain/entities/pokemon_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_card_model.freezed.dart';
part 'pokemon_card_model.g.dart';

@freezed
abstract class PokemonCardModel with _$PokemonCardModel {
  const factory PokemonCardModel({
    required String id,
    required String name,
    required CardImagesModel images,
    String? hp,
    String? supertype,
  }) = _PokemonCardModel;

  factory PokemonCardModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonCardModelFromJson(json);
}

@freezed
abstract class CardImagesModel with _$CardImagesModel {
  const factory CardImagesModel({
    required String small,
    required String large,
  }) = _CardImagesModel;

  factory CardImagesModel.fromJson(Map<String, dynamic> json) =>
      _$CardImagesModelFromJson(json);
}

extension PokemonCardModelX on PokemonCardModel {
  // Puente a la capa de dominio
  PokemonCard toEntity() {
    return PokemonCard(
      id: id,
      name: name,
      imageUrl: images.large,
      hp: hp,
      supertype: supertype,
    );
  }
}
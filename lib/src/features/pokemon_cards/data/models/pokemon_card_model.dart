import '/src/core/core_domain/entities/pokemon_card.dart';

// NOTA: No estamos usando freezed/json_serializable aquí por simplicidad
// y para seguir la guía de la práctica, pero podrías usarlos.

class PokemonCardModel {
  const PokemonCardModel({
    required this.id,
    required this.name,
    required this.images,
    this.hp,
    this.supertype,
  });

  factory PokemonCardModel.fromJson(Map<String, dynamic> json) {
    return PokemonCardModel(
      id: json['id'] as String,
      name: json['name'] as String,
      images: CardImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      hp: json['hp'] as String?,
      supertype: json['supertype'] as String?,
    );
  }

  final String id;
  final String name;
  final CardImagesModel images;
  final String? hp;
  final String? supertype;

  // Este método es el PUENTE entre la capa de Datos y la capa de Dominio
  PokemonCard toEntity() {
    return PokemonCard(
      id: id,
      name: name,
      imageUrl: images.large, // Usamos la imagen grande
      hp: hp,
      supertype: supertype,
    );
  }
}

class CardImagesModel {
  const CardImagesModel({required this.small, required this.large});

  factory CardImagesModel.fromJson(Map<String, dynamic> json) {
    return CardImagesModel(
      small: json['small'] as String,
      large: json['large'] as String,
    );
  }

  final String small;
  final String large;
}
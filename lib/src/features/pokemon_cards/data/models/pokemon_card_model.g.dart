// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonCardModel _$PokemonCardModelFromJson(Map<String, dynamic> json) =>
    _PokemonCardModel(
      id: json['id'] as String,
      name: json['name'] as String,
      images: CardImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      hp: json['hp'] as String?,
      supertype: json['supertype'] as String?,
    );

Map<String, dynamic> _$PokemonCardModelToJson(_PokemonCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'hp': instance.hp,
      'supertype': instance.supertype,
    };

_CardImagesModel _$CardImagesModelFromJson(Map<String, dynamic> json) =>
    _CardImagesModel(
      small: json['small'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$CardImagesModelToJson(_CardImagesModel instance) =>
    <String, dynamic>{'small': instance.small, 'large': instance.large};

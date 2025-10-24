// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonCardModel _$PokemonCardModelFromJson(Map<String, dynamic> json) =>
    _PokemonCardModel(
      id: json['id'] as String,
      name: json['name'] as String,
      images: json['images'] == null
          ? null
          : CardImagesModel.fromJson(json['images'] as Map<String, dynamic>),
      hp: json['hp'] as String?,
      supertype: json['supertype'] as String?,
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      evolvesFrom: const StringOrListConverter().fromJson(json['evolvesFrom']),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      attacks: (json['attacks'] as List<dynamic>?)
          ?.map((e) => AttackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => WeaknessModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      resistances: (json['resistances'] as List<dynamic>?)
          ?.map((e) => ResistanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      retreatCost: (json['retreatCost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      number: json['number'] as String?,
      artist: json['artist'] as String?,
      rarity: json['rarity'] as String?,
      flavorText: json['flavorText'] as String?,
      set: json['set'] == null
          ? null
          : CardSetModel.fromJson(json['set'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonCardModelToJson(_PokemonCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'hp': instance.hp,
      'supertype': instance.supertype,
      'subtypes': instance.subtypes,
      'types': instance.types,
      'evolvesFrom': const StringOrListConverter().toJson(instance.evolvesFrom),
      'abilities': instance.abilities,
      'attacks': instance.attacks,
      'weaknesses': instance.weaknesses,
      'resistances': instance.resistances,
      'retreatCost': instance.retreatCost,
      'number': instance.number,
      'artist': instance.artist,
      'rarity': instance.rarity,
      'flavorText': instance.flavorText,
      'set': instance.set,
    };

_CardImagesModel _$CardImagesModelFromJson(Map<String, dynamic> json) =>
    _CardImagesModel(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$CardImagesModelToJson(_CardImagesModel instance) =>
    <String, dynamic>{'small': instance.small, 'large': instance.large};

_AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) =>
    _AbilityModel(
      name: json['name'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$AbilityModelToJson(_AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'text': instance.text,
      'type': instance.type,
    };

_AttackModel _$AttackModelFromJson(Map<String, dynamic> json) => _AttackModel(
  name: json['name'] as String,
  cost: (json['cost'] as List<dynamic>?)?.map((e) => e as String).toList(),
  convertedEnergyCost: (json['convertedEnergyCost'] as num?)?.toInt(),
  damage: json['damage'] as String?,
  text: json['text'] as String?,
);

Map<String, dynamic> _$AttackModelToJson(_AttackModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
      'convertedEnergyCost': instance.convertedEnergyCost,
      'damage': instance.damage,
      'text': instance.text,
    };

_WeaknessModel _$WeaknessModelFromJson(Map<String, dynamic> json) =>
    _WeaknessModel(
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$WeaknessModelToJson(_WeaknessModel instance) =>
    <String, dynamic>{'type': instance.type, 'value': instance.value};

_ResistanceModel _$ResistanceModelFromJson(Map<String, dynamic> json) =>
    _ResistanceModel(
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$ResistanceModelToJson(_ResistanceModel instance) =>
    <String, dynamic>{'type': instance.type, 'value': instance.value};

_CardSetModel _$CardSetModelFromJson(Map<String, dynamic> json) =>
    _CardSetModel(
      id: json['id'] as String,
      name: json['name'] as String,
      series: json['series'] as String,
      printedTotal: (json['printedTotal'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$CardSetModelToJson(_CardSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'series': instance.series,
      'printedTotal': instance.printedTotal,
      'total': instance.total,
      'releaseDate': instance.releaseDate,
    };

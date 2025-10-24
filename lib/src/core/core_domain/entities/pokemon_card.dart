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
    List<String>? subtypes,
    List<String>? types,
    List<String>? evolvesFrom,
    List<PokemonAbility>? abilities,
    List<PokemonAttack>? attacks,
    List<PokemonWeakness>? weaknesses,
    List<PokemonResistance>? resistances,
    List<String>? retreatCost,
    String? number,
    String? artist,
    String? rarity,
    String? flavorText,
    PokemonCardSet? set,
  }) = _PokemonCard;
}

@freezed
abstract class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    required String name,
    required String text,
    required String type,
  }) = _PokemonAbility;
}

@freezed
abstract class PokemonAttack with _$PokemonAttack {
  const factory PokemonAttack({
    required String name,
    List<String>? cost,
    int? convertedEnergyCost,
    String? damage,
    String? text,
  }) = _PokemonAttack;
}

@freezed
abstract class PokemonWeakness with _$PokemonWeakness {
  const factory PokemonWeakness({
    required String type,
    required String value,
  }) = _PokemonWeakness;
}

@freezed
abstract class PokemonResistance with _$PokemonResistance {
  const factory PokemonResistance({
    required String type,
    required String value,
  }) = _PokemonResistance;
}

@freezed
abstract class PokemonCardSet with _$PokemonCardSet {
  const factory PokemonCardSet({
    required String id,
    required String name,
    required String series,
    int? printedTotal,
    int? total,
    String? releaseDate,
  }) = _PokemonCardSet;
}
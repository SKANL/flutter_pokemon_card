import '/src/core/core_domain/entities/pokemon_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'json_converters.dart';

part 'pokemon_card_model.freezed.dart';
part 'pokemon_card_model.g.dart';

@freezed
abstract class PokemonCardModel with _$PokemonCardModel {
  const factory PokemonCardModel({
    required String id,
    required String name,
    // images can be missing in some trimmed/select responses -> make it nullable
    CardImagesModel? images,
    String? hp,
    String? supertype,
    List<String>? subtypes,
    List<String>? types,
    // evolvesFrom can be either a String or List<String> in the API
    @StringOrListConverter() List<String>? evolvesFrom,
    List<AbilityModel>? abilities,
    List<AttackModel>? attacks,
    List<WeaknessModel>? weaknesses,
    List<ResistanceModel>? resistances,
    List<String>? retreatCost,
    String? number,
    String? artist,
    String? rarity,
    String? flavorText,
    CardSetModel? set,
  }) = _PokemonCardModel;

  factory PokemonCardModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonCardModelFromJson(json);
}

@freezed
abstract class CardImagesModel with _$CardImagesModel {
  const factory CardImagesModel({
    // Images may be absent or partial; keep fields nullable to be defensive
    String? small,
    String? large,
  }) = _CardImagesModel;

  factory CardImagesModel.fromJson(Map<String, dynamic> json) =>
      _$CardImagesModelFromJson(json);
}

@freezed
abstract class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    required String name,
    required String text,
    required String type,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}

@freezed
abstract class AttackModel with _$AttackModel {
  const factory AttackModel({
    required String name,
    List<String>? cost,
    int? convertedEnergyCost,
    String? damage,
    String? text,
  }) = _AttackModel;

  factory AttackModel.fromJson(Map<String, dynamic> json) =>
      _$AttackModelFromJson(json);
}

@freezed
abstract class WeaknessModel with _$WeaknessModel {
  const factory WeaknessModel({
    required String type,
    required String value,
  }) = _WeaknessModel;

  factory WeaknessModel.fromJson(Map<String, dynamic> json) =>
      _$WeaknessModelFromJson(json);
}

@freezed
abstract class ResistanceModel with _$ResistanceModel {
  const factory ResistanceModel({
    required String type,
    required String value,
  }) = _ResistanceModel;

  factory ResistanceModel.fromJson(Map<String, dynamic> json) =>
      _$ResistanceModelFromJson(json);
}

@freezed
abstract class CardSetModel with _$CardSetModel {
  const factory CardSetModel({
    required String id,
    required String name,
    required String series,
    int? printedTotal,
    int? total,
    String? releaseDate,
  }) = _CardSetModel;

  factory CardSetModel.fromJson(Map<String, dynamic> json) =>
      _$CardSetModelFromJson(json);
}

extension PokemonCardModelX on PokemonCardModel {
  // Puente a la capa de dominio
  PokemonCard toEntity() {
    return PokemonCard(
      id: id,
      name: name,
      // Prefer large, fall back to small, fall back to empty string
      imageUrl: images?.large ?? images?.small ?? '',
      hp: hp,
      supertype: supertype,
      subtypes: subtypes,
      types: types,
      evolvesFrom: evolvesFrom,
      abilities: abilities
          ?.map((a) => PokemonAbility(name: a.name, text: a.text, type: a.type))
          .toList(),
      attacks: attacks
          ?.map((a) => PokemonAttack(
                name: a.name,
                cost: a.cost,
                convertedEnergyCost: a.convertedEnergyCost,
                damage: a.damage,
                text: a.text,
              ))
          .toList(),
      weaknesses: weaknesses
          ?.map((w) => PokemonWeakness(type: w.type, value: w.value))
          .toList(),
      resistances: resistances
          ?.map((r) => PokemonResistance(type: r.type, value: r.value))
          .toList(),
      retreatCost: retreatCost,
      number: number,
      artist: artist,
      rarity: rarity,
      flavorText: flavorText,
      set: set != null
          ? PokemonCardSet(
              id: set!.id,
              name: set!.name,
              series: set!.series,
              printedTotal: set!.printedTotal,
              total: set!.total,
              releaseDate: set!.releaseDate,
            )
          : null,
    );
  }
}
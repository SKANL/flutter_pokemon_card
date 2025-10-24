// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonCardModel {

 String get id; String get name;// images can be missing in some trimmed/select responses -> make it nullable
 CardImagesModel? get images; String? get hp; String? get supertype; List<String>? get subtypes; List<String>? get types;// evolvesFrom can be either a String or List<String> in the API
@StringOrListConverter() List<String>? get evolvesFrom; List<AbilityModel>? get abilities; List<AttackModel>? get attacks; List<WeaknessModel>? get weaknesses; List<ResistanceModel>? get resistances; List<String>? get retreatCost; String? get number; String? get artist; String? get rarity; String? get flavorText; CardSetModel? get set;
/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardModelCopyWith<PokemonCardModel> get copyWith => _$PokemonCardModelCopyWithImpl<PokemonCardModel>(this as PokemonCardModel, _$identity);

  /// Serializes this PokemonCardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.images, images) || other.images == images)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&const DeepCollectionEquality().equals(other.subtypes, subtypes)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.evolvesFrom, evolvesFrom)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&const DeepCollectionEquality().equals(other.attacks, attacks)&&const DeepCollectionEquality().equals(other.weaknesses, weaknesses)&&const DeepCollectionEquality().equals(other.resistances, resistances)&&const DeepCollectionEquality().equals(other.retreatCost, retreatCost)&&(identical(other.number, number) || other.number == number)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.set, set) || other.set == set));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,images,hp,supertype,const DeepCollectionEquality().hash(subtypes),const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(evolvesFrom),const DeepCollectionEquality().hash(abilities),const DeepCollectionEquality().hash(attacks),const DeepCollectionEquality().hash(weaknesses),const DeepCollectionEquality().hash(resistances),const DeepCollectionEquality().hash(retreatCost),number,artist,rarity,flavorText,set);

@override
String toString() {
  return 'PokemonCardModel(id: $id, name: $name, images: $images, hp: $hp, supertype: $supertype, subtypes: $subtypes, types: $types, evolvesFrom: $evolvesFrom, abilities: $abilities, attacks: $attacks, weaknesses: $weaknesses, resistances: $resistances, retreatCost: $retreatCost, number: $number, artist: $artist, rarity: $rarity, flavorText: $flavorText, set: $set)';
}


}

/// @nodoc
abstract mixin class $PokemonCardModelCopyWith<$Res>  {
  factory $PokemonCardModelCopyWith(PokemonCardModel value, $Res Function(PokemonCardModel) _then) = _$PokemonCardModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, CardImagesModel? images, String? hp, String? supertype, List<String>? subtypes, List<String>? types,@StringOrListConverter() List<String>? evolvesFrom, List<AbilityModel>? abilities, List<AttackModel>? attacks, List<WeaknessModel>? weaknesses, List<ResistanceModel>? resistances, List<String>? retreatCost, String? number, String? artist, String? rarity, String? flavorText, CardSetModel? set
});


$CardImagesModelCopyWith<$Res>? get images;$CardSetModelCopyWith<$Res>? get set;

}
/// @nodoc
class _$PokemonCardModelCopyWithImpl<$Res>
    implements $PokemonCardModelCopyWith<$Res> {
  _$PokemonCardModelCopyWithImpl(this._self, this._then);

  final PokemonCardModel _self;
  final $Res Function(PokemonCardModel) _then;

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? images = freezed,Object? hp = freezed,Object? supertype = freezed,Object? subtypes = freezed,Object? types = freezed,Object? evolvesFrom = freezed,Object? abilities = freezed,Object? attacks = freezed,Object? weaknesses = freezed,Object? resistances = freezed,Object? retreatCost = freezed,Object? number = freezed,Object? artist = freezed,Object? rarity = freezed,Object? flavorText = freezed,Object? set = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as CardImagesModel?,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,subtypes: freezed == subtypes ? _self.subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<String>?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,evolvesFrom: freezed == evolvesFrom ? _self.evolvesFrom : evolvesFrom // ignore: cast_nullable_to_non_nullable
as List<String>?,abilities: freezed == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityModel>?,attacks: freezed == attacks ? _self.attacks : attacks // ignore: cast_nullable_to_non_nullable
as List<AttackModel>?,weaknesses: freezed == weaknesses ? _self.weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<WeaknessModel>?,resistances: freezed == resistances ? _self.resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<ResistanceModel>?,retreatCost: freezed == retreatCost ? _self.retreatCost : retreatCost // ignore: cast_nullable_to_non_nullable
as List<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,rarity: freezed == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String?,flavorText: freezed == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String?,set: freezed == set ? _self.set : set // ignore: cast_nullable_to_non_nullable
as CardSetModel?,
  ));
}
/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $CardImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardSetModelCopyWith<$Res>? get set {
    if (_self.set == null) {
    return null;
  }

  return $CardSetModelCopyWith<$Res>(_self.set!, (value) {
    return _then(_self.copyWith(set: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonCardModel].
extension PokemonCardModelPatterns on PokemonCardModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonCardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonCardModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonCardModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonCardModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CardImagesModel? images,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types, @StringOrListConverter()  List<String>? evolvesFrom,  List<AbilityModel>? abilities,  List<AttackModel>? attacks,  List<WeaknessModel>? weaknesses,  List<ResistanceModel>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  CardSetModel? set)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CardImagesModel? images,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types, @StringOrListConverter()  List<String>? evolvesFrom,  List<AbilityModel>? abilities,  List<AttackModel>? attacks,  List<WeaknessModel>? weaknesses,  List<ResistanceModel>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  CardSetModel? set)  $default,) {final _that = this;
switch (_that) {
case _PokemonCardModel():
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CardImagesModel? images,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types, @StringOrListConverter()  List<String>? evolvesFrom,  List<AbilityModel>? abilities,  List<AttackModel>? attacks,  List<WeaknessModel>? weaknesses,  List<ResistanceModel>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  CardSetModel? set)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonCardModel implements PokemonCardModel {
  const _PokemonCardModel({required this.id, required this.name, this.images, this.hp, this.supertype, final  List<String>? subtypes, final  List<String>? types, @StringOrListConverter() final  List<String>? evolvesFrom, final  List<AbilityModel>? abilities, final  List<AttackModel>? attacks, final  List<WeaknessModel>? weaknesses, final  List<ResistanceModel>? resistances, final  List<String>? retreatCost, this.number, this.artist, this.rarity, this.flavorText, this.set}): _subtypes = subtypes,_types = types,_evolvesFrom = evolvesFrom,_abilities = abilities,_attacks = attacks,_weaknesses = weaknesses,_resistances = resistances,_retreatCost = retreatCost;
  factory _PokemonCardModel.fromJson(Map<String, dynamic> json) => _$PokemonCardModelFromJson(json);

@override final  String id;
@override final  String name;
// images can be missing in some trimmed/select responses -> make it nullable
@override final  CardImagesModel? images;
@override final  String? hp;
@override final  String? supertype;
 final  List<String>? _subtypes;
@override List<String>? get subtypes {
  final value = _subtypes;
  if (value == null) return null;
  if (_subtypes is EqualUnmodifiableListView) return _subtypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _types;
@override List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// evolvesFrom can be either a String or List<String> in the API
 final  List<String>? _evolvesFrom;
// evolvesFrom can be either a String or List<String> in the API
@override@StringOrListConverter() List<String>? get evolvesFrom {
  final value = _evolvesFrom;
  if (value == null) return null;
  if (_evolvesFrom is EqualUnmodifiableListView) return _evolvesFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AbilityModel>? _abilities;
@override List<AbilityModel>? get abilities {
  final value = _abilities;
  if (value == null) return null;
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AttackModel>? _attacks;
@override List<AttackModel>? get attacks {
  final value = _attacks;
  if (value == null) return null;
  if (_attacks is EqualUnmodifiableListView) return _attacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WeaknessModel>? _weaknesses;
@override List<WeaknessModel>? get weaknesses {
  final value = _weaknesses;
  if (value == null) return null;
  if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ResistanceModel>? _resistances;
@override List<ResistanceModel>? get resistances {
  final value = _resistances;
  if (value == null) return null;
  if (_resistances is EqualUnmodifiableListView) return _resistances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _retreatCost;
@override List<String>? get retreatCost {
  final value = _retreatCost;
  if (value == null) return null;
  if (_retreatCost is EqualUnmodifiableListView) return _retreatCost;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? number;
@override final  String? artist;
@override final  String? rarity;
@override final  String? flavorText;
@override final  CardSetModel? set;

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCardModelCopyWith<_PokemonCardModel> get copyWith => __$PokemonCardModelCopyWithImpl<_PokemonCardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonCardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.images, images) || other.images == images)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&const DeepCollectionEquality().equals(other._subtypes, _subtypes)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._evolvesFrom, _evolvesFrom)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&const DeepCollectionEquality().equals(other._attacks, _attacks)&&const DeepCollectionEquality().equals(other._weaknesses, _weaknesses)&&const DeepCollectionEquality().equals(other._resistances, _resistances)&&const DeepCollectionEquality().equals(other._retreatCost, _retreatCost)&&(identical(other.number, number) || other.number == number)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.set, set) || other.set == set));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,images,hp,supertype,const DeepCollectionEquality().hash(_subtypes),const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_evolvesFrom),const DeepCollectionEquality().hash(_abilities),const DeepCollectionEquality().hash(_attacks),const DeepCollectionEquality().hash(_weaknesses),const DeepCollectionEquality().hash(_resistances),const DeepCollectionEquality().hash(_retreatCost),number,artist,rarity,flavorText,set);

@override
String toString() {
  return 'PokemonCardModel(id: $id, name: $name, images: $images, hp: $hp, supertype: $supertype, subtypes: $subtypes, types: $types, evolvesFrom: $evolvesFrom, abilities: $abilities, attacks: $attacks, weaknesses: $weaknesses, resistances: $resistances, retreatCost: $retreatCost, number: $number, artist: $artist, rarity: $rarity, flavorText: $flavorText, set: $set)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardModelCopyWith<$Res> implements $PokemonCardModelCopyWith<$Res> {
  factory _$PokemonCardModelCopyWith(_PokemonCardModel value, $Res Function(_PokemonCardModel) _then) = __$PokemonCardModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CardImagesModel? images, String? hp, String? supertype, List<String>? subtypes, List<String>? types,@StringOrListConverter() List<String>? evolvesFrom, List<AbilityModel>? abilities, List<AttackModel>? attacks, List<WeaknessModel>? weaknesses, List<ResistanceModel>? resistances, List<String>? retreatCost, String? number, String? artist, String? rarity, String? flavorText, CardSetModel? set
});


@override $CardImagesModelCopyWith<$Res>? get images;@override $CardSetModelCopyWith<$Res>? get set;

}
/// @nodoc
class __$PokemonCardModelCopyWithImpl<$Res>
    implements _$PokemonCardModelCopyWith<$Res> {
  __$PokemonCardModelCopyWithImpl(this._self, this._then);

  final _PokemonCardModel _self;
  final $Res Function(_PokemonCardModel) _then;

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? images = freezed,Object? hp = freezed,Object? supertype = freezed,Object? subtypes = freezed,Object? types = freezed,Object? evolvesFrom = freezed,Object? abilities = freezed,Object? attacks = freezed,Object? weaknesses = freezed,Object? resistances = freezed,Object? retreatCost = freezed,Object? number = freezed,Object? artist = freezed,Object? rarity = freezed,Object? flavorText = freezed,Object? set = freezed,}) {
  return _then(_PokemonCardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as CardImagesModel?,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,subtypes: freezed == subtypes ? _self._subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<String>?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,evolvesFrom: freezed == evolvesFrom ? _self._evolvesFrom : evolvesFrom // ignore: cast_nullable_to_non_nullable
as List<String>?,abilities: freezed == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityModel>?,attacks: freezed == attacks ? _self._attacks : attacks // ignore: cast_nullable_to_non_nullable
as List<AttackModel>?,weaknesses: freezed == weaknesses ? _self._weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<WeaknessModel>?,resistances: freezed == resistances ? _self._resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<ResistanceModel>?,retreatCost: freezed == retreatCost ? _self._retreatCost : retreatCost // ignore: cast_nullable_to_non_nullable
as List<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,rarity: freezed == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String?,flavorText: freezed == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String?,set: freezed == set ? _self.set : set // ignore: cast_nullable_to_non_nullable
as CardSetModel?,
  ));
}

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardImagesModelCopyWith<$Res>? get images {
    if (_self.images == null) {
    return null;
  }

  return $CardImagesModelCopyWith<$Res>(_self.images!, (value) {
    return _then(_self.copyWith(images: value));
  });
}/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardSetModelCopyWith<$Res>? get set {
    if (_self.set == null) {
    return null;
  }

  return $CardSetModelCopyWith<$Res>(_self.set!, (value) {
    return _then(_self.copyWith(set: value));
  });
}
}


/// @nodoc
mixin _$CardImagesModel {

// Images may be absent or partial; keep fields nullable to be defensive
 String? get small; String? get large;
/// Create a copy of CardImagesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardImagesModelCopyWith<CardImagesModel> get copyWith => _$CardImagesModelCopyWithImpl<CardImagesModel>(this as CardImagesModel, _$identity);

  /// Serializes this CardImagesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardImagesModel&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,large);

@override
String toString() {
  return 'CardImagesModel(small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class $CardImagesModelCopyWith<$Res>  {
  factory $CardImagesModelCopyWith(CardImagesModel value, $Res Function(CardImagesModel) _then) = _$CardImagesModelCopyWithImpl;
@useResult
$Res call({
 String? small, String? large
});




}
/// @nodoc
class _$CardImagesModelCopyWithImpl<$Res>
    implements $CardImagesModelCopyWith<$Res> {
  _$CardImagesModelCopyWithImpl(this._self, this._then);

  final CardImagesModel _self;
  final $Res Function(CardImagesModel) _then;

/// Create a copy of CardImagesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? small = freezed,Object? large = freezed,}) {
  return _then(_self.copyWith(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CardImagesModel].
extension CardImagesModelPatterns on CardImagesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardImagesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardImagesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardImagesModel value)  $default,){
final _that = this;
switch (_that) {
case _CardImagesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardImagesModel value)?  $default,){
final _that = this;
switch (_that) {
case _CardImagesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? small,  String? large)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardImagesModel() when $default != null:
return $default(_that.small,_that.large);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? small,  String? large)  $default,) {final _that = this;
switch (_that) {
case _CardImagesModel():
return $default(_that.small,_that.large);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? small,  String? large)?  $default,) {final _that = this;
switch (_that) {
case _CardImagesModel() when $default != null:
return $default(_that.small,_that.large);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardImagesModel implements CardImagesModel {
  const _CardImagesModel({this.small, this.large});
  factory _CardImagesModel.fromJson(Map<String, dynamic> json) => _$CardImagesModelFromJson(json);

// Images may be absent or partial; keep fields nullable to be defensive
@override final  String? small;
@override final  String? large;

/// Create a copy of CardImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardImagesModelCopyWith<_CardImagesModel> get copyWith => __$CardImagesModelCopyWithImpl<_CardImagesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardImagesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardImagesModel&&(identical(other.small, small) || other.small == small)&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,large);

@override
String toString() {
  return 'CardImagesModel(small: $small, large: $large)';
}


}

/// @nodoc
abstract mixin class _$CardImagesModelCopyWith<$Res> implements $CardImagesModelCopyWith<$Res> {
  factory _$CardImagesModelCopyWith(_CardImagesModel value, $Res Function(_CardImagesModel) _then) = __$CardImagesModelCopyWithImpl;
@override @useResult
$Res call({
 String? small, String? large
});




}
/// @nodoc
class __$CardImagesModelCopyWithImpl<$Res>
    implements _$CardImagesModelCopyWith<$Res> {
  __$CardImagesModelCopyWithImpl(this._self, this._then);

  final _CardImagesModel _self;
  final $Res Function(_CardImagesModel) _then;

/// Create a copy of CardImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? small = freezed,Object? large = freezed,}) {
  return _then(_CardImagesModel(
small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AbilityModel {

 String get name; String get text; String get type;
/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityModelCopyWith<AbilityModel> get copyWith => _$AbilityModelCopyWithImpl<AbilityModel>(this as AbilityModel, _$identity);

  /// Serializes this AbilityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityModel&&(identical(other.name, name) || other.name == name)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,text,type);

@override
String toString() {
  return 'AbilityModel(name: $name, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class $AbilityModelCopyWith<$Res>  {
  factory $AbilityModelCopyWith(AbilityModel value, $Res Function(AbilityModel) _then) = _$AbilityModelCopyWithImpl;
@useResult
$Res call({
 String name, String text, String type
});




}
/// @nodoc
class _$AbilityModelCopyWithImpl<$Res>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._self, this._then);

  final AbilityModel _self;
  final $Res Function(AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? text = null,Object? type = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AbilityModel].
extension AbilityModelPatterns on AbilityModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityModel value)  $default,){
final _that = this;
switch (_that) {
case _AbilityModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityModel value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String text,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.name,_that.text,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String text,  String type)  $default,) {final _that = this;
switch (_that) {
case _AbilityModel():
return $default(_that.name,_that.text,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String text,  String type)?  $default,) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.name,_that.text,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityModel implements AbilityModel {
  const _AbilityModel({required this.name, required this.text, required this.type});
  factory _AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);

@override final  String name;
@override final  String text;
@override final  String type;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityModelCopyWith<_AbilityModel> get copyWith => __$AbilityModelCopyWithImpl<_AbilityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityModel&&(identical(other.name, name) || other.name == name)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,text,type);

@override
String toString() {
  return 'AbilityModel(name: $name, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AbilityModelCopyWith<$Res> implements $AbilityModelCopyWith<$Res> {
  factory _$AbilityModelCopyWith(_AbilityModel value, $Res Function(_AbilityModel) _then) = __$AbilityModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String text, String type
});




}
/// @nodoc
class __$AbilityModelCopyWithImpl<$Res>
    implements _$AbilityModelCopyWith<$Res> {
  __$AbilityModelCopyWithImpl(this._self, this._then);

  final _AbilityModel _self;
  final $Res Function(_AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? text = null,Object? type = null,}) {
  return _then(_AbilityModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttackModel {

 String get name; List<String>? get cost; int? get convertedEnergyCost; String? get damage; String? get text;
/// Create a copy of AttackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttackModelCopyWith<AttackModel> get copyWith => _$AttackModelCopyWithImpl<AttackModel>(this as AttackModel, _$identity);

  /// Serializes this AttackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttackModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.cost, cost)&&(identical(other.convertedEnergyCost, convertedEnergyCost) || other.convertedEnergyCost == convertedEnergyCost)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(cost),convertedEnergyCost,damage,text);

@override
String toString() {
  return 'AttackModel(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
}


}

/// @nodoc
abstract mixin class $AttackModelCopyWith<$Res>  {
  factory $AttackModelCopyWith(AttackModel value, $Res Function(AttackModel) _then) = _$AttackModelCopyWithImpl;
@useResult
$Res call({
 String name, List<String>? cost, int? convertedEnergyCost, String? damage, String? text
});




}
/// @nodoc
class _$AttackModelCopyWithImpl<$Res>
    implements $AttackModelCopyWith<$Res> {
  _$AttackModelCopyWithImpl(this._self, this._then);

  final AttackModel _self;
  final $Res Function(AttackModel) _then;

/// Create a copy of AttackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cost = freezed,Object? convertedEnergyCost = freezed,Object? damage = freezed,Object? text = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as List<String>?,convertedEnergyCost: freezed == convertedEnergyCost ? _self.convertedEnergyCost : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
as int?,damage: freezed == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttackModel].
extension AttackModelPatterns on AttackModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttackModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttackModel value)  $default,){
final _that = this;
switch (_that) {
case _AttackModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttackModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttackModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String>? cost,  int? convertedEnergyCost,  String? damage,  String? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttackModel() when $default != null:
return $default(_that.name,_that.cost,_that.convertedEnergyCost,_that.damage,_that.text);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String>? cost,  int? convertedEnergyCost,  String? damage,  String? text)  $default,) {final _that = this;
switch (_that) {
case _AttackModel():
return $default(_that.name,_that.cost,_that.convertedEnergyCost,_that.damage,_that.text);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String>? cost,  int? convertedEnergyCost,  String? damage,  String? text)?  $default,) {final _that = this;
switch (_that) {
case _AttackModel() when $default != null:
return $default(_that.name,_that.cost,_that.convertedEnergyCost,_that.damage,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttackModel implements AttackModel {
  const _AttackModel({required this.name, final  List<String>? cost, this.convertedEnergyCost, this.damage, this.text}): _cost = cost;
  factory _AttackModel.fromJson(Map<String, dynamic> json) => _$AttackModelFromJson(json);

@override final  String name;
 final  List<String>? _cost;
@override List<String>? get cost {
  final value = _cost;
  if (value == null) return null;
  if (_cost is EqualUnmodifiableListView) return _cost;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? convertedEnergyCost;
@override final  String? damage;
@override final  String? text;

/// Create a copy of AttackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttackModelCopyWith<_AttackModel> get copyWith => __$AttackModelCopyWithImpl<_AttackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttackModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._cost, _cost)&&(identical(other.convertedEnergyCost, convertedEnergyCost) || other.convertedEnergyCost == convertedEnergyCost)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_cost),convertedEnergyCost,damage,text);

@override
String toString() {
  return 'AttackModel(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
}


}

/// @nodoc
abstract mixin class _$AttackModelCopyWith<$Res> implements $AttackModelCopyWith<$Res> {
  factory _$AttackModelCopyWith(_AttackModel value, $Res Function(_AttackModel) _then) = __$AttackModelCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String>? cost, int? convertedEnergyCost, String? damage, String? text
});




}
/// @nodoc
class __$AttackModelCopyWithImpl<$Res>
    implements _$AttackModelCopyWith<$Res> {
  __$AttackModelCopyWithImpl(this._self, this._then);

  final _AttackModel _self;
  final $Res Function(_AttackModel) _then;

/// Create a copy of AttackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cost = freezed,Object? convertedEnergyCost = freezed,Object? damage = freezed,Object? text = freezed,}) {
  return _then(_AttackModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cost: freezed == cost ? _self._cost : cost // ignore: cast_nullable_to_non_nullable
as List<String>?,convertedEnergyCost: freezed == convertedEnergyCost ? _self.convertedEnergyCost : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
as int?,damage: freezed == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeaknessModel {

 String get type; String get value;
/// Create a copy of WeaknessModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeaknessModelCopyWith<WeaknessModel> get copyWith => _$WeaknessModelCopyWithImpl<WeaknessModel>(this as WeaknessModel, _$identity);

  /// Serializes this WeaknessModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeaknessModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'WeaknessModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $WeaknessModelCopyWith<$Res>  {
  factory $WeaknessModelCopyWith(WeaknessModel value, $Res Function(WeaknessModel) _then) = _$WeaknessModelCopyWithImpl;
@useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class _$WeaknessModelCopyWithImpl<$Res>
    implements $WeaknessModelCopyWith<$Res> {
  _$WeaknessModelCopyWithImpl(this._self, this._then);

  final WeaknessModel _self;
  final $Res Function(WeaknessModel) _then;

/// Create a copy of WeaknessModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeaknessModel].
extension WeaknessModelPatterns on WeaknessModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeaknessModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeaknessModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeaknessModel value)  $default,){
final _that = this;
switch (_that) {
case _WeaknessModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeaknessModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeaknessModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeaknessModel() when $default != null:
return $default(_that.type,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String value)  $default,) {final _that = this;
switch (_that) {
case _WeaknessModel():
return $default(_that.type,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String value)?  $default,) {final _that = this;
switch (_that) {
case _WeaknessModel() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeaknessModel implements WeaknessModel {
  const _WeaknessModel({required this.type, required this.value});
  factory _WeaknessModel.fromJson(Map<String, dynamic> json) => _$WeaknessModelFromJson(json);

@override final  String type;
@override final  String value;

/// Create a copy of WeaknessModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeaknessModelCopyWith<_WeaknessModel> get copyWith => __$WeaknessModelCopyWithImpl<_WeaknessModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeaknessModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeaknessModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'WeaknessModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WeaknessModelCopyWith<$Res> implements $WeaknessModelCopyWith<$Res> {
  factory _$WeaknessModelCopyWith(_WeaknessModel value, $Res Function(_WeaknessModel) _then) = __$WeaknessModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class __$WeaknessModelCopyWithImpl<$Res>
    implements _$WeaknessModelCopyWith<$Res> {
  __$WeaknessModelCopyWithImpl(this._self, this._then);

  final _WeaknessModel _self;
  final $Res Function(_WeaknessModel) _then;

/// Create a copy of WeaknessModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_WeaknessModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ResistanceModel {

 String get type; String get value;
/// Create a copy of ResistanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResistanceModelCopyWith<ResistanceModel> get copyWith => _$ResistanceModelCopyWithImpl<ResistanceModel>(this as ResistanceModel, _$identity);

  /// Serializes this ResistanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResistanceModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'ResistanceModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $ResistanceModelCopyWith<$Res>  {
  factory $ResistanceModelCopyWith(ResistanceModel value, $Res Function(ResistanceModel) _then) = _$ResistanceModelCopyWithImpl;
@useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class _$ResistanceModelCopyWithImpl<$Res>
    implements $ResistanceModelCopyWith<$Res> {
  _$ResistanceModelCopyWithImpl(this._self, this._then);

  final ResistanceModel _self;
  final $Res Function(ResistanceModel) _then;

/// Create a copy of ResistanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResistanceModel].
extension ResistanceModelPatterns on ResistanceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResistanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResistanceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResistanceModel value)  $default,){
final _that = this;
switch (_that) {
case _ResistanceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResistanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResistanceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResistanceModel() when $default != null:
return $default(_that.type,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String value)  $default,) {final _that = this;
switch (_that) {
case _ResistanceModel():
return $default(_that.type,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String value)?  $default,) {final _that = this;
switch (_that) {
case _ResistanceModel() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResistanceModel implements ResistanceModel {
  const _ResistanceModel({required this.type, required this.value});
  factory _ResistanceModel.fromJson(Map<String, dynamic> json) => _$ResistanceModelFromJson(json);

@override final  String type;
@override final  String value;

/// Create a copy of ResistanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResistanceModelCopyWith<_ResistanceModel> get copyWith => __$ResistanceModelCopyWithImpl<_ResistanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResistanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResistanceModel&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'ResistanceModel(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ResistanceModelCopyWith<$Res> implements $ResistanceModelCopyWith<$Res> {
  factory _$ResistanceModelCopyWith(_ResistanceModel value, $Res Function(_ResistanceModel) _then) = __$ResistanceModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class __$ResistanceModelCopyWithImpl<$Res>
    implements _$ResistanceModelCopyWith<$Res> {
  __$ResistanceModelCopyWithImpl(this._self, this._then);

  final _ResistanceModel _self;
  final $Res Function(_ResistanceModel) _then;

/// Create a copy of ResistanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_ResistanceModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CardSetModel {

 String get id; String get name; String get series; int? get printedTotal; int? get total; String? get releaseDate;
/// Create a copy of CardSetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardSetModelCopyWith<CardSetModel> get copyWith => _$CardSetModelCopyWithImpl<CardSetModel>(this as CardSetModel, _$identity);

  /// Serializes this CardSetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardSetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.series, series) || other.series == series)&&(identical(other.printedTotal, printedTotal) || other.printedTotal == printedTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,series,printedTotal,total,releaseDate);

@override
String toString() {
  return 'CardSetModel(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $CardSetModelCopyWith<$Res>  {
  factory $CardSetModelCopyWith(CardSetModel value, $Res Function(CardSetModel) _then) = _$CardSetModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String series, int? printedTotal, int? total, String? releaseDate
});




}
/// @nodoc
class _$CardSetModelCopyWithImpl<$Res>
    implements $CardSetModelCopyWith<$Res> {
  _$CardSetModelCopyWithImpl(this._self, this._then);

  final CardSetModel _self;
  final $Res Function(CardSetModel) _then;

/// Create a copy of CardSetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? series = null,Object? printedTotal = freezed,Object? total = freezed,Object? releaseDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,series: null == series ? _self.series : series // ignore: cast_nullable_to_non_nullable
as String,printedTotal: freezed == printedTotal ? _self.printedTotal : printedTotal // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CardSetModel].
extension CardSetModelPatterns on CardSetModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardSetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardSetModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardSetModel value)  $default,){
final _that = this;
switch (_that) {
case _CardSetModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardSetModel value)?  $default,){
final _that = this;
switch (_that) {
case _CardSetModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String series,  int? printedTotal,  int? total,  String? releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardSetModel() when $default != null:
return $default(_that.id,_that.name,_that.series,_that.printedTotal,_that.total,_that.releaseDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String series,  int? printedTotal,  int? total,  String? releaseDate)  $default,) {final _that = this;
switch (_that) {
case _CardSetModel():
return $default(_that.id,_that.name,_that.series,_that.printedTotal,_that.total,_that.releaseDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String series,  int? printedTotal,  int? total,  String? releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _CardSetModel() when $default != null:
return $default(_that.id,_that.name,_that.series,_that.printedTotal,_that.total,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardSetModel implements CardSetModel {
  const _CardSetModel({required this.id, required this.name, required this.series, this.printedTotal, this.total, this.releaseDate});
  factory _CardSetModel.fromJson(Map<String, dynamic> json) => _$CardSetModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String series;
@override final  int? printedTotal;
@override final  int? total;
@override final  String? releaseDate;

/// Create a copy of CardSetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardSetModelCopyWith<_CardSetModel> get copyWith => __$CardSetModelCopyWithImpl<_CardSetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardSetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardSetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.series, series) || other.series == series)&&(identical(other.printedTotal, printedTotal) || other.printedTotal == printedTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,series,printedTotal,total,releaseDate);

@override
String toString() {
  return 'CardSetModel(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$CardSetModelCopyWith<$Res> implements $CardSetModelCopyWith<$Res> {
  factory _$CardSetModelCopyWith(_CardSetModel value, $Res Function(_CardSetModel) _then) = __$CardSetModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String series, int? printedTotal, int? total, String? releaseDate
});




}
/// @nodoc
class __$CardSetModelCopyWithImpl<$Res>
    implements _$CardSetModelCopyWith<$Res> {
  __$CardSetModelCopyWithImpl(this._self, this._then);

  final _CardSetModel _self;
  final $Res Function(_CardSetModel) _then;

/// Create a copy of CardSetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? series = null,Object? printedTotal = freezed,Object? total = freezed,Object? releaseDate = freezed,}) {
  return _then(_CardSetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,series: null == series ? _self.series : series // ignore: cast_nullable_to_non_nullable
as String,printedTotal: freezed == printedTotal ? _self.printedTotal : printedTotal // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

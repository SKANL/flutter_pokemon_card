// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonCard {

 String get id; String get name; String get imageUrl; String? get hp; String? get supertype; List<String>? get subtypes; List<String>? get types; List<String>? get evolvesFrom; List<PokemonAbility>? get abilities; List<PokemonAttack>? get attacks; List<PokemonWeakness>? get weaknesses; List<PokemonResistance>? get resistances; List<String>? get retreatCost; String? get number; String? get artist; String? get rarity; String? get flavorText; PokemonCardSet? get set;
/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardCopyWith<PokemonCard> get copyWith => _$PokemonCardCopyWithImpl<PokemonCard>(this as PokemonCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCard&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&const DeepCollectionEquality().equals(other.subtypes, subtypes)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.evolvesFrom, evolvesFrom)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&const DeepCollectionEquality().equals(other.attacks, attacks)&&const DeepCollectionEquality().equals(other.weaknesses, weaknesses)&&const DeepCollectionEquality().equals(other.resistances, resistances)&&const DeepCollectionEquality().equals(other.retreatCost, retreatCost)&&(identical(other.number, number) || other.number == number)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.set, set) || other.set == set));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,hp,supertype,const DeepCollectionEquality().hash(subtypes),const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(evolvesFrom),const DeepCollectionEquality().hash(abilities),const DeepCollectionEquality().hash(attacks),const DeepCollectionEquality().hash(weaknesses),const DeepCollectionEquality().hash(resistances),const DeepCollectionEquality().hash(retreatCost),number,artist,rarity,flavorText,set);

@override
String toString() {
  return 'PokemonCard(id: $id, name: $name, imageUrl: $imageUrl, hp: $hp, supertype: $supertype, subtypes: $subtypes, types: $types, evolvesFrom: $evolvesFrom, abilities: $abilities, attacks: $attacks, weaknesses: $weaknesses, resistances: $resistances, retreatCost: $retreatCost, number: $number, artist: $artist, rarity: $rarity, flavorText: $flavorText, set: $set)';
}


}

/// @nodoc
abstract mixin class $PokemonCardCopyWith<$Res>  {
  factory $PokemonCardCopyWith(PokemonCard value, $Res Function(PokemonCard) _then) = _$PokemonCardCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, String? hp, String? supertype, List<String>? subtypes, List<String>? types, List<String>? evolvesFrom, List<PokemonAbility>? abilities, List<PokemonAttack>? attacks, List<PokemonWeakness>? weaknesses, List<PokemonResistance>? resistances, List<String>? retreatCost, String? number, String? artist, String? rarity, String? flavorText, PokemonCardSet? set
});


$PokemonCardSetCopyWith<$Res>? get set;

}
/// @nodoc
class _$PokemonCardCopyWithImpl<$Res>
    implements $PokemonCardCopyWith<$Res> {
  _$PokemonCardCopyWithImpl(this._self, this._then);

  final PokemonCard _self;
  final $Res Function(PokemonCard) _then;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? hp = freezed,Object? supertype = freezed,Object? subtypes = freezed,Object? types = freezed,Object? evolvesFrom = freezed,Object? abilities = freezed,Object? attacks = freezed,Object? weaknesses = freezed,Object? resistances = freezed,Object? retreatCost = freezed,Object? number = freezed,Object? artist = freezed,Object? rarity = freezed,Object? flavorText = freezed,Object? set = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,subtypes: freezed == subtypes ? _self.subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<String>?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,evolvesFrom: freezed == evolvesFrom ? _self.evolvesFrom : evolvesFrom // ignore: cast_nullable_to_non_nullable
as List<String>?,abilities: freezed == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>?,attacks: freezed == attacks ? _self.attacks : attacks // ignore: cast_nullable_to_non_nullable
as List<PokemonAttack>?,weaknesses: freezed == weaknesses ? _self.weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<PokemonWeakness>?,resistances: freezed == resistances ? _self.resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<PokemonResistance>?,retreatCost: freezed == retreatCost ? _self.retreatCost : retreatCost // ignore: cast_nullable_to_non_nullable
as List<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,rarity: freezed == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String?,flavorText: freezed == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String?,set: freezed == set ? _self.set : set // ignore: cast_nullable_to_non_nullable
as PokemonCardSet?,
  ));
}
/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonCardSetCopyWith<$Res>? get set {
    if (_self.set == null) {
    return null;
  }

  return $PokemonCardSetCopyWith<$Res>(_self.set!, (value) {
    return _then(_self.copyWith(set: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonCard].
extension PokemonCardPatterns on PokemonCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonCard value)  $default,){
final _that = this;
switch (_that) {
case _PokemonCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonCard value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types,  List<String>? evolvesFrom,  List<PokemonAbility>? abilities,  List<PokemonAttack>? attacks,  List<PokemonWeakness>? weaknesses,  List<PokemonResistance>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  PokemonCardSet? set)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types,  List<String>? evolvesFrom,  List<PokemonAbility>? abilities,  List<PokemonAttack>? attacks,  List<PokemonWeakness>? weaknesses,  List<PokemonResistance>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  PokemonCardSet? set)  $default,) {final _that = this;
switch (_that) {
case _PokemonCard():
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype,  List<String>? subtypes,  List<String>? types,  List<String>? evolvesFrom,  List<PokemonAbility>? abilities,  List<PokemonAttack>? attacks,  List<PokemonWeakness>? weaknesses,  List<PokemonResistance>? resistances,  List<String>? retreatCost,  String? number,  String? artist,  String? rarity,  String? flavorText,  PokemonCardSet? set)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype,_that.subtypes,_that.types,_that.evolvesFrom,_that.abilities,_that.attacks,_that.weaknesses,_that.resistances,_that.retreatCost,_that.number,_that.artist,_that.rarity,_that.flavorText,_that.set);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonCard implements PokemonCard {
  const _PokemonCard({required this.id, required this.name, required this.imageUrl, this.hp, this.supertype, final  List<String>? subtypes, final  List<String>? types, final  List<String>? evolvesFrom, final  List<PokemonAbility>? abilities, final  List<PokemonAttack>? attacks, final  List<PokemonWeakness>? weaknesses, final  List<PokemonResistance>? resistances, final  List<String>? retreatCost, this.number, this.artist, this.rarity, this.flavorText, this.set}): _subtypes = subtypes,_types = types,_evolvesFrom = evolvesFrom,_abilities = abilities,_attacks = attacks,_weaknesses = weaknesses,_resistances = resistances,_retreatCost = retreatCost;
  

@override final  String id;
@override final  String name;
@override final  String imageUrl;
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

 final  List<String>? _evolvesFrom;
@override List<String>? get evolvesFrom {
  final value = _evolvesFrom;
  if (value == null) return null;
  if (_evolvesFrom is EqualUnmodifiableListView) return _evolvesFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PokemonAbility>? _abilities;
@override List<PokemonAbility>? get abilities {
  final value = _abilities;
  if (value == null) return null;
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PokemonAttack>? _attacks;
@override List<PokemonAttack>? get attacks {
  final value = _attacks;
  if (value == null) return null;
  if (_attacks is EqualUnmodifiableListView) return _attacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PokemonWeakness>? _weaknesses;
@override List<PokemonWeakness>? get weaknesses {
  final value = _weaknesses;
  if (value == null) return null;
  if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PokemonResistance>? _resistances;
@override List<PokemonResistance>? get resistances {
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
@override final  PokemonCardSet? set;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCardCopyWith<_PokemonCard> get copyWith => __$PokemonCardCopyWithImpl<_PokemonCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCard&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype)&&const DeepCollectionEquality().equals(other._subtypes, _subtypes)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._evolvesFrom, _evolvesFrom)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&const DeepCollectionEquality().equals(other._attacks, _attacks)&&const DeepCollectionEquality().equals(other._weaknesses, _weaknesses)&&const DeepCollectionEquality().equals(other._resistances, _resistances)&&const DeepCollectionEquality().equals(other._retreatCost, _retreatCost)&&(identical(other.number, number) || other.number == number)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.set, set) || other.set == set));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,hp,supertype,const DeepCollectionEquality().hash(_subtypes),const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_evolvesFrom),const DeepCollectionEquality().hash(_abilities),const DeepCollectionEquality().hash(_attacks),const DeepCollectionEquality().hash(_weaknesses),const DeepCollectionEquality().hash(_resistances),const DeepCollectionEquality().hash(_retreatCost),number,artist,rarity,flavorText,set);

@override
String toString() {
  return 'PokemonCard(id: $id, name: $name, imageUrl: $imageUrl, hp: $hp, supertype: $supertype, subtypes: $subtypes, types: $types, evolvesFrom: $evolvesFrom, abilities: $abilities, attacks: $attacks, weaknesses: $weaknesses, resistances: $resistances, retreatCost: $retreatCost, number: $number, artist: $artist, rarity: $rarity, flavorText: $flavorText, set: $set)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardCopyWith<$Res> implements $PokemonCardCopyWith<$Res> {
  factory _$PokemonCardCopyWith(_PokemonCard value, $Res Function(_PokemonCard) _then) = __$PokemonCardCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, String? hp, String? supertype, List<String>? subtypes, List<String>? types, List<String>? evolvesFrom, List<PokemonAbility>? abilities, List<PokemonAttack>? attacks, List<PokemonWeakness>? weaknesses, List<PokemonResistance>? resistances, List<String>? retreatCost, String? number, String? artist, String? rarity, String? flavorText, PokemonCardSet? set
});


@override $PokemonCardSetCopyWith<$Res>? get set;

}
/// @nodoc
class __$PokemonCardCopyWithImpl<$Res>
    implements _$PokemonCardCopyWith<$Res> {
  __$PokemonCardCopyWithImpl(this._self, this._then);

  final _PokemonCard _self;
  final $Res Function(_PokemonCard) _then;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? hp = freezed,Object? supertype = freezed,Object? subtypes = freezed,Object? types = freezed,Object? evolvesFrom = freezed,Object? abilities = freezed,Object? attacks = freezed,Object? weaknesses = freezed,Object? resistances = freezed,Object? retreatCost = freezed,Object? number = freezed,Object? artist = freezed,Object? rarity = freezed,Object? flavorText = freezed,Object? set = freezed,}) {
  return _then(_PokemonCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,subtypes: freezed == subtypes ? _self._subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<String>?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,evolvesFrom: freezed == evolvesFrom ? _self._evolvesFrom : evolvesFrom // ignore: cast_nullable_to_non_nullable
as List<String>?,abilities: freezed == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>?,attacks: freezed == attacks ? _self._attacks : attacks // ignore: cast_nullable_to_non_nullable
as List<PokemonAttack>?,weaknesses: freezed == weaknesses ? _self._weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<PokemonWeakness>?,resistances: freezed == resistances ? _self._resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<PokemonResistance>?,retreatCost: freezed == retreatCost ? _self._retreatCost : retreatCost // ignore: cast_nullable_to_non_nullable
as List<String>?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,rarity: freezed == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String?,flavorText: freezed == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String?,set: freezed == set ? _self.set : set // ignore: cast_nullable_to_non_nullable
as PokemonCardSet?,
  ));
}

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonCardSetCopyWith<$Res>? get set {
    if (_self.set == null) {
    return null;
  }

  return $PokemonCardSetCopyWith<$Res>(_self.set!, (value) {
    return _then(_self.copyWith(set: value));
  });
}
}

/// @nodoc
mixin _$PokemonAbility {

 String get name; String get text; String get type;
/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilityCopyWith<PokemonAbility> get copyWith => _$PokemonAbilityCopyWithImpl<PokemonAbility>(this as PokemonAbility, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbility&&(identical(other.name, name) || other.name == name)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,name,text,type);

@override
String toString() {
  return 'PokemonAbility(name: $name, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilityCopyWith<$Res>  {
  factory $PokemonAbilityCopyWith(PokemonAbility value, $Res Function(PokemonAbility) _then) = _$PokemonAbilityCopyWithImpl;
@useResult
$Res call({
 String name, String text, String type
});




}
/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._self, this._then);

  final PokemonAbility _self;
  final $Res Function(PokemonAbility) _then;

/// Create a copy of PokemonAbility
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


/// Adds pattern-matching-related methods to [PokemonAbility].
extension PokemonAbilityPatterns on PokemonAbility {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAbility value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAbility() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAbility value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAbility():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAbility value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAbility() when $default != null:
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
case _PokemonAbility() when $default != null:
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
case _PokemonAbility():
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
case _PokemonAbility() when $default != null:
return $default(_that.name,_that.text,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonAbility implements PokemonAbility {
  const _PokemonAbility({required this.name, required this.text, required this.type});
  

@override final  String name;
@override final  String text;
@override final  String type;

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilityCopyWith<_PokemonAbility> get copyWith => __$PokemonAbilityCopyWithImpl<_PokemonAbility>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbility&&(identical(other.name, name) || other.name == name)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,name,text,type);

@override
String toString() {
  return 'PokemonAbility(name: $name, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilityCopyWith<$Res> implements $PokemonAbilityCopyWith<$Res> {
  factory _$PokemonAbilityCopyWith(_PokemonAbility value, $Res Function(_PokemonAbility) _then) = __$PokemonAbilityCopyWithImpl;
@override @useResult
$Res call({
 String name, String text, String type
});




}
/// @nodoc
class __$PokemonAbilityCopyWithImpl<$Res>
    implements _$PokemonAbilityCopyWith<$Res> {
  __$PokemonAbilityCopyWithImpl(this._self, this._then);

  final _PokemonAbility _self;
  final $Res Function(_PokemonAbility) _then;

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? text = null,Object? type = null,}) {
  return _then(_PokemonAbility(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonAttack {

 String get name; List<String>? get cost; int? get convertedEnergyCost; String? get damage; String? get text;
/// Create a copy of PokemonAttack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAttackCopyWith<PokemonAttack> get copyWith => _$PokemonAttackCopyWithImpl<PokemonAttack>(this as PokemonAttack, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAttack&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.cost, cost)&&(identical(other.convertedEnergyCost, convertedEnergyCost) || other.convertedEnergyCost == convertedEnergyCost)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(cost),convertedEnergyCost,damage,text);

@override
String toString() {
  return 'PokemonAttack(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
}


}

/// @nodoc
abstract mixin class $PokemonAttackCopyWith<$Res>  {
  factory $PokemonAttackCopyWith(PokemonAttack value, $Res Function(PokemonAttack) _then) = _$PokemonAttackCopyWithImpl;
@useResult
$Res call({
 String name, List<String>? cost, int? convertedEnergyCost, String? damage, String? text
});




}
/// @nodoc
class _$PokemonAttackCopyWithImpl<$Res>
    implements $PokemonAttackCopyWith<$Res> {
  _$PokemonAttackCopyWithImpl(this._self, this._then);

  final PokemonAttack _self;
  final $Res Function(PokemonAttack) _then;

/// Create a copy of PokemonAttack
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


/// Adds pattern-matching-related methods to [PokemonAttack].
extension PokemonAttackPatterns on PokemonAttack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAttack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAttack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAttack value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAttack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAttack value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAttack() when $default != null:
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
case _PokemonAttack() when $default != null:
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
case _PokemonAttack():
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
case _PokemonAttack() when $default != null:
return $default(_that.name,_that.cost,_that.convertedEnergyCost,_that.damage,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonAttack implements PokemonAttack {
  const _PokemonAttack({required this.name, final  List<String>? cost, this.convertedEnergyCost, this.damage, this.text}): _cost = cost;
  

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

/// Create a copy of PokemonAttack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAttackCopyWith<_PokemonAttack> get copyWith => __$PokemonAttackCopyWithImpl<_PokemonAttack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAttack&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._cost, _cost)&&(identical(other.convertedEnergyCost, convertedEnergyCost) || other.convertedEnergyCost == convertedEnergyCost)&&(identical(other.damage, damage) || other.damage == damage)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_cost),convertedEnergyCost,damage,text);

@override
String toString() {
  return 'PokemonAttack(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
}


}

/// @nodoc
abstract mixin class _$PokemonAttackCopyWith<$Res> implements $PokemonAttackCopyWith<$Res> {
  factory _$PokemonAttackCopyWith(_PokemonAttack value, $Res Function(_PokemonAttack) _then) = __$PokemonAttackCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String>? cost, int? convertedEnergyCost, String? damage, String? text
});




}
/// @nodoc
class __$PokemonAttackCopyWithImpl<$Res>
    implements _$PokemonAttackCopyWith<$Res> {
  __$PokemonAttackCopyWithImpl(this._self, this._then);

  final _PokemonAttack _self;
  final $Res Function(_PokemonAttack) _then;

/// Create a copy of PokemonAttack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cost = freezed,Object? convertedEnergyCost = freezed,Object? damage = freezed,Object? text = freezed,}) {
  return _then(_PokemonAttack(
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
mixin _$PokemonWeakness {

 String get type; String get value;
/// Create a copy of PokemonWeakness
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonWeaknessCopyWith<PokemonWeakness> get copyWith => _$PokemonWeaknessCopyWithImpl<PokemonWeakness>(this as PokemonWeakness, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonWeakness&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'PokemonWeakness(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $PokemonWeaknessCopyWith<$Res>  {
  factory $PokemonWeaknessCopyWith(PokemonWeakness value, $Res Function(PokemonWeakness) _then) = _$PokemonWeaknessCopyWithImpl;
@useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class _$PokemonWeaknessCopyWithImpl<$Res>
    implements $PokemonWeaknessCopyWith<$Res> {
  _$PokemonWeaknessCopyWithImpl(this._self, this._then);

  final PokemonWeakness _self;
  final $Res Function(PokemonWeakness) _then;

/// Create a copy of PokemonWeakness
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonWeakness].
extension PokemonWeaknessPatterns on PokemonWeakness {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonWeakness value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonWeakness() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonWeakness value)  $default,){
final _that = this;
switch (_that) {
case _PokemonWeakness():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonWeakness value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonWeakness() when $default != null:
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
case _PokemonWeakness() when $default != null:
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
case _PokemonWeakness():
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
case _PokemonWeakness() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonWeakness implements PokemonWeakness {
  const _PokemonWeakness({required this.type, required this.value});
  

@override final  String type;
@override final  String value;

/// Create a copy of PokemonWeakness
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonWeaknessCopyWith<_PokemonWeakness> get copyWith => __$PokemonWeaknessCopyWithImpl<_PokemonWeakness>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonWeakness&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'PokemonWeakness(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PokemonWeaknessCopyWith<$Res> implements $PokemonWeaknessCopyWith<$Res> {
  factory _$PokemonWeaknessCopyWith(_PokemonWeakness value, $Res Function(_PokemonWeakness) _then) = __$PokemonWeaknessCopyWithImpl;
@override @useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class __$PokemonWeaknessCopyWithImpl<$Res>
    implements _$PokemonWeaknessCopyWith<$Res> {
  __$PokemonWeaknessCopyWithImpl(this._self, this._then);

  final _PokemonWeakness _self;
  final $Res Function(_PokemonWeakness) _then;

/// Create a copy of PokemonWeakness
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_PokemonWeakness(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonResistance {

 String get type; String get value;
/// Create a copy of PokemonResistance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonResistanceCopyWith<PokemonResistance> get copyWith => _$PokemonResistanceCopyWithImpl<PokemonResistance>(this as PokemonResistance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonResistance&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'PokemonResistance(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $PokemonResistanceCopyWith<$Res>  {
  factory $PokemonResistanceCopyWith(PokemonResistance value, $Res Function(PokemonResistance) _then) = _$PokemonResistanceCopyWithImpl;
@useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class _$PokemonResistanceCopyWithImpl<$Res>
    implements $PokemonResistanceCopyWith<$Res> {
  _$PokemonResistanceCopyWithImpl(this._self, this._then);

  final PokemonResistance _self;
  final $Res Function(PokemonResistance) _then;

/// Create a copy of PokemonResistance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonResistance].
extension PokemonResistancePatterns on PokemonResistance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonResistance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonResistance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonResistance value)  $default,){
final _that = this;
switch (_that) {
case _PokemonResistance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonResistance value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonResistance() when $default != null:
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
case _PokemonResistance() when $default != null:
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
case _PokemonResistance():
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
case _PokemonResistance() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonResistance implements PokemonResistance {
  const _PokemonResistance({required this.type, required this.value});
  

@override final  String type;
@override final  String value;

/// Create a copy of PokemonResistance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonResistanceCopyWith<_PokemonResistance> get copyWith => __$PokemonResistanceCopyWithImpl<_PokemonResistance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonResistance&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'PokemonResistance(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PokemonResistanceCopyWith<$Res> implements $PokemonResistanceCopyWith<$Res> {
  factory _$PokemonResistanceCopyWith(_PokemonResistance value, $Res Function(_PokemonResistance) _then) = __$PokemonResistanceCopyWithImpl;
@override @useResult
$Res call({
 String type, String value
});




}
/// @nodoc
class __$PokemonResistanceCopyWithImpl<$Res>
    implements _$PokemonResistanceCopyWith<$Res> {
  __$PokemonResistanceCopyWithImpl(this._self, this._then);

  final _PokemonResistance _self;
  final $Res Function(_PokemonResistance) _then;

/// Create a copy of PokemonResistance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_PokemonResistance(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonCardSet {

 String get id; String get name; String get series; int? get printedTotal; int? get total; String? get releaseDate;
/// Create a copy of PokemonCardSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardSetCopyWith<PokemonCardSet> get copyWith => _$PokemonCardSetCopyWithImpl<PokemonCardSet>(this as PokemonCardSet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCardSet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.series, series) || other.series == series)&&(identical(other.printedTotal, printedTotal) || other.printedTotal == printedTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,series,printedTotal,total,releaseDate);

@override
String toString() {
  return 'PokemonCardSet(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $PokemonCardSetCopyWith<$Res>  {
  factory $PokemonCardSetCopyWith(PokemonCardSet value, $Res Function(PokemonCardSet) _then) = _$PokemonCardSetCopyWithImpl;
@useResult
$Res call({
 String id, String name, String series, int? printedTotal, int? total, String? releaseDate
});




}
/// @nodoc
class _$PokemonCardSetCopyWithImpl<$Res>
    implements $PokemonCardSetCopyWith<$Res> {
  _$PokemonCardSetCopyWithImpl(this._self, this._then);

  final PokemonCardSet _self;
  final $Res Function(PokemonCardSet) _then;

/// Create a copy of PokemonCardSet
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


/// Adds pattern-matching-related methods to [PokemonCardSet].
extension PokemonCardSetPatterns on PokemonCardSet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonCardSet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonCardSet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonCardSet value)  $default,){
final _that = this;
switch (_that) {
case _PokemonCardSet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonCardSet value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonCardSet() when $default != null:
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
case _PokemonCardSet() when $default != null:
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
case _PokemonCardSet():
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
case _PokemonCardSet() when $default != null:
return $default(_that.id,_that.name,_that.series,_that.printedTotal,_that.total,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonCardSet implements PokemonCardSet {
  const _PokemonCardSet({required this.id, required this.name, required this.series, this.printedTotal, this.total, this.releaseDate});
  

@override final  String id;
@override final  String name;
@override final  String series;
@override final  int? printedTotal;
@override final  int? total;
@override final  String? releaseDate;

/// Create a copy of PokemonCardSet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCardSetCopyWith<_PokemonCardSet> get copyWith => __$PokemonCardSetCopyWithImpl<_PokemonCardSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCardSet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.series, series) || other.series == series)&&(identical(other.printedTotal, printedTotal) || other.printedTotal == printedTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,series,printedTotal,total,releaseDate);

@override
String toString() {
  return 'PokemonCardSet(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardSetCopyWith<$Res> implements $PokemonCardSetCopyWith<$Res> {
  factory _$PokemonCardSetCopyWith(_PokemonCardSet value, $Res Function(_PokemonCardSet) _then) = __$PokemonCardSetCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String series, int? printedTotal, int? total, String? releaseDate
});




}
/// @nodoc
class __$PokemonCardSetCopyWithImpl<$Res>
    implements _$PokemonCardSetCopyWith<$Res> {
  __$PokemonCardSetCopyWithImpl(this._self, this._then);

  final _PokemonCardSet _self;
  final $Res Function(_PokemonCardSet) _then;

/// Create a copy of PokemonCardSet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? series = null,Object? printedTotal = freezed,Object? total = freezed,Object? releaseDate = freezed,}) {
  return _then(_PokemonCardSet(
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

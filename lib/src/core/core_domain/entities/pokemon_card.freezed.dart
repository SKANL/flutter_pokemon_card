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

 String get id; String get name; String get imageUrl; String? get hp; String? get supertype;
/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardCopyWith<PokemonCard> get copyWith => _$PokemonCardCopyWithImpl<PokemonCard>(this as PokemonCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCard&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,hp,supertype);

@override
String toString() {
  return 'PokemonCard(id: $id, name: $name, imageUrl: $imageUrl, hp: $hp, supertype: $supertype)';
}


}

/// @nodoc
abstract mixin class $PokemonCardCopyWith<$Res>  {
  factory $PokemonCardCopyWith(PokemonCard value, $Res Function(PokemonCard) _then) = _$PokemonCardCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, String? hp, String? supertype
});




}
/// @nodoc
class _$PokemonCardCopyWithImpl<$Res>
    implements $PokemonCardCopyWith<$Res> {
  _$PokemonCardCopyWithImpl(this._self, this._then);

  final PokemonCard _self;
  final $Res Function(PokemonCard) _then;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? hp = freezed,Object? supertype = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype)  $default,) {final _that = this;
switch (_that) {
case _PokemonCard():
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  String? hp,  String? supertype)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCard() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.hp,_that.supertype);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonCard implements PokemonCard {
  const _PokemonCard({required this.id, required this.name, required this.imageUrl, this.hp, this.supertype});
  

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  String? hp;
@override final  String? supertype;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCardCopyWith<_PokemonCard> get copyWith => __$PokemonCardCopyWithImpl<_PokemonCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCard&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,hp,supertype);

@override
String toString() {
  return 'PokemonCard(id: $id, name: $name, imageUrl: $imageUrl, hp: $hp, supertype: $supertype)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardCopyWith<$Res> implements $PokemonCardCopyWith<$Res> {
  factory _$PokemonCardCopyWith(_PokemonCard value, $Res Function(_PokemonCard) _then) = __$PokemonCardCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, String? hp, String? supertype
});




}
/// @nodoc
class __$PokemonCardCopyWithImpl<$Res>
    implements _$PokemonCardCopyWith<$Res> {
  __$PokemonCardCopyWithImpl(this._self, this._then);

  final _PokemonCard _self;
  final $Res Function(_PokemonCard) _then;

/// Create a copy of PokemonCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? hp = freezed,Object? supertype = freezed,}) {
  return _then(_PokemonCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

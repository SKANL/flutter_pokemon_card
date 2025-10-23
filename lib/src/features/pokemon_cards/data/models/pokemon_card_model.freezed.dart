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

 String get id; String get name; CardImagesModel get images; String? get hp; String? get supertype;
/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardModelCopyWith<PokemonCardModel> get copyWith => _$PokemonCardModelCopyWithImpl<PokemonCardModel>(this as PokemonCardModel, _$identity);

  /// Serializes this PokemonCardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.images, images) || other.images == images)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,images,hp,supertype);

@override
String toString() {
  return 'PokemonCardModel(id: $id, name: $name, images: $images, hp: $hp, supertype: $supertype)';
}


}

/// @nodoc
abstract mixin class $PokemonCardModelCopyWith<$Res>  {
  factory $PokemonCardModelCopyWith(PokemonCardModel value, $Res Function(PokemonCardModel) _then) = _$PokemonCardModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, CardImagesModel images, String? hp, String? supertype
});


$CardImagesModelCopyWith<$Res> get images;

}
/// @nodoc
class _$PokemonCardModelCopyWithImpl<$Res>
    implements $PokemonCardModelCopyWith<$Res> {
  _$PokemonCardModelCopyWithImpl(this._self, this._then);

  final PokemonCardModel _self;
  final $Res Function(PokemonCardModel) _then;

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? images = null,Object? hp = freezed,Object? supertype = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as CardImagesModel,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardImagesModelCopyWith<$Res> get images {
  
  return $CardImagesModelCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CardImagesModel images,  String? hp,  String? supertype)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CardImagesModel images,  String? hp,  String? supertype)  $default,) {final _that = this;
switch (_that) {
case _PokemonCardModel():
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CardImagesModel images,  String? hp,  String? supertype)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCardModel() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.hp,_that.supertype);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonCardModel implements PokemonCardModel {
  const _PokemonCardModel({required this.id, required this.name, required this.images, this.hp, this.supertype});
  factory _PokemonCardModel.fromJson(Map<String, dynamic> json) => _$PokemonCardModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  CardImagesModel images;
@override final  String? hp;
@override final  String? supertype;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.images, images) || other.images == images)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.supertype, supertype) || other.supertype == supertype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,images,hp,supertype);

@override
String toString() {
  return 'PokemonCardModel(id: $id, name: $name, images: $images, hp: $hp, supertype: $supertype)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardModelCopyWith<$Res> implements $PokemonCardModelCopyWith<$Res> {
  factory _$PokemonCardModelCopyWith(_PokemonCardModel value, $Res Function(_PokemonCardModel) _then) = __$PokemonCardModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CardImagesModel images, String? hp, String? supertype
});


@override $CardImagesModelCopyWith<$Res> get images;

}
/// @nodoc
class __$PokemonCardModelCopyWithImpl<$Res>
    implements _$PokemonCardModelCopyWith<$Res> {
  __$PokemonCardModelCopyWithImpl(this._self, this._then);

  final _PokemonCardModel _self;
  final $Res Function(_PokemonCardModel) _then;

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? images = null,Object? hp = freezed,Object? supertype = freezed,}) {
  return _then(_PokemonCardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as CardImagesModel,hp: freezed == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as String?,supertype: freezed == supertype ? _self.supertype : supertype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PokemonCardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardImagesModelCopyWith<$Res> get images {
  
  return $CardImagesModelCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// @nodoc
mixin _$CardImagesModel {

 String get small; String get large;
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
 String small, String large
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
@pragma('vm:prefer-inline') @override $Res call({Object? small = null,Object? large = null,}) {
  return _then(_self.copyWith(
small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String small,  String large)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String small,  String large)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String small,  String large)?  $default,) {final _that = this;
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
  const _CardImagesModel({required this.small, required this.large});
  factory _CardImagesModel.fromJson(Map<String, dynamic> json) => _$CardImagesModelFromJson(json);

@override final  String small;
@override final  String large;

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
 String small, String large
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
@override @pragma('vm:prefer-inline') $Res call({Object? small = null,Object? large = null,}) {
  return _then(_CardImagesModel(
small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

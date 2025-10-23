// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonCardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PokemonCardEvent()';
}


}

/// @nodoc
class $PokemonCardEventCopyWith<$Res>  {
$PokemonCardEventCopyWith(PokemonCardEvent _, $Res Function(PokemonCardEvent) __);
}


/// Adds pattern-matching-related methods to [PokemonCardEvent].
extension PokemonCardEventPatterns on PokemonCardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CardsFetched value)?  cardsFetched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CardsFetched value)  cardsFetched,}){
final _that = this;
switch (_that) {
case CardsFetched():
return cardsFetched(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CardsFetched value)?  cardsFetched,}){
final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cardsFetched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cardsFetched,}) {final _that = this;
switch (_that) {
case CardsFetched():
return cardsFetched();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cardsFetched,}) {final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched();case _:
  return null;

}
}

}

/// @nodoc


class CardsFetched implements PokemonCardEvent {
  const CardsFetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsFetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PokemonCardEvent.cardsFetched()';
}


}




/// @nodoc
mixin _$PokemonCardState {

 PokemonCardStatus get status; List<PokemonCard> get cards; bool get hasReachedMax;
/// Create a copy of PokemonCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCardStateCopyWith<PokemonCardState> get copyWith => _$PokemonCardStateCopyWithImpl<PokemonCardState>(this as PokemonCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonCardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.cards, cards)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(cards),hasReachedMax);

@override
String toString() {
  return 'PokemonCardState(status: $status, cards: $cards, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class $PokemonCardStateCopyWith<$Res>  {
  factory $PokemonCardStateCopyWith(PokemonCardState value, $Res Function(PokemonCardState) _then) = _$PokemonCardStateCopyWithImpl;
@useResult
$Res call({
 PokemonCardStatus status, List<PokemonCard> cards, bool hasReachedMax
});




}
/// @nodoc
class _$PokemonCardStateCopyWithImpl<$Res>
    implements $PokemonCardStateCopyWith<$Res> {
  _$PokemonCardStateCopyWithImpl(this._self, this._then);

  final PokemonCardState _self;
  final $Res Function(PokemonCardState) _then;

/// Create a copy of PokemonCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cards = null,Object? hasReachedMax = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonCardStatus,cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<PokemonCard>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonCardState].
extension PokemonCardStatePatterns on PokemonCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonCardState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonCardState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PokemonCardStatus status,  List<PokemonCard> cards,  bool hasReachedMax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonCardState() when $default != null:
return $default(_that.status,_that.cards,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PokemonCardStatus status,  List<PokemonCard> cards,  bool hasReachedMax)  $default,) {final _that = this;
switch (_that) {
case _PokemonCardState():
return $default(_that.status,_that.cards,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PokemonCardStatus status,  List<PokemonCard> cards,  bool hasReachedMax)?  $default,) {final _that = this;
switch (_that) {
case _PokemonCardState() when $default != null:
return $default(_that.status,_that.cards,_that.hasReachedMax);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonCardState implements PokemonCardState {
  const _PokemonCardState({this.status = PokemonCardStatus.initial, final  List<PokemonCard> cards = const <PokemonCard>[], this.hasReachedMax = false}): _cards = cards;
  

@override@JsonKey() final  PokemonCardStatus status;
 final  List<PokemonCard> _cards;
@override@JsonKey() List<PokemonCard> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

@override@JsonKey() final  bool hasReachedMax;

/// Create a copy of PokemonCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCardStateCopyWith<_PokemonCardState> get copyWith => __$PokemonCardStateCopyWithImpl<_PokemonCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonCardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._cards, _cards)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_cards),hasReachedMax);

@override
String toString() {
  return 'PokemonCardState(status: $status, cards: $cards, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$PokemonCardStateCopyWith<$Res> implements $PokemonCardStateCopyWith<$Res> {
  factory _$PokemonCardStateCopyWith(_PokemonCardState value, $Res Function(_PokemonCardState) _then) = __$PokemonCardStateCopyWithImpl;
@override @useResult
$Res call({
 PokemonCardStatus status, List<PokemonCard> cards, bool hasReachedMax
});




}
/// @nodoc
class __$PokemonCardStateCopyWithImpl<$Res>
    implements _$PokemonCardStateCopyWith<$Res> {
  __$PokemonCardStateCopyWithImpl(this._self, this._then);

  final _PokemonCardState _self;
  final $Res Function(_PokemonCardState) _then;

/// Create a copy of PokemonCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cards = null,Object? hasReachedMax = null,}) {
  return _then(_PokemonCardState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonCardStatus,cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<PokemonCard>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

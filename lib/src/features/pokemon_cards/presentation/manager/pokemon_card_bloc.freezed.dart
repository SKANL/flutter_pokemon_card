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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CardsFetched value)?  cardsFetched,TResult Function( CardsSearched value)?  cardsSearched,TResult Function( CardsCacheUpdated value)?  cardsCacheUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched(_that);case CardsSearched() when cardsSearched != null:
return cardsSearched(_that);case CardsCacheUpdated() when cardsCacheUpdated != null:
return cardsCacheUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CardsFetched value)  cardsFetched,required TResult Function( CardsSearched value)  cardsSearched,required TResult Function( CardsCacheUpdated value)  cardsCacheUpdated,}){
final _that = this;
switch (_that) {
case CardsFetched():
return cardsFetched(_that);case CardsSearched():
return cardsSearched(_that);case CardsCacheUpdated():
return cardsCacheUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CardsFetched value)?  cardsFetched,TResult? Function( CardsSearched value)?  cardsSearched,TResult? Function( CardsCacheUpdated value)?  cardsCacheUpdated,}){
final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched(_that);case CardsSearched() when cardsSearched != null:
return cardsSearched(_that);case CardsCacheUpdated() when cardsCacheUpdated != null:
return cardsCacheUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cardsFetched,TResult Function( String query)?  cardsSearched,TResult Function( List<PokemonCard> cached)?  cardsCacheUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched();case CardsSearched() when cardsSearched != null:
return cardsSearched(_that.query);case CardsCacheUpdated() when cardsCacheUpdated != null:
return cardsCacheUpdated(_that.cached);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cardsFetched,required TResult Function( String query)  cardsSearched,required TResult Function( List<PokemonCard> cached)  cardsCacheUpdated,}) {final _that = this;
switch (_that) {
case CardsFetched():
return cardsFetched();case CardsSearched():
return cardsSearched(_that.query);case CardsCacheUpdated():
return cardsCacheUpdated(_that.cached);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cardsFetched,TResult? Function( String query)?  cardsSearched,TResult? Function( List<PokemonCard> cached)?  cardsCacheUpdated,}) {final _that = this;
switch (_that) {
case CardsFetched() when cardsFetched != null:
return cardsFetched();case CardsSearched() when cardsSearched != null:
return cardsSearched(_that.query);case CardsCacheUpdated() when cardsCacheUpdated != null:
return cardsCacheUpdated(_that.cached);case _:
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


class CardsSearched implements PokemonCardEvent {
  const CardsSearched(this.query);
  

 final  String query;

/// Create a copy of PokemonCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardsSearchedCopyWith<CardsSearched> get copyWith => _$CardsSearchedCopyWithImpl<CardsSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsSearched&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PokemonCardEvent.cardsSearched(query: $query)';
}


}

/// @nodoc
abstract mixin class $CardsSearchedCopyWith<$Res> implements $PokemonCardEventCopyWith<$Res> {
  factory $CardsSearchedCopyWith(CardsSearched value, $Res Function(CardsSearched) _then) = _$CardsSearchedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$CardsSearchedCopyWithImpl<$Res>
    implements $CardsSearchedCopyWith<$Res> {
  _$CardsSearchedCopyWithImpl(this._self, this._then);

  final CardsSearched _self;
  final $Res Function(CardsSearched) _then;

/// Create a copy of PokemonCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(CardsSearched(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CardsCacheUpdated implements PokemonCardEvent {
  const CardsCacheUpdated(final  List<PokemonCard> cached): _cached = cached;
  

 final  List<PokemonCard> _cached;
 List<PokemonCard> get cached {
  if (_cached is EqualUnmodifiableListView) return _cached;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cached);
}


/// Create a copy of PokemonCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardsCacheUpdatedCopyWith<CardsCacheUpdated> get copyWith => _$CardsCacheUpdatedCopyWithImpl<CardsCacheUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsCacheUpdated&&const DeepCollectionEquality().equals(other._cached, _cached));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cached));

@override
String toString() {
  return 'PokemonCardEvent.cardsCacheUpdated(cached: $cached)';
}


}

/// @nodoc
abstract mixin class $CardsCacheUpdatedCopyWith<$Res> implements $PokemonCardEventCopyWith<$Res> {
  factory $CardsCacheUpdatedCopyWith(CardsCacheUpdated value, $Res Function(CardsCacheUpdated) _then) = _$CardsCacheUpdatedCopyWithImpl;
@useResult
$Res call({
 List<PokemonCard> cached
});




}
/// @nodoc
class _$CardsCacheUpdatedCopyWithImpl<$Res>
    implements $CardsCacheUpdatedCopyWith<$Res> {
  _$CardsCacheUpdatedCopyWithImpl(this._self, this._then);

  final CardsCacheUpdated _self;
  final $Res Function(CardsCacheUpdated) _then;

/// Create a copy of PokemonCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cached = null,}) {
  return _then(CardsCacheUpdated(
null == cached ? _self._cached : cached // ignore: cast_nullable_to_non_nullable
as List<PokemonCard>,
  ));
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

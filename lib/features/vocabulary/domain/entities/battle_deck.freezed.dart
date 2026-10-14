// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleDeck {

 bool get success; String get topic; int get count; List<BattleQuestion> get deck;
/// Create a copy of BattleDeck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleDeckCopyWith<BattleDeck> get copyWith => _$BattleDeckCopyWithImpl<BattleDeck>(this as BattleDeck, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleDeck;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleDeck&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.deck, _this.deck));
}


@override
int get hashCode {
  final _this = this as BattleDeck;
  return Object.hash(runtimeType,_this.success,_this.topic,_this.count,const DeepCollectionEquality().hash(_this.deck));
}

@override
String toString() {
  final _this = this as BattleDeck;
  return 'BattleDeck(success: ${_this.success}, topic: ${_this.topic}, count: ${_this.count}, deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $BattleDeckCopyWith<$Res>  {
  factory $BattleDeckCopyWith(BattleDeck value, $Res Function(BattleDeck) _then) = _$BattleDeckCopyWithImpl;
@useResult
$Res call({
 bool success, String topic, int count, List<BattleQuestion> deck
});




}
/// @nodoc
class _$BattleDeckCopyWithImpl<$Res>
    implements $BattleDeckCopyWith<$Res> {
  _$BattleDeckCopyWithImpl(this._self, this._then);

  final BattleDeck _self;
  final $Res Function(BattleDeck) _then;

/// Create a copy of BattleDeck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? topic = null,Object? count = null,Object? deck = null,}) {
  return _then(BattleDeck(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,deck: null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestion>,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleDeck].
extension BattleDeckPatterns on BattleDeck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleDeck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleDeck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleDeck value)  $default,){
final _that = this;
switch (_that) {
case _BattleDeck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleDeck value)?  $default,){
final _that = this;
switch (_that) {
case _BattleDeck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String topic,  int count,  List<BattleQuestion> deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleDeck() when $default != null:
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String topic,  int count,  List<BattleQuestion> deck)  $default,) {final _that = this;
switch (_that) {
case _BattleDeck():
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String topic,  int count,  List<BattleQuestion> deck)?  $default,) {final _that = this;
switch (_that) {
case _BattleDeck() when $default != null:
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
  return null;

}
}

}

/// @nodoc


class _BattleDeck implements BattleDeck {
  const _BattleDeck({this.success = true, this.topic = '', this.count = 0,  List<BattleQuestion> deck = const []}): _deck = deck;
  

@override@JsonKey() final  bool success;
@override@JsonKey() final  String topic;
@override@JsonKey() final  int count;
 final  List<BattleQuestion> _deck;
@override@JsonKey() List<BattleQuestion> get deck {
  if (_deck is EqualUnmodifiableListView) return _deck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deck);
}


/// Create a copy of BattleDeck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleDeckCopyWith<_BattleDeck> get copyWith => __$BattleDeckCopyWithImpl<_BattleDeck>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleDeck&&(identical(other.success, success) || other.success == success)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.deck, _deck));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,topic,count,const DeepCollectionEquality().hash(_deck));
}

@override
String toString() {
    return 'BattleDeck(success: $success, topic: $topic, count: $count, deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$BattleDeckCopyWith<$Res> implements $BattleDeckCopyWith<$Res> {
  factory _$BattleDeckCopyWith(_BattleDeck value, $Res Function(_BattleDeck) _then) = __$BattleDeckCopyWithImpl;
@override @useResult
$Res call({
 bool success, String topic, int count, List<BattleQuestion> deck
});




}
/// @nodoc
class __$BattleDeckCopyWithImpl<$Res>
    implements _$BattleDeckCopyWith<$Res> {
  __$BattleDeckCopyWithImpl(this._self, this._then);

  final _BattleDeck _self;
  final $Res Function(_BattleDeck) _then;

/// Create a copy of BattleDeck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? topic = null,Object? count = null,Object? deck = null,}) {
  return _then(_BattleDeck(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,deck: null == deck ? _self._deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestion>,
  ));
}


}

// dart format on

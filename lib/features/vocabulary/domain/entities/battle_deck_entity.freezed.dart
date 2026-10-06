// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_deck_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleDeckEntity {

 bool get success; String get topic; int get count; List<BattleQuestionEntity> get deck;
/// Create a copy of BattleDeckEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleDeckEntityCopyWith<BattleDeckEntity> get copyWith => _$BattleDeckEntityCopyWithImpl<BattleDeckEntity>(this as BattleDeckEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleDeckEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleDeckEntity&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.deck, _this.deck));
}


@override
int get hashCode {
  final _this = this as BattleDeckEntity;
  return Object.hash(runtimeType,_this.success,_this.topic,_this.count,const DeepCollectionEquality().hash(_this.deck));
}

@override
String toString() {
  final _this = this as BattleDeckEntity;
  return 'BattleDeckEntity(success: ${_this.success}, topic: ${_this.topic}, count: ${_this.count}, deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $BattleDeckEntityCopyWith<$Res>  {
  factory $BattleDeckEntityCopyWith(BattleDeckEntity value, $Res Function(BattleDeckEntity) _then) = _$BattleDeckEntityCopyWithImpl;
@useResult
$Res call({
 bool success, String topic, int count, List<BattleQuestionEntity> deck
});




}
/// @nodoc
class _$BattleDeckEntityCopyWithImpl<$Res>
    implements $BattleDeckEntityCopyWith<$Res> {
  _$BattleDeckEntityCopyWithImpl(this._self, this._then);

  final BattleDeckEntity _self;
  final $Res Function(BattleDeckEntity) _then;

/// Create a copy of BattleDeckEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? topic = null,Object? count = null,Object? deck = null,}) {
  return _then(BattleDeckEntity(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,deck: null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleDeckEntity].
extension BattleDeckEntityPatterns on BattleDeckEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleDeckEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleDeckEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleDeckEntity value)  $default,){
final _that = this;
switch (_that) {
case _BattleDeckEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleDeckEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BattleDeckEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String topic,  int count,  List<BattleQuestionEntity> deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleDeckEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String topic,  int count,  List<BattleQuestionEntity> deck)  $default,) {final _that = this;
switch (_that) {
case _BattleDeckEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String topic,  int count,  List<BattleQuestionEntity> deck)?  $default,) {final _that = this;
switch (_that) {
case _BattleDeckEntity() when $default != null:
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
  return null;

}
}

}

/// @nodoc


class _BattleDeckEntity implements BattleDeckEntity {
  const _BattleDeckEntity({this.success = true, this.topic = '', this.count = 0,  List<BattleQuestionEntity> deck = const []}): _deck = deck;
  

@override@JsonKey() final  bool success;
@override@JsonKey() final  String topic;
@override@JsonKey() final  int count;
 final  List<BattleQuestionEntity> _deck;
@override@JsonKey() List<BattleQuestionEntity> get deck {
  if (_deck is EqualUnmodifiableListView) return _deck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deck);
}


/// Create a copy of BattleDeckEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleDeckEntityCopyWith<_BattleDeckEntity> get copyWith => __$BattleDeckEntityCopyWithImpl<_BattleDeckEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleDeckEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.deck, _deck));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,topic,count,const DeepCollectionEquality().hash(_deck));
}

@override
String toString() {
    return 'BattleDeckEntity(success: $success, topic: $topic, count: $count, deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$BattleDeckEntityCopyWith<$Res> implements $BattleDeckEntityCopyWith<$Res> {
  factory _$BattleDeckEntityCopyWith(_BattleDeckEntity value, $Res Function(_BattleDeckEntity) _then) = __$BattleDeckEntityCopyWithImpl;
@override @useResult
$Res call({
 bool success, String topic, int count, List<BattleQuestionEntity> deck
});




}
/// @nodoc
class __$BattleDeckEntityCopyWithImpl<$Res>
    implements _$BattleDeckEntityCopyWith<$Res> {
  __$BattleDeckEntityCopyWithImpl(this._self, this._then);

  final _BattleDeckEntity _self;
  final $Res Function(_BattleDeckEntity) _then;

/// Create a copy of BattleDeckEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? topic = null,Object? count = null,Object? deck = null,}) {
  return _then(_BattleDeckEntity(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,deck: null == deck ? _self._deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestionEntity>,
  ));
}


}

// dart format on

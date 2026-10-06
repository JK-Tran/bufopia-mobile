// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleOptionEntity {

 String get id; String get topic; String get en; String get vi;
/// Create a copy of BattleOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleOptionEntityCopyWith<BattleOptionEntity> get copyWith => _$BattleOptionEntityCopyWithImpl<BattleOptionEntity>(this as BattleOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleOptionEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleOptionEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi));
}


@override
int get hashCode {
  final _this = this as BattleOptionEntity;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi);
}

@override
String toString() {
  final _this = this as BattleOptionEntity;
  return 'BattleOptionEntity(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi})';
}


}

/// @nodoc
abstract mixin class $BattleOptionEntityCopyWith<$Res>  {
  factory $BattleOptionEntityCopyWith(BattleOptionEntity value, $Res Function(BattleOptionEntity) _then) = _$BattleOptionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String topic, String en, String vi
});




}
/// @nodoc
class _$BattleOptionEntityCopyWithImpl<$Res>
    implements $BattleOptionEntityCopyWith<$Res> {
  _$BattleOptionEntityCopyWithImpl(this._self, this._then);

  final BattleOptionEntity _self;
  final $Res Function(BattleOptionEntity) _then;

/// Create a copy of BattleOptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,}) {
  return _then(BattleOptionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleOptionEntity].
extension BattleOptionEntityPatterns on BattleOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _BattleOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BattleOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleOptionEntity() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi)  $default,) {final _that = this;
switch (_that) {
case _BattleOptionEntity():
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String topic,  String en,  String vi)?  $default,) {final _that = this;
switch (_that) {
case _BattleOptionEntity() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
  return null;

}
}

}

/// @nodoc


class _BattleOptionEntity implements BattleOptionEntity {
  const _BattleOptionEntity({this.id = '', this.topic = '', this.en = '', this.vi = ''});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String topic;
@override@JsonKey() final  String en;
@override@JsonKey() final  String vi;

/// Create a copy of BattleOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleOptionEntityCopyWith<_BattleOptionEntity> get copyWith => __$BattleOptionEntityCopyWithImpl<_BattleOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi);
}

@override
String toString() {
    return 'BattleOptionEntity(id: $id, topic: $topic, en: $en, vi: $vi)';
}


}

/// @nodoc
abstract mixin class _$BattleOptionEntityCopyWith<$Res> implements $BattleOptionEntityCopyWith<$Res> {
  factory _$BattleOptionEntityCopyWith(_BattleOptionEntity value, $Res Function(_BattleOptionEntity) _then) = __$BattleOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String topic, String en, String vi
});




}
/// @nodoc
class __$BattleOptionEntityCopyWithImpl<$Res>
    implements _$BattleOptionEntityCopyWith<$Res> {
  __$BattleOptionEntityCopyWithImpl(this._self, this._then);

  final _BattleOptionEntity _self;
  final $Res Function(_BattleOptionEntity) _then;

/// Create a copy of BattleOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,}) {
  return _then(_BattleOptionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

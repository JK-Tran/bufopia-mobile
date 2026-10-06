// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleQuestionEntity {

 String get id; String get topic; String get en; String get vi; List<BattleOptionEntity> get options;
/// Create a copy of BattleQuestionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleQuestionEntityCopyWith<BattleQuestionEntity> get copyWith => _$BattleQuestionEntityCopyWithImpl<BattleQuestionEntity>(this as BattleQuestionEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleQuestionEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleQuestionEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&const DeepCollectionEquality().equals(other.options, _this.options));
}


@override
int get hashCode {
  final _this = this as BattleQuestionEntity;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as BattleQuestionEntity;
  return 'BattleQuestionEntity(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $BattleQuestionEntityCopyWith<$Res>  {
  factory $BattleQuestionEntityCopyWith(BattleQuestionEntity value, $Res Function(BattleQuestionEntity) _then) = _$BattleQuestionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String topic, String en, String vi, List<BattleOptionEntity> options
});




}
/// @nodoc
class _$BattleQuestionEntityCopyWithImpl<$Res>
    implements $BattleQuestionEntityCopyWith<$Res> {
  _$BattleQuestionEntityCopyWithImpl(this._self, this._then);

  final BattleQuestionEntity _self;
  final $Res Function(BattleQuestionEntity) _then;

/// Create a copy of BattleQuestionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,Object? options = null,}) {
  return _then(BattleQuestionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleQuestionEntity].
extension BattleQuestionEntityPatterns on BattleQuestionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleQuestionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleQuestionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleQuestionEntity value)  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleQuestionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi,  List<BattleOptionEntity> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleQuestionEntity() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi,  List<BattleOptionEntity> options)  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionEntity():
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String topic,  String en,  String vi,  List<BattleOptionEntity> options)?  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionEntity() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _BattleQuestionEntity implements BattleQuestionEntity {
  const _BattleQuestionEntity({this.id = '', this.topic = '', this.en = '', this.vi = '',  List<BattleOptionEntity> options = const []}): _options = options;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String topic;
@override@JsonKey() final  String en;
@override@JsonKey() final  String vi;
 final  List<BattleOptionEntity> _options;
@override@JsonKey() List<BattleOptionEntity> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of BattleQuestionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleQuestionEntityCopyWith<_BattleQuestionEntity> get copyWith => __$BattleQuestionEntityCopyWithImpl<_BattleQuestionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleQuestionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi)&&const DeepCollectionEquality().equals(other.options, _options));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'BattleQuestionEntity(id: $id, topic: $topic, en: $en, vi: $vi, options: $options)';
}


}

/// @nodoc
abstract mixin class _$BattleQuestionEntityCopyWith<$Res> implements $BattleQuestionEntityCopyWith<$Res> {
  factory _$BattleQuestionEntityCopyWith(_BattleQuestionEntity value, $Res Function(_BattleQuestionEntity) _then) = __$BattleQuestionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String topic, String en, String vi, List<BattleOptionEntity> options
});




}
/// @nodoc
class __$BattleQuestionEntityCopyWithImpl<$Res>
    implements _$BattleQuestionEntityCopyWith<$Res> {
  __$BattleQuestionEntityCopyWithImpl(this._self, this._then);

  final _BattleQuestionEntity _self;
  final $Res Function(_BattleQuestionEntity) _then;

/// Create a copy of BattleQuestionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,Object? options = null,}) {
  return _then(_BattleQuestionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionEntity>,
  ));
}


}

// dart format on

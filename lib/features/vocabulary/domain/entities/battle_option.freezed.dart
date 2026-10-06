// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleOption {

 String get id; String get topic; String get en; String get vi;
/// Create a copy of BattleOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleOptionCopyWith<BattleOption> get copyWith => _$BattleOptionCopyWithImpl<BattleOption>(this as BattleOption, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi));
}


@override
int get hashCode {
  final _this = this as BattleOption;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi);
}

@override
String toString() {
  final _this = this as BattleOption;
  return 'BattleOption(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi})';
}


}

/// @nodoc
abstract mixin class $BattleOptionCopyWith<$Res>  {
  factory $BattleOptionCopyWith(BattleOption value, $Res Function(BattleOption) _then) = _$BattleOptionCopyWithImpl;
@useResult
$Res call({
 String id, String topic, String en, String vi
});




}
/// @nodoc
class _$BattleOptionCopyWithImpl<$Res>
    implements $BattleOptionCopyWith<$Res> {
  _$BattleOptionCopyWithImpl(this._self, this._then);

  final BattleOption _self;
  final $Res Function(BattleOption) _then;

/// Create a copy of BattleOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,}) {
  return _then(BattleOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleOption].
extension BattleOptionPatterns on BattleOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleOption value)  $default,){
final _that = this;
switch (_that) {
case _BattleOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleOption value)?  $default,){
final _that = this;
switch (_that) {
case _BattleOption() when $default != null:
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
case _BattleOption() when $default != null:
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
case _BattleOption():
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
case _BattleOption() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
  return null;

}
}

}

/// @nodoc


class _BattleOption implements BattleOption {
  const _BattleOption({this.id = '', this.topic = '', this.en = '', this.vi = ''});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String topic;
@override@JsonKey() final  String en;
@override@JsonKey() final  String vi;

/// Create a copy of BattleOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleOptionCopyWith<_BattleOption> get copyWith => __$BattleOptionCopyWithImpl<_BattleOption>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleOption&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi);
}

@override
String toString() {
    return 'BattleOption(id: $id, topic: $topic, en: $en, vi: $vi)';
}


}

/// @nodoc
abstract mixin class _$BattleOptionCopyWith<$Res> implements $BattleOptionCopyWith<$Res> {
  factory _$BattleOptionCopyWith(_BattleOption value, $Res Function(_BattleOption) _then) = __$BattleOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String topic, String en, String vi
});




}
/// @nodoc
class __$BattleOptionCopyWithImpl<$Res>
    implements _$BattleOptionCopyWith<$Res> {
  __$BattleOptionCopyWithImpl(this._self, this._then);

  final _BattleOption _self;
  final $Res Function(_BattleOption) _then;

/// Create a copy of BattleOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,}) {
  return _then(_BattleOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

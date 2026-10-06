// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_option_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleOptionData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'vi') String? get vi;
/// Create a copy of BattleOptionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleOptionDataCopyWith<BattleOptionData> get copyWith => _$BattleOptionDataCopyWithImpl<BattleOptionData>(this as BattleOptionData, _$identity);

  /// Serializes this BattleOptionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BattleOptionData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleOptionData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BattleOptionData;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi);
}

@override
String toString() {
  final _this = this as BattleOptionData;
  return 'BattleOptionData(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi})';
}


}

/// @nodoc
abstract mixin class $BattleOptionDataCopyWith<$Res>  {
  factory $BattleOptionDataCopyWith(BattleOptionData value, $Res Function(BattleOptionData) _then) = _$BattleOptionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi
});




}
/// @nodoc
class _$BattleOptionDataCopyWithImpl<$Res>
    implements $BattleOptionDataCopyWith<$Res> {
  _$BattleOptionDataCopyWithImpl(this._self, this._then);

  final BattleOptionData _self;
  final $Res Function(BattleOptionData) _then;

/// Create a copy of BattleOptionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,}) {
  return _then(BattleOptionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleOptionData].
extension BattleOptionDataPatterns on BattleOptionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleOptionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleOptionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleOptionData value)  $default,){
final _that = this;
switch (_that) {
case _BattleOptionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleOptionData value)?  $default,){
final _that = this;
switch (_that) {
case _BattleOptionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleOptionData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)  $default,) {final _that = this;
switch (_that) {
case _BattleOptionData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)?  $default,) {final _that = this;
switch (_that) {
case _BattleOptionData() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleOptionData extends BattleOptionData {
  const _BattleOptionData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'en') this.en, @JsonKey(name: 'vi') this.vi}): super._();
  factory _BattleOptionData.fromJson(Map<String, dynamic> json) => _$BattleOptionDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'vi') final  String? vi;

/// Create a copy of BattleOptionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleOptionDataCopyWith<_BattleOptionData> get copyWith => __$BattleOptionDataCopyWithImpl<_BattleOptionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleOptionDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleOptionData&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi);
}

@override
String toString() {
    return 'BattleOptionData(id: $id, topic: $topic, en: $en, vi: $vi)';
}


}

/// @nodoc
abstract mixin class _$BattleOptionDataCopyWith<$Res> implements $BattleOptionDataCopyWith<$Res> {
  factory _$BattleOptionDataCopyWith(_BattleOptionData value, $Res Function(_BattleOptionData) _then) = __$BattleOptionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi
});




}
/// @nodoc
class __$BattleOptionDataCopyWithImpl<$Res>
    implements _$BattleOptionDataCopyWith<$Res> {
  __$BattleOptionDataCopyWithImpl(this._self, this._then);

  final _BattleOptionData _self;
  final $Res Function(_BattleOptionData) _then;

/// Create a copy of BattleOptionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,}) {
  return _then(_BattleOptionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

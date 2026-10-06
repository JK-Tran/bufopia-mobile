// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleQuestionData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'options') List<BattleOptionData>? get options;
/// Create a copy of BattleQuestionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleQuestionDataCopyWith<BattleQuestionData> get copyWith => _$BattleQuestionDataCopyWithImpl<BattleQuestionData>(this as BattleQuestionData, _$identity);

  /// Serializes this BattleQuestionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BattleQuestionData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleQuestionData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BattleQuestionData;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as BattleQuestionData;
  return 'BattleQuestionData(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $BattleQuestionDataCopyWith<$Res>  {
  factory $BattleQuestionDataCopyWith(BattleQuestionData value, $Res Function(BattleQuestionData) _then) = _$BattleQuestionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'options') List<BattleOptionData>? options
});




}
/// @nodoc
class _$BattleQuestionDataCopyWithImpl<$Res>
    implements $BattleQuestionDataCopyWith<$Res> {
  _$BattleQuestionDataCopyWithImpl(this._self, this._then);

  final BattleQuestionData _self;
  final $Res Function(BattleQuestionData) _then;

/// Create a copy of BattleQuestionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? options = freezed,}) {
  return _then(BattleQuestionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleQuestionData].
extension BattleQuestionDataPatterns on BattleQuestionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleQuestionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleQuestionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleQuestionData value)  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleQuestionData value)?  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionData>? options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleQuestionData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionData>? options)  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionData>? options)?  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionData() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleQuestionData extends BattleQuestionData {
  const _BattleQuestionData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'en') this.en, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'options')  List<BattleOptionData>? options}): _options = options,super._();
  factory _BattleQuestionData.fromJson(Map<String, dynamic> json) => _$BattleQuestionDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'vi') final  String? vi;
 final  List<BattleOptionData>? _options;
@override@JsonKey(name: 'options') List<BattleOptionData>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BattleQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleQuestionDataCopyWith<_BattleQuestionData> get copyWith => __$BattleQuestionDataCopyWithImpl<_BattleQuestionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleQuestionDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleQuestionData&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi)&&const DeepCollectionEquality().equals(other.options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'BattleQuestionData(id: $id, topic: $topic, en: $en, vi: $vi, options: $options)';
}


}

/// @nodoc
abstract mixin class _$BattleQuestionDataCopyWith<$Res> implements $BattleQuestionDataCopyWith<$Res> {
  factory _$BattleQuestionDataCopyWith(_BattleQuestionData value, $Res Function(_BattleQuestionData) _then) = __$BattleQuestionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'options') List<BattleOptionData>? options
});




}
/// @nodoc
class __$BattleQuestionDataCopyWithImpl<$Res>
    implements _$BattleQuestionDataCopyWith<$Res> {
  __$BattleQuestionDataCopyWithImpl(this._self, this._then);

  final _BattleQuestionData _self;
  final $Res Function(_BattleQuestionData) _then;

/// Create a copy of BattleQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? options = freezed,}) {
  return _then(_BattleQuestionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionData>?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordInfoData {

@JsonKey(name: 'index') int? get index;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'masked') String? get masked;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'length') int? get length;@JsonKey(name: 'revealedCount') int? get revealedCount;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'example') String? get example;
/// Create a copy of WordInfoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordInfoDataCopyWith<WordInfoData> get copyWith => _$WordInfoDataCopyWithImpl<WordInfoData>(this as WordInfoData, _$identity);

  /// Serializes this WordInfoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordInfoData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordInfoData&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.masked, _this.masked) || other.masked == _this.masked)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.length, _this.length) || other.length == _this.length)&&(identical(other.revealedCount, _this.revealedCount) || other.revealedCount == _this.revealedCount)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.example, _this.example) || other.example == _this.example));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordInfoData;
  return Object.hash(runtimeType,_this.index,_this.topic,_this.masked,_this.vi,_this.phonetic,_this.length,_this.revealedCount,_this.en,_this.example);
}

@override
String toString() {
  final _this = this as WordInfoData;
  return 'WordInfoData(index: ${_this.index}, topic: ${_this.topic}, masked: ${_this.masked}, vi: ${_this.vi}, phonetic: ${_this.phonetic}, length: ${_this.length}, revealedCount: ${_this.revealedCount}, en: ${_this.en}, example: ${_this.example})';
}


}

/// @nodoc
abstract mixin class $WordInfoDataCopyWith<$Res>  {
  factory $WordInfoDataCopyWith(WordInfoData value, $Res Function(WordInfoData) _then) = _$WordInfoDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'index') int? index,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'masked') String? masked,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'length') int? length,@JsonKey(name: 'revealedCount') int? revealedCount,@JsonKey(name: 'en') String? en,@JsonKey(name: 'example') String? example
});




}
/// @nodoc
class _$WordInfoDataCopyWithImpl<$Res>
    implements $WordInfoDataCopyWith<$Res> {
  _$WordInfoDataCopyWithImpl(this._self, this._then);

  final WordInfoData _self;
  final $Res Function(WordInfoData) _then;

/// Create a copy of WordInfoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = freezed,Object? topic = freezed,Object? masked = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? length = freezed,Object? revealedCount = freezed,Object? en = freezed,Object? example = freezed,}) {
  return _then(WordInfoData(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,masked: freezed == masked ? _self.masked : masked // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,revealedCount: freezed == revealedCount ? _self.revealedCount : revealedCount // ignore: cast_nullable_to_non_nullable
as int?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordInfoData].
extension WordInfoDataPatterns on WordInfoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordInfoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordInfoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordInfoData value)  $default,){
final _that = this;
switch (_that) {
case _WordInfoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordInfoData value)?  $default,){
final _that = this;
switch (_that) {
case _WordInfoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'masked')  String? masked, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'length')  int? length, @JsonKey(name: 'revealedCount')  int? revealedCount, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'example')  String? example)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordInfoData() when $default != null:
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'masked')  String? masked, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'length')  int? length, @JsonKey(name: 'revealedCount')  int? revealedCount, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'example')  String? example)  $default,) {final _that = this;
switch (_that) {
case _WordInfoData():
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'masked')  String? masked, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'length')  int? length, @JsonKey(name: 'revealedCount')  int? revealedCount, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'example')  String? example)?  $default,) {final _that = this;
switch (_that) {
case _WordInfoData() when $default != null:
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordInfoData extends WordInfoData {
  const _WordInfoData({@JsonKey(name: 'index') this.index, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'masked') this.masked, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'length') this.length, @JsonKey(name: 'revealedCount') this.revealedCount, @JsonKey(name: 'en') this.en, @JsonKey(name: 'example') this.example}): super._();
  factory _WordInfoData.fromJson(Map<String, dynamic> json) => _$WordInfoDataFromJson(json);

@override@JsonKey(name: 'index') final  int? index;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'masked') final  String? masked;
@override@JsonKey(name: 'vi') final  String? vi;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'length') final  int? length;
@override@JsonKey(name: 'revealedCount') final  int? revealedCount;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'example') final  String? example;

/// Create a copy of WordInfoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordInfoDataCopyWith<_WordInfoData> get copyWith => __$WordInfoDataCopyWithImpl<_WordInfoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordInfoDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordInfoData&&(identical(other.index, index) || other.index == index)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.masked, masked) || other.masked == masked)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.length, length) || other.length == length)&&(identical(other.revealedCount, revealedCount) || other.revealedCount == revealedCount)&&(identical(other.en, en) || other.en == en)&&(identical(other.example, example) || other.example == example));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,topic,masked,vi,phonetic,length,revealedCount,en,example);
}

@override
String toString() {
    return 'WordInfoData(index: $index, topic: $topic, masked: $masked, vi: $vi, phonetic: $phonetic, length: $length, revealedCount: $revealedCount, en: $en, example: $example)';
}


}

/// @nodoc
abstract mixin class _$WordInfoDataCopyWith<$Res> implements $WordInfoDataCopyWith<$Res> {
  factory _$WordInfoDataCopyWith(_WordInfoData value, $Res Function(_WordInfoData) _then) = __$WordInfoDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'index') int? index,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'masked') String? masked,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'length') int? length,@JsonKey(name: 'revealedCount') int? revealedCount,@JsonKey(name: 'en') String? en,@JsonKey(name: 'example') String? example
});




}
/// @nodoc
class __$WordInfoDataCopyWithImpl<$Res>
    implements _$WordInfoDataCopyWith<$Res> {
  __$WordInfoDataCopyWithImpl(this._self, this._then);

  final _WordInfoData _self;
  final $Res Function(_WordInfoData) _then;

/// Create a copy of WordInfoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = freezed,Object? topic = freezed,Object? masked = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? length = freezed,Object? revealedCount = freezed,Object? en = freezed,Object? example = freezed,}) {
  return _then(_WordInfoData(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,masked: freezed == masked ? _self.masked : masked // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int?,revealedCount: freezed == revealedCount ? _self.revealedCount : revealedCount // ignore: cast_nullable_to_non_nullable
as int?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

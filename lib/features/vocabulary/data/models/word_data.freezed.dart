// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'partOfSpeech') String? get partOfSpeech;@JsonKey(name: 'example') String? get example;@JsonKey(name: 'exampleVi') String? get exampleVi;
/// Create a copy of WordData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordDataCopyWith<WordData> get copyWith => _$WordDataCopyWithImpl<WordData>(this as WordData, _$identity);

  /// Serializes this WordData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.exampleVi, _this.exampleVi) || other.exampleVi == _this.exampleVi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordData;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi,_this.phonetic,_this.partOfSpeech,_this.example,_this.exampleVi);
}

@override
String toString() {
  final _this = this as WordData;
  return 'WordData(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi}, phonetic: ${_this.phonetic}, partOfSpeech: ${_this.partOfSpeech}, example: ${_this.example}, exampleVi: ${_this.exampleVi})';
}


}

/// @nodoc
abstract mixin class $WordDataCopyWith<$Res>  {
  factory $WordDataCopyWith(WordData value, $Res Function(WordData) _then) = _$WordDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'example') String? example,@JsonKey(name: 'exampleVi') String? exampleVi
});




}
/// @nodoc
class _$WordDataCopyWithImpl<$Res>
    implements $WordDataCopyWith<$Res> {
  _$WordDataCopyWithImpl(this._self, this._then);

  final WordData _self;
  final $Res Function(WordData) _then;

/// Create a copy of WordData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? example = freezed,Object? exampleVi = freezed,}) {
  return _then(WordData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordData].
extension WordDataPatterns on WordData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordData value)  $default,){
final _that = this;
switch (_that) {
case _WordData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordData value)?  $default,){
final _that = this;
switch (_that) {
case _WordData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleVi')  String? exampleVi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordData() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.phonetic,_that.partOfSpeech,_that.example,_that.exampleVi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleVi')  String? exampleVi)  $default,) {final _that = this;
switch (_that) {
case _WordData():
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.phonetic,_that.partOfSpeech,_that.example,_that.exampleVi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleVi')  String? exampleVi)?  $default,) {final _that = this;
switch (_that) {
case _WordData() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.phonetic,_that.partOfSpeech,_that.example,_that.exampleVi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordData extends WordData {
  const _WordData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'en') this.en, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'partOfSpeech') this.partOfSpeech, @JsonKey(name: 'example') this.example, @JsonKey(name: 'exampleVi') this.exampleVi}): super._();
  factory _WordData.fromJson(Map<String, dynamic> json) => _$WordDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'vi') final  String? vi;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'partOfSpeech') final  String? partOfSpeech;
@override@JsonKey(name: 'example') final  String? example;
@override@JsonKey(name: 'exampleVi') final  String? exampleVi;

/// Create a copy of WordData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordDataCopyWith<_WordData> get copyWith => __$WordDataCopyWithImpl<_WordData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordData&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.example, example) || other.example == example)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi,phonetic,partOfSpeech,example,exampleVi);
}

@override
String toString() {
    return 'WordData(id: $id, topic: $topic, en: $en, vi: $vi, phonetic: $phonetic, partOfSpeech: $partOfSpeech, example: $example, exampleVi: $exampleVi)';
}


}

/// @nodoc
abstract mixin class _$WordDataCopyWith<$Res> implements $WordDataCopyWith<$Res> {
  factory _$WordDataCopyWith(_WordData value, $Res Function(_WordData) _then) = __$WordDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'example') String? example,@JsonKey(name: 'exampleVi') String? exampleVi
});




}
/// @nodoc
class __$WordDataCopyWithImpl<$Res>
    implements _$WordDataCopyWith<$Res> {
  __$WordDataCopyWithImpl(this._self, this._then);

  final _WordData _self;
  final $Res Function(_WordData) _then;

/// Create a copy of WordData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? example = freezed,Object? exampleVi = freezed,}) {
  return _then(_WordData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

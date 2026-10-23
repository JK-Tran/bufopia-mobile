// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DictionaryDetailData {

@JsonKey(name: 'valid') bool? get valid;@JsonKey(name: 'word') String? get word;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'partOfSpeech') String? get partOfSpeech;@JsonKey(name: 'meaning') String? get meaning;@JsonKey(name: 'example') String? get example;@JsonKey(name: 'exampleTranslation') String? get exampleTranslation;
/// Create a copy of DictionaryDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryDetailDataCopyWith<DictionaryDetailData> get copyWith => _$DictionaryDetailDataCopyWithImpl<DictionaryDetailData>(this as DictionaryDetailData, _$identity);

  /// Serializes this DictionaryDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DictionaryDetailData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryDetailData&&(identical(other.valid, _this.valid) || other.valid == _this.valid)&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.meaning, _this.meaning) || other.meaning == _this.meaning)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.exampleTranslation, _this.exampleTranslation) || other.exampleTranslation == _this.exampleTranslation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DictionaryDetailData;
  return Object.hash(runtimeType,_this.valid,_this.word,_this.phonetic,_this.partOfSpeech,_this.meaning,_this.example,_this.exampleTranslation);
}

@override
String toString() {
  final _this = this as DictionaryDetailData;
  return 'DictionaryDetailData(valid: ${_this.valid}, word: ${_this.word}, phonetic: ${_this.phonetic}, partOfSpeech: ${_this.partOfSpeech}, meaning: ${_this.meaning}, example: ${_this.example}, exampleTranslation: ${_this.exampleTranslation})';
}


}

/// @nodoc
abstract mixin class $DictionaryDetailDataCopyWith<$Res>  {
  factory $DictionaryDetailDataCopyWith(DictionaryDetailData value, $Res Function(DictionaryDetailData) _then) = _$DictionaryDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'valid') bool? valid,@JsonKey(name: 'word') String? word,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'meaning') String? meaning,@JsonKey(name: 'example') String? example,@JsonKey(name: 'exampleTranslation') String? exampleTranslation
});




}
/// @nodoc
class _$DictionaryDetailDataCopyWithImpl<$Res>
    implements $DictionaryDetailDataCopyWith<$Res> {
  _$DictionaryDetailDataCopyWithImpl(this._self, this._then);

  final DictionaryDetailData _self;
  final $Res Function(DictionaryDetailData) _then;

/// Create a copy of DictionaryDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? valid = freezed,Object? word = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? meaning = freezed,Object? example = freezed,Object? exampleTranslation = freezed,}) {
  return _then(DictionaryDetailData(
valid: freezed == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool?,word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,exampleTranslation: freezed == exampleTranslation ? _self.exampleTranslation : exampleTranslation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DictionaryDetailData].
extension DictionaryDetailDataPatterns on DictionaryDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DictionaryDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DictionaryDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DictionaryDetailData value)  $default,){
final _that = this;
switch (_that) {
case _DictionaryDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DictionaryDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _DictionaryDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleTranslation')  String? exampleTranslation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DictionaryDetailData() when $default != null:
return $default(_that.valid,_that.word,_that.phonetic,_that.partOfSpeech,_that.meaning,_that.example,_that.exampleTranslation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleTranslation')  String? exampleTranslation)  $default,) {final _that = this;
switch (_that) {
case _DictionaryDetailData():
return $default(_that.valid,_that.word,_that.phonetic,_that.partOfSpeech,_that.meaning,_that.example,_that.exampleTranslation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'exampleTranslation')  String? exampleTranslation)?  $default,) {final _that = this;
switch (_that) {
case _DictionaryDetailData() when $default != null:
return $default(_that.valid,_that.word,_that.phonetic,_that.partOfSpeech,_that.meaning,_that.example,_that.exampleTranslation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DictionaryDetailData extends DictionaryDetailData {
  const _DictionaryDetailData({@JsonKey(name: 'valid') this.valid, @JsonKey(name: 'word') this.word, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'partOfSpeech') this.partOfSpeech, @JsonKey(name: 'meaning') this.meaning, @JsonKey(name: 'example') this.example, @JsonKey(name: 'exampleTranslation') this.exampleTranslation}): super._();
  factory _DictionaryDetailData.fromJson(Map<String, dynamic> json) => _$DictionaryDetailDataFromJson(json);

@override@JsonKey(name: 'valid') final  bool? valid;
@override@JsonKey(name: 'word') final  String? word;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'partOfSpeech') final  String? partOfSpeech;
@override@JsonKey(name: 'meaning') final  String? meaning;
@override@JsonKey(name: 'example') final  String? example;
@override@JsonKey(name: 'exampleTranslation') final  String? exampleTranslation;

/// Create a copy of DictionaryDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryDetailDataCopyWith<_DictionaryDetailData> get copyWith => __$DictionaryDetailDataCopyWithImpl<_DictionaryDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DictionaryDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryDetailData&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.word, word) || other.word == word)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.example, example) || other.example == example)&&(identical(other.exampleTranslation, exampleTranslation) || other.exampleTranslation == exampleTranslation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,valid,word,phonetic,partOfSpeech,meaning,example,exampleTranslation);
}

@override
String toString() {
    return 'DictionaryDetailData(valid: $valid, word: $word, phonetic: $phonetic, partOfSpeech: $partOfSpeech, meaning: $meaning, example: $example, exampleTranslation: $exampleTranslation)';
}


}

/// @nodoc
abstract mixin class _$DictionaryDetailDataCopyWith<$Res> implements $DictionaryDetailDataCopyWith<$Res> {
  factory _$DictionaryDetailDataCopyWith(_DictionaryDetailData value, $Res Function(_DictionaryDetailData) _then) = __$DictionaryDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'valid') bool? valid,@JsonKey(name: 'word') String? word,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'meaning') String? meaning,@JsonKey(name: 'example') String? example,@JsonKey(name: 'exampleTranslation') String? exampleTranslation
});




}
/// @nodoc
class __$DictionaryDetailDataCopyWithImpl<$Res>
    implements _$DictionaryDetailDataCopyWith<$Res> {
  __$DictionaryDetailDataCopyWithImpl(this._self, this._then);

  final _DictionaryDetailData _self;
  final $Res Function(_DictionaryDetailData) _then;

/// Create a copy of DictionaryDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? valid = freezed,Object? word = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? meaning = freezed,Object? example = freezed,Object? exampleTranslation = freezed,}) {
  return _then(_DictionaryDetailData(
valid: freezed == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool?,word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,exampleTranslation: freezed == exampleTranslation ? _self.exampleTranslation : exampleTranslation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

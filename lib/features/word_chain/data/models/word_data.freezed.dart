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

@JsonKey(name: 'word') String get word;@JsonKey(name: 'valid') bool? get valid;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'partOfSpeech') String? get partOfSpeech;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'definition') String? get definition;@JsonKey(name: 'example') String? get example;@JsonKey(name: 'audio') String? get audio;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordData&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.valid, _this.valid) || other.valid == _this.valid)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.definition, _this.definition) || other.definition == _this.definition)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.audio, _this.audio) || other.audio == _this.audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordData;
  return Object.hash(runtimeType,_this.word,_this.valid,_this.phonetic,_this.partOfSpeech,_this.vi,_this.definition,_this.example,_this.audio);
}

@override
String toString() {
  final _this = this as WordData;
  return 'WordData(word: ${_this.word}, valid: ${_this.valid}, phonetic: ${_this.phonetic}, partOfSpeech: ${_this.partOfSpeech}, vi: ${_this.vi}, definition: ${_this.definition}, example: ${_this.example}, audio: ${_this.audio})';
}


}

/// @nodoc
abstract mixin class $WordDataCopyWith<$Res>  {
  factory $WordDataCopyWith(WordData value, $Res Function(WordData) _then) = _$WordDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word') String word,@JsonKey(name: 'valid') bool? valid,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'definition') String? definition,@JsonKey(name: 'example') String? example,@JsonKey(name: 'audio') String? audio
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
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? valid = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? vi = freezed,Object? definition = freezed,Object? example = freezed,Object? audio = freezed,}) {
  return _then(WordData(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,valid: freezed == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String word, @JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'definition')  String? definition, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'audio')  String? audio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordData() when $default != null:
return $default(_that.word,_that.valid,_that.phonetic,_that.partOfSpeech,_that.vi,_that.definition,_that.example,_that.audio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String word, @JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'definition')  String? definition, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'audio')  String? audio)  $default,) {final _that = this;
switch (_that) {
case _WordData():
return $default(_that.word,_that.valid,_that.phonetic,_that.partOfSpeech,_that.vi,_that.definition,_that.example,_that.audio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word')  String word, @JsonKey(name: 'valid')  bool? valid, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'partOfSpeech')  String? partOfSpeech, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'definition')  String? definition, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'audio')  String? audio)?  $default,) {final _that = this;
switch (_that) {
case _WordData() when $default != null:
return $default(_that.word,_that.valid,_that.phonetic,_that.partOfSpeech,_that.vi,_that.definition,_that.example,_that.audio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordData extends WordData {
  const _WordData({@JsonKey(name: 'word') required this.word, @JsonKey(name: 'valid') this.valid, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'partOfSpeech') this.partOfSpeech, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'definition') this.definition, @JsonKey(name: 'example') this.example, @JsonKey(name: 'audio') this.audio}): super._();
  factory _WordData.fromJson(Map<String, dynamic> json) => _$WordDataFromJson(json);

@override@JsonKey(name: 'word') final  String word;
@override@JsonKey(name: 'valid') final  bool? valid;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'partOfSpeech') final  String? partOfSpeech;
@override@JsonKey(name: 'vi') final  String? vi;
@override@JsonKey(name: 'definition') final  String? definition;
@override@JsonKey(name: 'example') final  String? example;
@override@JsonKey(name: 'audio') final  String? audio;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordData&&(identical(other.word, word) || other.word == word)&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.example, example) || other.example == example)&&(identical(other.audio, audio) || other.audio == audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,word,valid,phonetic,partOfSpeech,vi,definition,example,audio);
}

@override
String toString() {
    return 'WordData(word: $word, valid: $valid, phonetic: $phonetic, partOfSpeech: $partOfSpeech, vi: $vi, definition: $definition, example: $example, audio: $audio)';
}


}

/// @nodoc
abstract mixin class _$WordDataCopyWith<$Res> implements $WordDataCopyWith<$Res> {
  factory _$WordDataCopyWith(_WordData value, $Res Function(_WordData) _then) = __$WordDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word') String word,@JsonKey(name: 'valid') bool? valid,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'partOfSpeech') String? partOfSpeech,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'definition') String? definition,@JsonKey(name: 'example') String? example,@JsonKey(name: 'audio') String? audio
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
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? valid = freezed,Object? phonetic = freezed,Object? partOfSpeech = freezed,Object? vi = freezed,Object? definition = freezed,Object? example = freezed,Object? audio = freezed,}) {
  return _then(_WordData(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,valid: freezed == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionaryDetail {

 bool get valid; String get word; String get phonetic; String get partOfSpeech; String get meaning; String get example; String get exampleTranslation;
/// Create a copy of DictionaryDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryDetailCopyWith<DictionaryDetail> get copyWith => _$DictionaryDetailCopyWithImpl<DictionaryDetail>(this as DictionaryDetail, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DictionaryDetail;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryDetail&&(identical(other.valid, _this.valid) || other.valid == _this.valid)&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.meaning, _this.meaning) || other.meaning == _this.meaning)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.exampleTranslation, _this.exampleTranslation) || other.exampleTranslation == _this.exampleTranslation));
}


@override
int get hashCode {
  final _this = this as DictionaryDetail;
  return Object.hash(runtimeType,_this.valid,_this.word,_this.phonetic,_this.partOfSpeech,_this.meaning,_this.example,_this.exampleTranslation);
}

@override
String toString() {
  final _this = this as DictionaryDetail;
  return 'DictionaryDetail(valid: ${_this.valid}, word: ${_this.word}, phonetic: ${_this.phonetic}, partOfSpeech: ${_this.partOfSpeech}, meaning: ${_this.meaning}, example: ${_this.example}, exampleTranslation: ${_this.exampleTranslation})';
}


}

/// @nodoc
abstract mixin class $DictionaryDetailCopyWith<$Res>  {
  factory $DictionaryDetailCopyWith(DictionaryDetail value, $Res Function(DictionaryDetail) _then) = _$DictionaryDetailCopyWithImpl;
@useResult
$Res call({
 bool valid, String word, String phonetic, String partOfSpeech, String meaning, String example, String exampleTranslation
});




}
/// @nodoc
class _$DictionaryDetailCopyWithImpl<$Res>
    implements $DictionaryDetailCopyWith<$Res> {
  _$DictionaryDetailCopyWithImpl(this._self, this._then);

  final DictionaryDetail _self;
  final $Res Function(DictionaryDetail) _then;

/// Create a copy of DictionaryDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? valid = null,Object? word = null,Object? phonetic = null,Object? partOfSpeech = null,Object? meaning = null,Object? example = null,Object? exampleTranslation = null,}) {
  return _then(DictionaryDetail(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,partOfSpeech: null == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,exampleTranslation: null == exampleTranslation ? _self.exampleTranslation : exampleTranslation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DictionaryDetail].
extension DictionaryDetailPatterns on DictionaryDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DictionaryDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DictionaryDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DictionaryDetail value)  $default,){
final _that = this;
switch (_that) {
case _DictionaryDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DictionaryDetail value)?  $default,){
final _that = this;
switch (_that) {
case _DictionaryDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool valid,  String word,  String phonetic,  String partOfSpeech,  String meaning,  String example,  String exampleTranslation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DictionaryDetail() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool valid,  String word,  String phonetic,  String partOfSpeech,  String meaning,  String example,  String exampleTranslation)  $default,) {final _that = this;
switch (_that) {
case _DictionaryDetail():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool valid,  String word,  String phonetic,  String partOfSpeech,  String meaning,  String example,  String exampleTranslation)?  $default,) {final _that = this;
switch (_that) {
case _DictionaryDetail() when $default != null:
return $default(_that.valid,_that.word,_that.phonetic,_that.partOfSpeech,_that.meaning,_that.example,_that.exampleTranslation);case _:
  return null;

}
}

}

/// @nodoc


class _DictionaryDetail implements DictionaryDetail {
  const _DictionaryDetail({this.valid = false, this.word = '', this.phonetic = '', this.partOfSpeech = '', this.meaning = '', this.example = '', this.exampleTranslation = ''});
  

@override@JsonKey() final  bool valid;
@override@JsonKey() final  String word;
@override@JsonKey() final  String phonetic;
@override@JsonKey() final  String partOfSpeech;
@override@JsonKey() final  String meaning;
@override@JsonKey() final  String example;
@override@JsonKey() final  String exampleTranslation;

/// Create a copy of DictionaryDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryDetailCopyWith<_DictionaryDetail> get copyWith => __$DictionaryDetailCopyWithImpl<_DictionaryDetail>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryDetail&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.word, word) || other.word == word)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.example, example) || other.example == example)&&(identical(other.exampleTranslation, exampleTranslation) || other.exampleTranslation == exampleTranslation));
}


@override
int get hashCode {
    return Object.hash(runtimeType,valid,word,phonetic,partOfSpeech,meaning,example,exampleTranslation);
}

@override
String toString() {
    return 'DictionaryDetail(valid: $valid, word: $word, phonetic: $phonetic, partOfSpeech: $partOfSpeech, meaning: $meaning, example: $example, exampleTranslation: $exampleTranslation)';
}


}

/// @nodoc
abstract mixin class _$DictionaryDetailCopyWith<$Res> implements $DictionaryDetailCopyWith<$Res> {
  factory _$DictionaryDetailCopyWith(_DictionaryDetail value, $Res Function(_DictionaryDetail) _then) = __$DictionaryDetailCopyWithImpl;
@override @useResult
$Res call({
 bool valid, String word, String phonetic, String partOfSpeech, String meaning, String example, String exampleTranslation
});




}
/// @nodoc
class __$DictionaryDetailCopyWithImpl<$Res>
    implements _$DictionaryDetailCopyWith<$Res> {
  __$DictionaryDetailCopyWithImpl(this._self, this._then);

  final _DictionaryDetail _self;
  final $Res Function(_DictionaryDetail) _then;

/// Create a copy of DictionaryDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? valid = null,Object? word = null,Object? phonetic = null,Object? partOfSpeech = null,Object? meaning = null,Object? example = null,Object? exampleTranslation = null,}) {
  return _then(_DictionaryDetail(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,partOfSpeech: null == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,exampleTranslation: null == exampleTranslation ? _self.exampleTranslation : exampleTranslation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

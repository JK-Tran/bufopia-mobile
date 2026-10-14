// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Word {

 bool get valid; String get word; String? get phonetic; String? get audio; String? get partOfSpeech; String? get definition; String? get example; String? get vi; String? get source;
/// Create a copy of Word
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordCopyWith<Word> get copyWith => _$WordCopyWithImpl<Word>(this as Word, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Word;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Word&&(identical(other.valid, _this.valid) || other.valid == _this.valid)&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.audio, _this.audio) || other.audio == _this.audio)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.definition, _this.definition) || other.definition == _this.definition)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.source, _this.source) || other.source == _this.source));
}


@override
int get hashCode {
  final _this = this as Word;
  return Object.hash(runtimeType,_this.valid,_this.word,_this.phonetic,_this.audio,_this.partOfSpeech,_this.definition,_this.example,_this.vi,_this.source);
}

@override
String toString() {
  final _this = this as Word;
  return 'Word(valid: ${_this.valid}, word: ${_this.word}, phonetic: ${_this.phonetic}, audio: ${_this.audio}, partOfSpeech: ${_this.partOfSpeech}, definition: ${_this.definition}, example: ${_this.example}, vi: ${_this.vi}, source: ${_this.source})';
}


}

/// @nodoc
abstract mixin class $WordCopyWith<$Res>  {
  factory $WordCopyWith(Word value, $Res Function(Word) _then) = _$WordCopyWithImpl;
@useResult
$Res call({
 bool valid, String word, String? phonetic, String? audio, String? partOfSpeech, String? definition, String? example, String? vi, String? source
});




}
/// @nodoc
class _$WordCopyWithImpl<$Res>
    implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._self, this._then);

  final Word _self;
  final $Res Function(Word) _then;

/// Create a copy of Word
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? valid = null,Object? word = null,Object? phonetic = freezed,Object? audio = freezed,Object? partOfSpeech = freezed,Object? definition = freezed,Object? example = freezed,Object? vi = freezed,Object? source = freezed,}) {
  return _then(Word(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Word].
extension WordPatterns on Word {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Word value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Word() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Word value)  $default,){
final _that = this;
switch (_that) {
case _Word():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Word value)?  $default,){
final _that = this;
switch (_that) {
case _Word() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool valid,  String word,  String? phonetic,  String? audio,  String? partOfSpeech,  String? definition,  String? example,  String? vi,  String? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Word() when $default != null:
return $default(_that.valid,_that.word,_that.phonetic,_that.audio,_that.partOfSpeech,_that.definition,_that.example,_that.vi,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool valid,  String word,  String? phonetic,  String? audio,  String? partOfSpeech,  String? definition,  String? example,  String? vi,  String? source)  $default,) {final _that = this;
switch (_that) {
case _Word():
return $default(_that.valid,_that.word,_that.phonetic,_that.audio,_that.partOfSpeech,_that.definition,_that.example,_that.vi,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool valid,  String word,  String? phonetic,  String? audio,  String? partOfSpeech,  String? definition,  String? example,  String? vi,  String? source)?  $default,) {final _that = this;
switch (_that) {
case _Word() when $default != null:
return $default(_that.valid,_that.word,_that.phonetic,_that.audio,_that.partOfSpeech,_that.definition,_that.example,_that.vi,_that.source);case _:
  return null;

}
}

}

/// @nodoc


class _Word implements Word {
  const _Word({this.valid = false, this.word = '', this.phonetic, this.audio, this.partOfSpeech, this.definition, this.example, this.vi, this.source});
  

@override@JsonKey() final  bool valid;
@override@JsonKey() final  String word;
@override final  String? phonetic;
@override final  String? audio;
@override final  String? partOfSpeech;
@override final  String? definition;
@override final  String? example;
@override final  String? vi;
@override final  String? source;

/// Create a copy of Word
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordCopyWith<_Word> get copyWith => __$WordCopyWithImpl<_Word>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Word&&(identical(other.valid, valid) || other.valid == valid)&&(identical(other.word, word) || other.word == word)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.example, example) || other.example == example)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode {
    return Object.hash(runtimeType,valid,word,phonetic,audio,partOfSpeech,definition,example,vi,source);
}

@override
String toString() {
    return 'Word(valid: $valid, word: $word, phonetic: $phonetic, audio: $audio, partOfSpeech: $partOfSpeech, definition: $definition, example: $example, vi: $vi, source: $source)';
}


}

/// @nodoc
abstract mixin class _$WordCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$WordCopyWith(_Word value, $Res Function(_Word) _then) = __$WordCopyWithImpl;
@override @useResult
$Res call({
 bool valid, String word, String? phonetic, String? audio, String? partOfSpeech, String? definition, String? example, String? vi, String? source
});




}
/// @nodoc
class __$WordCopyWithImpl<$Res>
    implements _$WordCopyWith<$Res> {
  __$WordCopyWithImpl(this._self, this._then);

  final _Word _self;
  final $Res Function(_Word) _then;

/// Create a copy of Word
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? valid = null,Object? word = null,Object? phonetic = freezed,Object? audio = freezed,Object? partOfSpeech = freezed,Object? definition = freezed,Object? example = freezed,Object? vi = freezed,Object? source = freezed,}) {
  return _then(_Word(
valid: null == valid ? _self.valid : valid // ignore: cast_nullable_to_non_nullable
as bool,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

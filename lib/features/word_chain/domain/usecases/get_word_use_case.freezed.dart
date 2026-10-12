// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_word_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetWordInput {

 String get word; String get lexicon; int get details; String get lang;
/// Create a copy of GetWordInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWordInputCopyWith<GetWordInput> get copyWith => _$GetWordInputCopyWithImpl<GetWordInput>(this as GetWordInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWordInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWordInput&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.lexicon, _this.lexicon) || other.lexicon == _this.lexicon)&&(identical(other.details, _this.details) || other.details == _this.details)&&(identical(other.lang, _this.lang) || other.lang == _this.lang));
}


@override
int get hashCode {
  final _this = this as GetWordInput;
  return Object.hash(runtimeType,_this.word,_this.lexicon,_this.details,_this.lang);
}

@override
String toString() {
  final _this = this as GetWordInput;
  return 'GetWordInput(word: ${_this.word}, lexicon: ${_this.lexicon}, details: ${_this.details}, lang: ${_this.lang})';
}


}

/// @nodoc
abstract mixin class $GetWordInputCopyWith<$Res>  {
  factory $GetWordInputCopyWith(GetWordInput value, $Res Function(GetWordInput) _then) = _$GetWordInputCopyWithImpl;
@useResult
$Res call({
 String word, String lexicon, int details, String lang
});




}
/// @nodoc
class _$GetWordInputCopyWithImpl<$Res>
    implements $GetWordInputCopyWith<$Res> {
  _$GetWordInputCopyWithImpl(this._self, this._then);

  final GetWordInput _self;
  final $Res Function(GetWordInput) _then;

/// Create a copy of GetWordInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? lexicon = null,Object? details = null,Object? lang = null,}) {
  return _then(GetWordInput(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,lexicon: null == lexicon ? _self.lexicon : lexicon // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWordInput].
extension GetWordInputPatterns on GetWordInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWordInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWordInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWordInput value)  $default,){
final _that = this;
switch (_that) {
case _GetWordInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWordInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWordInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  String lexicon,  int details,  String lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWordInput() when $default != null:
return $default(_that.word,_that.lexicon,_that.details,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  String lexicon,  int details,  String lang)  $default,) {final _that = this;
switch (_that) {
case _GetWordInput():
return $default(_that.word,_that.lexicon,_that.details,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  String lexicon,  int details,  String lang)?  $default,) {final _that = this;
switch (_that) {
case _GetWordInput() when $default != null:
return $default(_that.word,_that.lexicon,_that.details,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _GetWordInput extends GetWordInput {
  const _GetWordInput({required this.word, this.lexicon = 'chain-v3', this.details = 1, this.lang = 'en'}): super._();
  

@override final  String word;
@override@JsonKey() final  String lexicon;
@override@JsonKey() final  int details;
@override@JsonKey() final  String lang;

/// Create a copy of GetWordInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWordInputCopyWith<_GetWordInput> get copyWith => __$GetWordInputCopyWithImpl<_GetWordInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWordInput&&(identical(other.word, word) || other.word == word)&&(identical(other.lexicon, lexicon) || other.lexicon == lexicon)&&(identical(other.details, details) || other.details == details)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word,lexicon,details,lang);
}

@override
String toString() {
    return 'GetWordInput(word: $word, lexicon: $lexicon, details: $details, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$GetWordInputCopyWith<$Res> implements $GetWordInputCopyWith<$Res> {
  factory _$GetWordInputCopyWith(_GetWordInput value, $Res Function(_GetWordInput) _then) = __$GetWordInputCopyWithImpl;
@override @useResult
$Res call({
 String word, String lexicon, int details, String lang
});




}
/// @nodoc
class __$GetWordInputCopyWithImpl<$Res>
    implements _$GetWordInputCopyWith<$Res> {
  __$GetWordInputCopyWithImpl(this._self, this._then);

  final _GetWordInput _self;
  final $Res Function(_GetWordInput) _then;

/// Create a copy of GetWordInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? lexicon = null,Object? details = null,Object? lang = null,}) {
  return _then(_GetWordInput(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,lexicon: null == lexicon ? _self.lexicon : lexicon // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as int,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetWordOutput {

 Word get word;
/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWordOutputCopyWith<GetWordOutput> get copyWith => _$GetWordOutputCopyWithImpl<GetWordOutput>(this as GetWordOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWordOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWordOutput&&(identical(other.word, _this.word) || other.word == _this.word));
}


@override
int get hashCode {
  final _this = this as GetWordOutput;
  return Object.hash(runtimeType,_this.word);
}

@override
String toString() {
  final _this = this as GetWordOutput;
  return 'GetWordOutput(word: ${_this.word})';
}


}

/// @nodoc
abstract mixin class $GetWordOutputCopyWith<$Res>  {
  factory $GetWordOutputCopyWith(GetWordOutput value, $Res Function(GetWordOutput) _then) = _$GetWordOutputCopyWithImpl;
@useResult
$Res call({
 Word word
});


$WordCopyWith<$Res> get word;

}
/// @nodoc
class _$GetWordOutputCopyWithImpl<$Res>
    implements $GetWordOutputCopyWith<$Res> {
  _$GetWordOutputCopyWithImpl(this._self, this._then);

  final GetWordOutput _self;
  final $Res Function(GetWordOutput) _then;

/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,}) {
  return _then(GetWordOutput(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as Word,
  ));
}
/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get word {
  
  return $WordCopyWith<$Res>(_self.word, (value) {
    return _then(_self.copyWith(word: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetWordOutput].
extension GetWordOutputPatterns on GetWordOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWordOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWordOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWordOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetWordOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWordOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWordOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Word word)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWordOutput() when $default != null:
return $default(_that.word);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Word word)  $default,) {final _that = this;
switch (_that) {
case _GetWordOutput():
return $default(_that.word);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Word word)?  $default,) {final _that = this;
switch (_that) {
case _GetWordOutput() when $default != null:
return $default(_that.word);case _:
  return null;

}
}

}

/// @nodoc


class _GetWordOutput extends GetWordOutput {
  const _GetWordOutput(this.word): super._();
  

@override final  Word word;

/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWordOutputCopyWith<_GetWordOutput> get copyWith => __$GetWordOutputCopyWithImpl<_GetWordOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWordOutput&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word);
}

@override
String toString() {
    return 'GetWordOutput(word: $word)';
}


}

/// @nodoc
abstract mixin class _$GetWordOutputCopyWith<$Res> implements $GetWordOutputCopyWith<$Res> {
  factory _$GetWordOutputCopyWith(_GetWordOutput value, $Res Function(_GetWordOutput) _then) = __$GetWordOutputCopyWithImpl;
@override @useResult
$Res call({
 Word word
});


@override $WordCopyWith<$Res> get word;

}
/// @nodoc
class __$GetWordOutputCopyWithImpl<$Res>
    implements _$GetWordOutputCopyWith<$Res> {
  __$GetWordOutputCopyWithImpl(this._self, this._then);

  final _GetWordOutput _self;
  final $Res Function(_GetWordOutput) _then;

/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(_GetWordOutput(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as Word,
  ));
}

/// Create a copy of GetWordOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get word {
  
  return $WordCopyWith<$Res>(_self.word, (value) {
    return _then(_self.copyWith(word: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bot_word_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBotWordInput {

 String get letter; List<String>? get exclude; String get lang;
/// Create a copy of GetBotWordInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBotWordInputCopyWith<GetBotWordInput> get copyWith => _$GetBotWordInputCopyWithImpl<GetBotWordInput>(this as GetBotWordInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetBotWordInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBotWordInput&&(identical(other.letter, _this.letter) || other.letter == _this.letter)&&const DeepCollectionEquality().equals(other.exclude, _this.exclude)&&(identical(other.lang, _this.lang) || other.lang == _this.lang));
}


@override
int get hashCode {
  final _this = this as GetBotWordInput;
  return Object.hash(runtimeType,_this.letter,const DeepCollectionEquality().hash(_this.exclude),_this.lang);
}

@override
String toString() {
  final _this = this as GetBotWordInput;
  return 'GetBotWordInput(letter: ${_this.letter}, exclude: ${_this.exclude}, lang: ${_this.lang})';
}


}

/// @nodoc
abstract mixin class $GetBotWordInputCopyWith<$Res>  {
  factory $GetBotWordInputCopyWith(GetBotWordInput value, $Res Function(GetBotWordInput) _then) = _$GetBotWordInputCopyWithImpl;
@useResult
$Res call({
 String letter, List<String>? exclude, String lang
});




}
/// @nodoc
class _$GetBotWordInputCopyWithImpl<$Res>
    implements $GetBotWordInputCopyWith<$Res> {
  _$GetBotWordInputCopyWithImpl(this._self, this._then);

  final GetBotWordInput _self;
  final $Res Function(GetBotWordInput) _then;

/// Create a copy of GetBotWordInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? letter = null,Object? exclude = freezed,Object? lang = null,}) {
  return _then(GetBotWordInput(
letter: null == letter ? _self.letter : letter // ignore: cast_nullable_to_non_nullable
as String,exclude: freezed == exclude ? _self.exclude : exclude // ignore: cast_nullable_to_non_nullable
as List<String>?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBotWordInput].
extension GetBotWordInputPatterns on GetBotWordInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBotWordInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBotWordInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBotWordInput value)  $default,){
final _that = this;
switch (_that) {
case _GetBotWordInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBotWordInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetBotWordInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String letter,  List<String>? exclude,  String lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBotWordInput() when $default != null:
return $default(_that.letter,_that.exclude,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String letter,  List<String>? exclude,  String lang)  $default,) {final _that = this;
switch (_that) {
case _GetBotWordInput():
return $default(_that.letter,_that.exclude,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String letter,  List<String>? exclude,  String lang)?  $default,) {final _that = this;
switch (_that) {
case _GetBotWordInput() when $default != null:
return $default(_that.letter,_that.exclude,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _GetBotWordInput extends GetBotWordInput {
  const _GetBotWordInput({required this.letter,  List<String>? exclude, this.lang = 'en'}): _exclude = exclude,super._();
  

@override final  String letter;
 final  List<String>? _exclude;
@override List<String>? get exclude {
  final value = _exclude;
  if (value == null) return null;
  if (_exclude is EqualUnmodifiableListView) return _exclude;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String lang;

/// Create a copy of GetBotWordInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBotWordInputCopyWith<_GetBotWordInput> get copyWith => __$GetBotWordInputCopyWithImpl<_GetBotWordInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBotWordInput&&(identical(other.letter, letter) || other.letter == letter)&&const DeepCollectionEquality().equals(other.exclude, _exclude)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode {
    return Object.hash(runtimeType,letter,const DeepCollectionEquality().hash(_exclude),lang);
}

@override
String toString() {
    return 'GetBotWordInput(letter: $letter, exclude: $exclude, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$GetBotWordInputCopyWith<$Res> implements $GetBotWordInputCopyWith<$Res> {
  factory _$GetBotWordInputCopyWith(_GetBotWordInput value, $Res Function(_GetBotWordInput) _then) = __$GetBotWordInputCopyWithImpl;
@override @useResult
$Res call({
 String letter, List<String>? exclude, String lang
});




}
/// @nodoc
class __$GetBotWordInputCopyWithImpl<$Res>
    implements _$GetBotWordInputCopyWith<$Res> {
  __$GetBotWordInputCopyWithImpl(this._self, this._then);

  final _GetBotWordInput _self;
  final $Res Function(_GetBotWordInput) _then;

/// Create a copy of GetBotWordInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? letter = null,Object? exclude = freezed,Object? lang = null,}) {
  return _then(_GetBotWordInput(
letter: null == letter ? _self.letter : letter // ignore: cast_nullable_to_non_nullable
as String,exclude: freezed == exclude ? _self._exclude : exclude // ignore: cast_nullable_to_non_nullable
as List<String>?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetBotWordOutput {

 Word get word;
/// Create a copy of GetBotWordOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBotWordOutputCopyWith<GetBotWordOutput> get copyWith => _$GetBotWordOutputCopyWithImpl<GetBotWordOutput>(this as GetBotWordOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetBotWordOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBotWordOutput&&(identical(other.word, _this.word) || other.word == _this.word));
}


@override
int get hashCode {
  final _this = this as GetBotWordOutput;
  return Object.hash(runtimeType,_this.word);
}

@override
String toString() {
  final _this = this as GetBotWordOutput;
  return 'GetBotWordOutput(word: ${_this.word})';
}


}

/// @nodoc
abstract mixin class $GetBotWordOutputCopyWith<$Res>  {
  factory $GetBotWordOutputCopyWith(GetBotWordOutput value, $Res Function(GetBotWordOutput) _then) = _$GetBotWordOutputCopyWithImpl;
@useResult
$Res call({
 Word word
});


$WordCopyWith<$Res> get word;

}
/// @nodoc
class _$GetBotWordOutputCopyWithImpl<$Res>
    implements $GetBotWordOutputCopyWith<$Res> {
  _$GetBotWordOutputCopyWithImpl(this._self, this._then);

  final GetBotWordOutput _self;
  final $Res Function(GetBotWordOutput) _then;

/// Create a copy of GetBotWordOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,}) {
  return _then(GetBotWordOutput(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as Word,
  ));
}
/// Create a copy of GetBotWordOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get word {
  
  return $WordCopyWith<$Res>(_self.word, (value) {
    return _then(_self.copyWith(word: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBotWordOutput].
extension GetBotWordOutputPatterns on GetBotWordOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBotWordOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBotWordOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBotWordOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetBotWordOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBotWordOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetBotWordOutput() when $default != null:
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
case _GetBotWordOutput() when $default != null:
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
case _GetBotWordOutput():
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
case _GetBotWordOutput() when $default != null:
return $default(_that.word);case _:
  return null;

}
}

}

/// @nodoc


class _GetBotWordOutput extends GetBotWordOutput {
  const _GetBotWordOutput(this.word): super._();
  

@override final  Word word;

/// Create a copy of GetBotWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBotWordOutputCopyWith<_GetBotWordOutput> get copyWith => __$GetBotWordOutputCopyWithImpl<_GetBotWordOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBotWordOutput&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word);
}

@override
String toString() {
    return 'GetBotWordOutput(word: $word)';
}


}

/// @nodoc
abstract mixin class _$GetBotWordOutputCopyWith<$Res> implements $GetBotWordOutputCopyWith<$Res> {
  factory _$GetBotWordOutputCopyWith(_GetBotWordOutput value, $Res Function(_GetBotWordOutput) _then) = __$GetBotWordOutputCopyWithImpl;
@override @useResult
$Res call({
 Word word
});


@override $WordCopyWith<$Res> get word;

}
/// @nodoc
class __$GetBotWordOutputCopyWithImpl<$Res>
    implements _$GetBotWordOutputCopyWith<$Res> {
  __$GetBotWordOutputCopyWithImpl(this._self, this._then);

  final _GetBotWordOutput _self;
  final $Res Function(_GetBotWordOutput) _then;

/// Create a copy of GetBotWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(_GetBotWordOutput(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as Word,
  ));
}

/// Create a copy of GetBotWordOutput
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

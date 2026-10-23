// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_dictionary_detail_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetDictionaryDetailInput {

 String get word; String get lexicon; int get details; int get phonetics; int get meaning;
/// Create a copy of GetDictionaryDetailInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDictionaryDetailInputCopyWith<GetDictionaryDetailInput> get copyWith => _$GetDictionaryDetailInputCopyWithImpl<GetDictionaryDetailInput>(this as GetDictionaryDetailInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetDictionaryDetailInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDictionaryDetailInput&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.lexicon, _this.lexicon) || other.lexicon == _this.lexicon)&&(identical(other.details, _this.details) || other.details == _this.details)&&(identical(other.phonetics, _this.phonetics) || other.phonetics == _this.phonetics)&&(identical(other.meaning, _this.meaning) || other.meaning == _this.meaning));
}


@override
int get hashCode {
  final _this = this as GetDictionaryDetailInput;
  return Object.hash(runtimeType,_this.word,_this.lexicon,_this.details,_this.phonetics,_this.meaning);
}

@override
String toString() {
  final _this = this as GetDictionaryDetailInput;
  return 'GetDictionaryDetailInput(word: ${_this.word}, lexicon: ${_this.lexicon}, details: ${_this.details}, phonetics: ${_this.phonetics}, meaning: ${_this.meaning})';
}


}

/// @nodoc
abstract mixin class $GetDictionaryDetailInputCopyWith<$Res>  {
  factory $GetDictionaryDetailInputCopyWith(GetDictionaryDetailInput value, $Res Function(GetDictionaryDetailInput) _then) = _$GetDictionaryDetailInputCopyWithImpl;
@useResult
$Res call({
 String word, String lexicon, int details, int phonetics, int meaning
});




}
/// @nodoc
class _$GetDictionaryDetailInputCopyWithImpl<$Res>
    implements $GetDictionaryDetailInputCopyWith<$Res> {
  _$GetDictionaryDetailInputCopyWithImpl(this._self, this._then);

  final GetDictionaryDetailInput _self;
  final $Res Function(GetDictionaryDetailInput) _then;

/// Create a copy of GetDictionaryDetailInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? lexicon = null,Object? details = null,Object? phonetics = null,Object? meaning = null,}) {
  return _then(GetDictionaryDetailInput(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,lexicon: null == lexicon ? _self.lexicon : lexicon // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as int,phonetics: null == phonetics ? _self.phonetics : phonetics // ignore: cast_nullable_to_non_nullable
as int,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDictionaryDetailInput].
extension GetDictionaryDetailInputPatterns on GetDictionaryDetailInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDictionaryDetailInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDictionaryDetailInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDictionaryDetailInput value)  $default,){
final _that = this;
switch (_that) {
case _GetDictionaryDetailInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDictionaryDetailInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetDictionaryDetailInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  String lexicon,  int details,  int phonetics,  int meaning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDictionaryDetailInput() when $default != null:
return $default(_that.word,_that.lexicon,_that.details,_that.phonetics,_that.meaning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  String lexicon,  int details,  int phonetics,  int meaning)  $default,) {final _that = this;
switch (_that) {
case _GetDictionaryDetailInput():
return $default(_that.word,_that.lexicon,_that.details,_that.phonetics,_that.meaning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  String lexicon,  int details,  int phonetics,  int meaning)?  $default,) {final _that = this;
switch (_that) {
case _GetDictionaryDetailInput() when $default != null:
return $default(_that.word,_that.lexicon,_that.details,_that.phonetics,_that.meaning);case _:
  return null;

}
}

}

/// @nodoc


class _GetDictionaryDetailInput extends GetDictionaryDetailInput {
  const _GetDictionaryDetailInput({required this.word, this.lexicon = 'chain-v3', this.details = 1, this.phonetics = 2, this.meaning = 1}): super._();
  

@override final  String word;
@override@JsonKey() final  String lexicon;
@override@JsonKey() final  int details;
@override@JsonKey() final  int phonetics;
@override@JsonKey() final  int meaning;

/// Create a copy of GetDictionaryDetailInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDictionaryDetailInputCopyWith<_GetDictionaryDetailInput> get copyWith => __$GetDictionaryDetailInputCopyWithImpl<_GetDictionaryDetailInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDictionaryDetailInput&&(identical(other.word, word) || other.word == word)&&(identical(other.lexicon, lexicon) || other.lexicon == lexicon)&&(identical(other.details, details) || other.details == details)&&(identical(other.phonetics, phonetics) || other.phonetics == phonetics)&&(identical(other.meaning, meaning) || other.meaning == meaning));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word,lexicon,details,phonetics,meaning);
}

@override
String toString() {
    return 'GetDictionaryDetailInput(word: $word, lexicon: $lexicon, details: $details, phonetics: $phonetics, meaning: $meaning)';
}


}

/// @nodoc
abstract mixin class _$GetDictionaryDetailInputCopyWith<$Res> implements $GetDictionaryDetailInputCopyWith<$Res> {
  factory _$GetDictionaryDetailInputCopyWith(_GetDictionaryDetailInput value, $Res Function(_GetDictionaryDetailInput) _then) = __$GetDictionaryDetailInputCopyWithImpl;
@override @useResult
$Res call({
 String word, String lexicon, int details, int phonetics, int meaning
});




}
/// @nodoc
class __$GetDictionaryDetailInputCopyWithImpl<$Res>
    implements _$GetDictionaryDetailInputCopyWith<$Res> {
  __$GetDictionaryDetailInputCopyWithImpl(this._self, this._then);

  final _GetDictionaryDetailInput _self;
  final $Res Function(_GetDictionaryDetailInput) _then;

/// Create a copy of GetDictionaryDetailInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? lexicon = null,Object? details = null,Object? phonetics = null,Object? meaning = null,}) {
  return _then(_GetDictionaryDetailInput(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,lexicon: null == lexicon ? _self.lexicon : lexicon // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as int,phonetics: null == phonetics ? _self.phonetics : phonetics // ignore: cast_nullable_to_non_nullable
as int,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GetDictionaryDetailOutput {

 DictionaryDetail get detail;
/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDictionaryDetailOutputCopyWith<GetDictionaryDetailOutput> get copyWith => _$GetDictionaryDetailOutputCopyWithImpl<GetDictionaryDetailOutput>(this as GetDictionaryDetailOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetDictionaryDetailOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDictionaryDetailOutput&&(identical(other.detail, _this.detail) || other.detail == _this.detail));
}


@override
int get hashCode {
  final _this = this as GetDictionaryDetailOutput;
  return Object.hash(runtimeType,_this.detail);
}

@override
String toString() {
  final _this = this as GetDictionaryDetailOutput;
  return 'GetDictionaryDetailOutput(detail: ${_this.detail})';
}


}

/// @nodoc
abstract mixin class $GetDictionaryDetailOutputCopyWith<$Res>  {
  factory $GetDictionaryDetailOutputCopyWith(GetDictionaryDetailOutput value, $Res Function(GetDictionaryDetailOutput) _then) = _$GetDictionaryDetailOutputCopyWithImpl;
@useResult
$Res call({
 DictionaryDetail detail
});


$DictionaryDetailCopyWith<$Res> get detail;

}
/// @nodoc
class _$GetDictionaryDetailOutputCopyWithImpl<$Res>
    implements $GetDictionaryDetailOutputCopyWith<$Res> {
  _$GetDictionaryDetailOutputCopyWithImpl(this._self, this._then);

  final GetDictionaryDetailOutput _self;
  final $Res Function(GetDictionaryDetailOutput) _then;

/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,}) {
  return _then(GetDictionaryDetailOutput(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as DictionaryDetail,
  ));
}
/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDetailCopyWith<$Res> get detail {
  
  return $DictionaryDetailCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetDictionaryDetailOutput].
extension GetDictionaryDetailOutputPatterns on GetDictionaryDetailOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDictionaryDetailOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDictionaryDetailOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDictionaryDetailOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DictionaryDetail detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput() when $default != null:
return $default(_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DictionaryDetail detail)  $default,) {final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput():
return $default(_that.detail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DictionaryDetail detail)?  $default,) {final _that = this;
switch (_that) {
case _GetDictionaryDetailOutput() when $default != null:
return $default(_that.detail);case _:
  return null;

}
}

}

/// @nodoc


class _GetDictionaryDetailOutput extends GetDictionaryDetailOutput {
  const _GetDictionaryDetailOutput({this.detail = const DictionaryDetail()}): super._();
  

@override@JsonKey() final  DictionaryDetail detail;

/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDictionaryDetailOutputCopyWith<_GetDictionaryDetailOutput> get copyWith => __$GetDictionaryDetailOutputCopyWithImpl<_GetDictionaryDetailOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDictionaryDetailOutput&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode {
    return Object.hash(runtimeType,detail);
}

@override
String toString() {
    return 'GetDictionaryDetailOutput(detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$GetDictionaryDetailOutputCopyWith<$Res> implements $GetDictionaryDetailOutputCopyWith<$Res> {
  factory _$GetDictionaryDetailOutputCopyWith(_GetDictionaryDetailOutput value, $Res Function(_GetDictionaryDetailOutput) _then) = __$GetDictionaryDetailOutputCopyWithImpl;
@override @useResult
$Res call({
 DictionaryDetail detail
});


@override $DictionaryDetailCopyWith<$Res> get detail;

}
/// @nodoc
class __$GetDictionaryDetailOutputCopyWithImpl<$Res>
    implements _$GetDictionaryDetailOutputCopyWith<$Res> {
  __$GetDictionaryDetailOutputCopyWithImpl(this._self, this._then);

  final _GetDictionaryDetailOutput _self;
  final $Res Function(_GetDictionaryDetailOutput) _then;

/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(_GetDictionaryDetailOutput(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as DictionaryDetail,
  ));
}

/// Create a copy of GetDictionaryDetailOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDetailCopyWith<$Res> get detail {
  
  return $DictionaryDetailCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}

// dart format on

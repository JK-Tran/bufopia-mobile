// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_pronunciation_assessment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitPronunciationAssessmentInput {

 String get uid; File get audioFile; String get referenceText; String get language; String? get token;
/// Create a copy of SubmitPronunciationAssessmentInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPronunciationAssessmentInputCopyWith<SubmitPronunciationAssessmentInput> get copyWith => _$SubmitPronunciationAssessmentInputCopyWithImpl<SubmitPronunciationAssessmentInput>(this as SubmitPronunciationAssessmentInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPronunciationAssessmentInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPronunciationAssessmentInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.audioFile, _this.audioFile) || other.audioFile == _this.audioFile)&&(identical(other.referenceText, _this.referenceText) || other.referenceText == _this.referenceText)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SubmitPronunciationAssessmentInput;
  return Object.hash(runtimeType,_this.uid,_this.audioFile,_this.referenceText,_this.language,_this.token);
}

@override
String toString() {
  final _this = this as SubmitPronunciationAssessmentInput;
  return 'SubmitPronunciationAssessmentInput(uid: ${_this.uid}, audioFile: ${_this.audioFile}, referenceText: ${_this.referenceText}, language: ${_this.language}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SubmitPronunciationAssessmentInputCopyWith<$Res>  {
  factory $SubmitPronunciationAssessmentInputCopyWith(SubmitPronunciationAssessmentInput value, $Res Function(SubmitPronunciationAssessmentInput) _then) = _$SubmitPronunciationAssessmentInputCopyWithImpl;
@useResult
$Res call({
 String uid, File audioFile, String referenceText, String language, String? token
});




}
/// @nodoc
class _$SubmitPronunciationAssessmentInputCopyWithImpl<$Res>
    implements $SubmitPronunciationAssessmentInputCopyWith<$Res> {
  _$SubmitPronunciationAssessmentInputCopyWithImpl(this._self, this._then);

  final SubmitPronunciationAssessmentInput _self;
  final $Res Function(SubmitPronunciationAssessmentInput) _then;

/// Create a copy of SubmitPronunciationAssessmentInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? audioFile = null,Object? referenceText = null,Object? language = null,Object? token = freezed,}) {
  return _then(SubmitPronunciationAssessmentInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,audioFile: null == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as File,referenceText: null == referenceText ? _self.referenceText : referenceText // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitPronunciationAssessmentInput].
extension SubmitPronunciationAssessmentInputPatterns on SubmitPronunciationAssessmentInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPronunciationAssessmentInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPronunciationAssessmentInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPronunciationAssessmentInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput() when $default != null:
return $default(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)  $default,) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput():
return $default(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentInput() when $default != null:
return $default(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPronunciationAssessmentInput extends SubmitPronunciationAssessmentInput {
  const _SubmitPronunciationAssessmentInput({required this.uid, required this.audioFile, required this.referenceText, this.language = 'en-US', this.token}): super._();
  

@override final  String uid;
@override final  File audioFile;
@override final  String referenceText;
@override@JsonKey() final  String language;
@override final  String? token;

/// Create a copy of SubmitPronunciationAssessmentInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPronunciationAssessmentInputCopyWith<_SubmitPronunciationAssessmentInput> get copyWith => __$SubmitPronunciationAssessmentInputCopyWithImpl<_SubmitPronunciationAssessmentInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPronunciationAssessmentInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile)&&(identical(other.referenceText, referenceText) || other.referenceText == referenceText)&&(identical(other.language, language) || other.language == language)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,audioFile,referenceText,language,token);
}

@override
String toString() {
    return 'SubmitPronunciationAssessmentInput(uid: $uid, audioFile: $audioFile, referenceText: $referenceText, language: $language, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitPronunciationAssessmentInputCopyWith<$Res> implements $SubmitPronunciationAssessmentInputCopyWith<$Res> {
  factory _$SubmitPronunciationAssessmentInputCopyWith(_SubmitPronunciationAssessmentInput value, $Res Function(_SubmitPronunciationAssessmentInput) _then) = __$SubmitPronunciationAssessmentInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, File audioFile, String referenceText, String language, String? token
});




}
/// @nodoc
class __$SubmitPronunciationAssessmentInputCopyWithImpl<$Res>
    implements _$SubmitPronunciationAssessmentInputCopyWith<$Res> {
  __$SubmitPronunciationAssessmentInputCopyWithImpl(this._self, this._then);

  final _SubmitPronunciationAssessmentInput _self;
  final $Res Function(_SubmitPronunciationAssessmentInput) _then;

/// Create a copy of SubmitPronunciationAssessmentInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? audioFile = null,Object? referenceText = null,Object? language = null,Object? token = freezed,}) {
  return _then(_SubmitPronunciationAssessmentInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,audioFile: null == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as File,referenceText: null == referenceText ? _self.referenceText : referenceText // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SubmitPronunciationAssessmentOutput {

 PronunciationAssessment get assessment;
/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPronunciationAssessmentOutputCopyWith<SubmitPronunciationAssessmentOutput> get copyWith => _$SubmitPronunciationAssessmentOutputCopyWithImpl<SubmitPronunciationAssessmentOutput>(this as SubmitPronunciationAssessmentOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPronunciationAssessmentOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPronunciationAssessmentOutput&&(identical(other.assessment, _this.assessment) || other.assessment == _this.assessment));
}


@override
int get hashCode {
  final _this = this as SubmitPronunciationAssessmentOutput;
  return Object.hash(runtimeType,_this.assessment);
}

@override
String toString() {
  final _this = this as SubmitPronunciationAssessmentOutput;
  return 'SubmitPronunciationAssessmentOutput(assessment: ${_this.assessment})';
}


}

/// @nodoc
abstract mixin class $SubmitPronunciationAssessmentOutputCopyWith<$Res>  {
  factory $SubmitPronunciationAssessmentOutputCopyWith(SubmitPronunciationAssessmentOutput value, $Res Function(SubmitPronunciationAssessmentOutput) _then) = _$SubmitPronunciationAssessmentOutputCopyWithImpl;
@useResult
$Res call({
 PronunciationAssessment assessment
});


$PronunciationAssessmentCopyWith<$Res> get assessment;

}
/// @nodoc
class _$SubmitPronunciationAssessmentOutputCopyWithImpl<$Res>
    implements $SubmitPronunciationAssessmentOutputCopyWith<$Res> {
  _$SubmitPronunciationAssessmentOutputCopyWithImpl(this._self, this._then);

  final SubmitPronunciationAssessmentOutput _self;
  final $Res Function(SubmitPronunciationAssessmentOutput) _then;

/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assessment = null,}) {
  return _then(SubmitPronunciationAssessmentOutput(
assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as PronunciationAssessment,
  ));
}
/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationAssessmentCopyWith<$Res> get assessment {
  
  return $PronunciationAssessmentCopyWith<$Res>(_self.assessment, (value) {
    return _then(_self.copyWith(assessment: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitPronunciationAssessmentOutput].
extension SubmitPronunciationAssessmentOutputPatterns on SubmitPronunciationAssessmentOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPronunciationAssessmentOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPronunciationAssessmentOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPronunciationAssessmentOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PronunciationAssessment assessment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput() when $default != null:
return $default(_that.assessment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PronunciationAssessment assessment)  $default,) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput():
return $default(_that.assessment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PronunciationAssessment assessment)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPronunciationAssessmentOutput() when $default != null:
return $default(_that.assessment);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPronunciationAssessmentOutput extends SubmitPronunciationAssessmentOutput {
  const _SubmitPronunciationAssessmentOutput({this.assessment = const PronunciationAssessment()}): super._();
  

@override@JsonKey() final  PronunciationAssessment assessment;

/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPronunciationAssessmentOutputCopyWith<_SubmitPronunciationAssessmentOutput> get copyWith => __$SubmitPronunciationAssessmentOutputCopyWithImpl<_SubmitPronunciationAssessmentOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPronunciationAssessmentOutput&&(identical(other.assessment, assessment) || other.assessment == assessment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,assessment);
}

@override
String toString() {
    return 'SubmitPronunciationAssessmentOutput(assessment: $assessment)';
}


}

/// @nodoc
abstract mixin class _$SubmitPronunciationAssessmentOutputCopyWith<$Res> implements $SubmitPronunciationAssessmentOutputCopyWith<$Res> {
  factory _$SubmitPronunciationAssessmentOutputCopyWith(_SubmitPronunciationAssessmentOutput value, $Res Function(_SubmitPronunciationAssessmentOutput) _then) = __$SubmitPronunciationAssessmentOutputCopyWithImpl;
@override @useResult
$Res call({
 PronunciationAssessment assessment
});


@override $PronunciationAssessmentCopyWith<$Res> get assessment;

}
/// @nodoc
class __$SubmitPronunciationAssessmentOutputCopyWithImpl<$Res>
    implements _$SubmitPronunciationAssessmentOutputCopyWith<$Res> {
  __$SubmitPronunciationAssessmentOutputCopyWithImpl(this._self, this._then);

  final _SubmitPronunciationAssessmentOutput _self;
  final $Res Function(_SubmitPronunciationAssessmentOutput) _then;

/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assessment = null,}) {
  return _then(_SubmitPronunciationAssessmentOutput(
assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as PronunciationAssessment,
  ));
}

/// Create a copy of SubmitPronunciationAssessmentOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationAssessmentCopyWith<$Res> get assessment {
  
  return $PronunciationAssessmentCopyWith<$Res>(_self.assessment, (value) {
    return _then(_self.copyWith(assessment: value));
  });
}
}

// dart format on

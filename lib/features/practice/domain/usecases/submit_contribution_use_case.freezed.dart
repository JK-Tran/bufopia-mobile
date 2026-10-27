// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_contribution_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitContributionInput {

 String get uid; String get contributorName; String get wordEn; String get meaningVi; String? get topicId; String? get partOfSpeech; String? get phonetic; String? get exampleEn; String? get exampleVi; String? get token;
/// Create a copy of SubmitContributionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitContributionInputCopyWith<SubmitContributionInput> get copyWith => _$SubmitContributionInputCopyWithImpl<SubmitContributionInput>(this as SubmitContributionInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitContributionInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitContributionInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.contributorName, _this.contributorName) || other.contributorName == _this.contributorName)&&(identical(other.wordEn, _this.wordEn) || other.wordEn == _this.wordEn)&&(identical(other.meaningVi, _this.meaningVi) || other.meaningVi == _this.meaningVi)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.exampleEn, _this.exampleEn) || other.exampleEn == _this.exampleEn)&&(identical(other.exampleVi, _this.exampleVi) || other.exampleVi == _this.exampleVi)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SubmitContributionInput;
  return Object.hash(runtimeType,_this.uid,_this.contributorName,_this.wordEn,_this.meaningVi,_this.topicId,_this.partOfSpeech,_this.phonetic,_this.exampleEn,_this.exampleVi,_this.token);
}

@override
String toString() {
  final _this = this as SubmitContributionInput;
  return 'SubmitContributionInput(uid: ${_this.uid}, contributorName: ${_this.contributorName}, wordEn: ${_this.wordEn}, meaningVi: ${_this.meaningVi}, topicId: ${_this.topicId}, partOfSpeech: ${_this.partOfSpeech}, phonetic: ${_this.phonetic}, exampleEn: ${_this.exampleEn}, exampleVi: ${_this.exampleVi}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SubmitContributionInputCopyWith<$Res>  {
  factory $SubmitContributionInputCopyWith(SubmitContributionInput value, $Res Function(SubmitContributionInput) _then) = _$SubmitContributionInputCopyWithImpl;
@useResult
$Res call({
 String uid, String contributorName, String wordEn, String meaningVi, String? topicId, String? partOfSpeech, String? phonetic, String? exampleEn, String? exampleVi, String? token
});




}
/// @nodoc
class _$SubmitContributionInputCopyWithImpl<$Res>
    implements $SubmitContributionInputCopyWith<$Res> {
  _$SubmitContributionInputCopyWithImpl(this._self, this._then);

  final SubmitContributionInput _self;
  final $Res Function(SubmitContributionInput) _then;

/// Create a copy of SubmitContributionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? contributorName = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? token = freezed,}) {
  return _then(SubmitContributionInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,contributorName: null == contributorName ? _self.contributorName : contributorName // ignore: cast_nullable_to_non_nullable
as String,wordEn: null == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String,meaningVi: null == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,exampleEn: freezed == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitContributionInput].
extension SubmitContributionInputPatterns on SubmitContributionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitContributionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitContributionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitContributionInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitContributionInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitContributionInput() when $default != null:
return $default(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionInput():
return $default(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionInput() when $default != null:
return $default(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitContributionInput extends SubmitContributionInput {
  const _SubmitContributionInput({required this.uid, required this.contributorName, required this.wordEn, required this.meaningVi, this.topicId, this.partOfSpeech, this.phonetic, this.exampleEn, this.exampleVi, this.token}): super._();
  

@override final  String uid;
@override final  String contributorName;
@override final  String wordEn;
@override final  String meaningVi;
@override final  String? topicId;
@override final  String? partOfSpeech;
@override final  String? phonetic;
@override final  String? exampleEn;
@override final  String? exampleVi;
@override final  String? token;

/// Create a copy of SubmitContributionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitContributionInputCopyWith<_SubmitContributionInput> get copyWith => __$SubmitContributionInputCopyWithImpl<_SubmitContributionInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitContributionInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.contributorName, contributorName) || other.contributorName == contributorName)&&(identical(other.wordEn, wordEn) || other.wordEn == wordEn)&&(identical(other.meaningVi, meaningVi) || other.meaningVi == meaningVi)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.exampleEn, exampleEn) || other.exampleEn == exampleEn)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,contributorName,wordEn,meaningVi,topicId,partOfSpeech,phonetic,exampleEn,exampleVi,token);
}

@override
String toString() {
    return 'SubmitContributionInput(uid: $uid, contributorName: $contributorName, wordEn: $wordEn, meaningVi: $meaningVi, topicId: $topicId, partOfSpeech: $partOfSpeech, phonetic: $phonetic, exampleEn: $exampleEn, exampleVi: $exampleVi, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitContributionInputCopyWith<$Res> implements $SubmitContributionInputCopyWith<$Res> {
  factory _$SubmitContributionInputCopyWith(_SubmitContributionInput value, $Res Function(_SubmitContributionInput) _then) = __$SubmitContributionInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String contributorName, String wordEn, String meaningVi, String? topicId, String? partOfSpeech, String? phonetic, String? exampleEn, String? exampleVi, String? token
});




}
/// @nodoc
class __$SubmitContributionInputCopyWithImpl<$Res>
    implements _$SubmitContributionInputCopyWith<$Res> {
  __$SubmitContributionInputCopyWithImpl(this._self, this._then);

  final _SubmitContributionInput _self;
  final $Res Function(_SubmitContributionInput) _then;

/// Create a copy of SubmitContributionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? contributorName = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? token = freezed,}) {
  return _then(_SubmitContributionInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,contributorName: null == contributorName ? _self.contributorName : contributorName // ignore: cast_nullable_to_non_nullable
as String,wordEn: null == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String,meaningVi: null == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,exampleEn: freezed == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SubmitContributionOutput {

 Contribution get contribution;
/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitContributionOutputCopyWith<SubmitContributionOutput> get copyWith => _$SubmitContributionOutputCopyWithImpl<SubmitContributionOutput>(this as SubmitContributionOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitContributionOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitContributionOutput&&(identical(other.contribution, _this.contribution) || other.contribution == _this.contribution));
}


@override
int get hashCode {
  final _this = this as SubmitContributionOutput;
  return Object.hash(runtimeType,_this.contribution);
}

@override
String toString() {
  final _this = this as SubmitContributionOutput;
  return 'SubmitContributionOutput(contribution: ${_this.contribution})';
}


}

/// @nodoc
abstract mixin class $SubmitContributionOutputCopyWith<$Res>  {
  factory $SubmitContributionOutputCopyWith(SubmitContributionOutput value, $Res Function(SubmitContributionOutput) _then) = _$SubmitContributionOutputCopyWithImpl;
@useResult
$Res call({
 Contribution contribution
});


$ContributionCopyWith<$Res> get contribution;

}
/// @nodoc
class _$SubmitContributionOutputCopyWithImpl<$Res>
    implements $SubmitContributionOutputCopyWith<$Res> {
  _$SubmitContributionOutputCopyWithImpl(this._self, this._then);

  final SubmitContributionOutput _self;
  final $Res Function(SubmitContributionOutput) _then;

/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contribution = null,}) {
  return _then(SubmitContributionOutput(
contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as Contribution,
  ));
}
/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContributionCopyWith<$Res> get contribution {
  
  return $ContributionCopyWith<$Res>(_self.contribution, (value) {
    return _then(_self.copyWith(contribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitContributionOutput].
extension SubmitContributionOutputPatterns on SubmitContributionOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitContributionOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitContributionOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitContributionOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitContributionOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Contribution contribution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitContributionOutput() when $default != null:
return $default(_that.contribution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Contribution contribution)  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionOutput():
return $default(_that.contribution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Contribution contribution)?  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionOutput() when $default != null:
return $default(_that.contribution);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitContributionOutput extends SubmitContributionOutput {
  const _SubmitContributionOutput({this.contribution = const Contribution()}): super._();
  

@override@JsonKey() final  Contribution contribution;

/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitContributionOutputCopyWith<_SubmitContributionOutput> get copyWith => __$SubmitContributionOutputCopyWithImpl<_SubmitContributionOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitContributionOutput&&(identical(other.contribution, contribution) || other.contribution == contribution));
}


@override
int get hashCode {
    return Object.hash(runtimeType,contribution);
}

@override
String toString() {
    return 'SubmitContributionOutput(contribution: $contribution)';
}


}

/// @nodoc
abstract mixin class _$SubmitContributionOutputCopyWith<$Res> implements $SubmitContributionOutputCopyWith<$Res> {
  factory _$SubmitContributionOutputCopyWith(_SubmitContributionOutput value, $Res Function(_SubmitContributionOutput) _then) = __$SubmitContributionOutputCopyWithImpl;
@override @useResult
$Res call({
 Contribution contribution
});


@override $ContributionCopyWith<$Res> get contribution;

}
/// @nodoc
class __$SubmitContributionOutputCopyWithImpl<$Res>
    implements _$SubmitContributionOutputCopyWith<$Res> {
  __$SubmitContributionOutputCopyWithImpl(this._self, this._then);

  final _SubmitContributionOutput _self;
  final $Res Function(_SubmitContributionOutput) _then;

/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contribution = null,}) {
  return _then(_SubmitContributionOutput(
contribution: null == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as Contribution,
  ));
}

/// Create a copy of SubmitContributionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContributionCopyWith<$Res> get contribution {
  
  return $ContributionCopyWith<$Res>(_self.contribution, (value) {
    return _then(_self.copyWith(contribution: value));
  });
}
}

// dart format on

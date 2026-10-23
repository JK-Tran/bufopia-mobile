// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contribution_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContributionEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ContributionEvent()';
}


}

/// @nodoc
class $ContributionEventCopyWith<$Res>  {
$ContributionEventCopyWith(ContributionEvent _, $Res Function(ContributionEvent) __);
}


/// Adds pattern-matching-related methods to [ContributionEvent].
extension ContributionEventPatterns on ContributionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadContributions value)?  loadContributions,TResult Function( _LookupWord value)?  lookupWord,TResult Function( _SubmitContribution value)?  submitContribution,TResult Function( _UpdateContribution value)?  updateContribution,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadContributions() when loadContributions != null:
return loadContributions(_that);case _LookupWord() when lookupWord != null:
return lookupWord(_that);case _SubmitContribution() when submitContribution != null:
return submitContribution(_that);case _UpdateContribution() when updateContribution != null:
return updateContribution(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadContributions value)  loadContributions,required TResult Function( _LookupWord value)  lookupWord,required TResult Function( _SubmitContribution value)  submitContribution,required TResult Function( _UpdateContribution value)  updateContribution,}){
final _that = this;
switch (_that) {
case _LoadContributions():
return loadContributions(_that);case _LookupWord():
return lookupWord(_that);case _SubmitContribution():
return submitContribution(_that);case _UpdateContribution():
return updateContribution(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadContributions value)?  loadContributions,TResult? Function( _LookupWord value)?  lookupWord,TResult? Function( _SubmitContribution value)?  submitContribution,TResult? Function( _UpdateContribution value)?  updateContribution,}){
final _that = this;
switch (_that) {
case _LoadContributions() when loadContributions != null:
return loadContributions(_that);case _LookupWord() when lookupWord != null:
return lookupWord(_that);case _SubmitContribution() when submitContribution != null:
return submitContribution(_that);case _UpdateContribution() when updateContribution != null:
return updateContribution(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? uid,  String? token)?  loadContributions,TResult Function( String word)?  lookupWord,TResult Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  submitContribution,TResult Function( String id,  String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  updateContribution,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadContributions() when loadContributions != null:
return loadContributions(_that.uid,_that.token);case _LookupWord() when lookupWord != null:
return lookupWord(_that.word);case _SubmitContribution() when submitContribution != null:
return submitContribution(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _UpdateContribution() when updateContribution != null:
return updateContribution(_that.id,_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? uid,  String? token)  loadContributions,required TResult Function( String word)  lookupWord,required TResult Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)  submitContribution,required TResult Function( String id,  String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)  updateContribution,}) {final _that = this;
switch (_that) {
case _LoadContributions():
return loadContributions(_that.uid,_that.token);case _LookupWord():
return lookupWord(_that.word);case _SubmitContribution():
return submitContribution(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _UpdateContribution():
return updateContribution(_that.id,_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? uid,  String? token)?  loadContributions,TResult? Function( String word)?  lookupWord,TResult? Function( String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  submitContribution,TResult? Function( String id,  String uid,  String contributorName,  String wordEn,  String meaningVi,  String? topicId,  String? partOfSpeech,  String? phonetic,  String? exampleEn,  String? exampleVi,  String? token)?  updateContribution,}) {final _that = this;
switch (_that) {
case _LoadContributions() when loadContributions != null:
return loadContributions(_that.uid,_that.token);case _LookupWord() when lookupWord != null:
return lookupWord(_that.word);case _SubmitContribution() when submitContribution != null:
return submitContribution(_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _UpdateContribution() when updateContribution != null:
return updateContribution(_that.id,_that.uid,_that.contributorName,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _LoadContributions implements ContributionEvent {
  const _LoadContributions({this.uid, this.token});
  

 final  String? uid;
 final  String? token;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadContributionsCopyWith<_LoadContributions> get copyWith => __$LoadContributionsCopyWithImpl<_LoadContributions>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadContributions&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,token);
}

@override
String toString() {
    return 'ContributionEvent.loadContributions(uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$LoadContributionsCopyWith<$Res> implements $ContributionEventCopyWith<$Res> {
  factory _$LoadContributionsCopyWith(_LoadContributions value, $Res Function(_LoadContributions) _then) = __$LoadContributionsCopyWithImpl;
@useResult
$Res call({
 String? uid, String? token
});




}
/// @nodoc
class __$LoadContributionsCopyWithImpl<$Res>
    implements _$LoadContributionsCopyWith<$Res> {
  __$LoadContributionsCopyWithImpl(this._self, this._then);

  final _LoadContributions _self;
  final $Res Function(_LoadContributions) _then;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? token = freezed,}) {
  return _then(_LoadContributions(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LookupWord implements ContributionEvent {
  const _LookupWord({required this.word});
  

 final  String word;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LookupWordCopyWith<_LookupWord> get copyWith => __$LookupWordCopyWithImpl<_LookupWord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LookupWord&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word);
}

@override
String toString() {
    return 'ContributionEvent.lookupWord(word: $word)';
}


}

/// @nodoc
abstract mixin class _$LookupWordCopyWith<$Res> implements $ContributionEventCopyWith<$Res> {
  factory _$LookupWordCopyWith(_LookupWord value, $Res Function(_LookupWord) _then) = __$LookupWordCopyWithImpl;
@useResult
$Res call({
 String word
});




}
/// @nodoc
class __$LookupWordCopyWithImpl<$Res>
    implements _$LookupWordCopyWith<$Res> {
  __$LookupWordCopyWithImpl(this._self, this._then);

  final _LookupWord _self;
  final $Res Function(_LookupWord) _then;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(_LookupWord(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitContribution implements ContributionEvent {
  const _SubmitContribution({required this.uid, required this.contributorName, required this.wordEn, required this.meaningVi, this.topicId, this.partOfSpeech, this.phonetic, this.exampleEn, this.exampleVi, this.token});
  

 final  String uid;
 final  String contributorName;
 final  String wordEn;
 final  String meaningVi;
 final  String? topicId;
 final  String? partOfSpeech;
 final  String? phonetic;
 final  String? exampleEn;
 final  String? exampleVi;
 final  String? token;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitContributionCopyWith<_SubmitContribution> get copyWith => __$SubmitContributionCopyWithImpl<_SubmitContribution>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitContribution&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.contributorName, contributorName) || other.contributorName == contributorName)&&(identical(other.wordEn, wordEn) || other.wordEn == wordEn)&&(identical(other.meaningVi, meaningVi) || other.meaningVi == meaningVi)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.exampleEn, exampleEn) || other.exampleEn == exampleEn)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,contributorName,wordEn,meaningVi,topicId,partOfSpeech,phonetic,exampleEn,exampleVi,token);
}

@override
String toString() {
    return 'ContributionEvent.submitContribution(uid: $uid, contributorName: $contributorName, wordEn: $wordEn, meaningVi: $meaningVi, topicId: $topicId, partOfSpeech: $partOfSpeech, phonetic: $phonetic, exampleEn: $exampleEn, exampleVi: $exampleVi, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitContributionCopyWith<$Res> implements $ContributionEventCopyWith<$Res> {
  factory _$SubmitContributionCopyWith(_SubmitContribution value, $Res Function(_SubmitContribution) _then) = __$SubmitContributionCopyWithImpl;
@useResult
$Res call({
 String uid, String contributorName, String wordEn, String meaningVi, String? topicId, String? partOfSpeech, String? phonetic, String? exampleEn, String? exampleVi, String? token
});




}
/// @nodoc
class __$SubmitContributionCopyWithImpl<$Res>
    implements _$SubmitContributionCopyWith<$Res> {
  __$SubmitContributionCopyWithImpl(this._self, this._then);

  final _SubmitContribution _self;
  final $Res Function(_SubmitContribution) _then;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? contributorName = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? token = freezed,}) {
  return _then(_SubmitContribution(
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


class _UpdateContribution implements ContributionEvent {
  const _UpdateContribution({required this.id, required this.uid, required this.contributorName, required this.wordEn, required this.meaningVi, this.topicId, this.partOfSpeech, this.phonetic, this.exampleEn, this.exampleVi, this.token});
  

 final  String id;
 final  String uid;
 final  String contributorName;
 final  String wordEn;
 final  String meaningVi;
 final  String? topicId;
 final  String? partOfSpeech;
 final  String? phonetic;
 final  String? exampleEn;
 final  String? exampleVi;
 final  String? token;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateContributionCopyWith<_UpdateContribution> get copyWith => __$UpdateContributionCopyWithImpl<_UpdateContribution>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateContribution&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.contributorName, contributorName) || other.contributorName == contributorName)&&(identical(other.wordEn, wordEn) || other.wordEn == wordEn)&&(identical(other.meaningVi, meaningVi) || other.meaningVi == meaningVi)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.exampleEn, exampleEn) || other.exampleEn == exampleEn)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,uid,contributorName,wordEn,meaningVi,topicId,partOfSpeech,phonetic,exampleEn,exampleVi,token);
}

@override
String toString() {
    return 'ContributionEvent.updateContribution(id: $id, uid: $uid, contributorName: $contributorName, wordEn: $wordEn, meaningVi: $meaningVi, topicId: $topicId, partOfSpeech: $partOfSpeech, phonetic: $phonetic, exampleEn: $exampleEn, exampleVi: $exampleVi, token: $token)';
}


}

/// @nodoc
abstract mixin class _$UpdateContributionCopyWith<$Res> implements $ContributionEventCopyWith<$Res> {
  factory _$UpdateContributionCopyWith(_UpdateContribution value, $Res Function(_UpdateContribution) _then) = __$UpdateContributionCopyWithImpl;
@useResult
$Res call({
 String id, String uid, String contributorName, String wordEn, String meaningVi, String? topicId, String? partOfSpeech, String? phonetic, String? exampleEn, String? exampleVi, String? token
});




}
/// @nodoc
class __$UpdateContributionCopyWithImpl<$Res>
    implements _$UpdateContributionCopyWith<$Res> {
  __$UpdateContributionCopyWithImpl(this._self, this._then);

  final _UpdateContribution _self;
  final $Res Function(_UpdateContribution) _then;

/// Create a copy of ContributionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? contributorName = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? token = freezed,}) {
  return _then(_UpdateContribution(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
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
mixin _$ContributionState {

 bool get isLoading; bool get isSubmitting; bool get isLookingUp; List<Contribution> get contributions; String get uid; String get displayName; String? get token; DictionaryDetail? get lookedUpDetail; String? get errorMessage; String? get successMessage;
/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributionStateCopyWith<ContributionState> get copyWith => _$ContributionStateCopyWithImpl<ContributionState>(this as ContributionState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ContributionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributionState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.isLookingUp, _this.isLookingUp) || other.isLookingUp == _this.isLookingUp)&&const DeepCollectionEquality().equals(other.contributions, _this.contributions)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.lookedUpDetail, _this.lookedUpDetail) || other.lookedUpDetail == _this.lookedUpDetail)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.successMessage, _this.successMessage) || other.successMessage == _this.successMessage));
}


@override
int get hashCode {
  final _this = this as ContributionState;
  return Object.hash(runtimeType,_this.isLoading,_this.isSubmitting,_this.isLookingUp,const DeepCollectionEquality().hash(_this.contributions),_this.uid,_this.displayName,_this.token,_this.lookedUpDetail,_this.errorMessage,_this.successMessage);
}

@override
String toString() {
  final _this = this as ContributionState;
  return 'ContributionState(isLoading: ${_this.isLoading}, isSubmitting: ${_this.isSubmitting}, isLookingUp: ${_this.isLookingUp}, contributions: ${_this.contributions}, uid: ${_this.uid}, displayName: ${_this.displayName}, token: ${_this.token}, lookedUpDetail: ${_this.lookedUpDetail}, errorMessage: ${_this.errorMessage}, successMessage: ${_this.successMessage})';
}


}

/// @nodoc
abstract mixin class $ContributionStateCopyWith<$Res>  {
  factory $ContributionStateCopyWith(ContributionState value, $Res Function(ContributionState) _then) = _$ContributionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isLookingUp, List<Contribution> contributions, String uid, String displayName, String? token, DictionaryDetail? lookedUpDetail, String? errorMessage, String? successMessage
});


$DictionaryDetailCopyWith<$Res>? get lookedUpDetail;

}
/// @nodoc
class _$ContributionStateCopyWithImpl<$Res>
    implements $ContributionStateCopyWith<$Res> {
  _$ContributionStateCopyWithImpl(this._self, this._then);

  final ContributionState _self;
  final $Res Function(ContributionState) _then;

/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isLookingUp = null,Object? contributions = null,Object? uid = null,Object? displayName = null,Object? token = freezed,Object? lookedUpDetail = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(ContributionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isLookingUp: null == isLookingUp ? _self.isLookingUp : isLookingUp // ignore: cast_nullable_to_non_nullable
as bool,contributions: null == contributions ? _self.contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<Contribution>,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,lookedUpDetail: freezed == lookedUpDetail ? _self.lookedUpDetail : lookedUpDetail // ignore: cast_nullable_to_non_nullable
as DictionaryDetail?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDetailCopyWith<$Res>? get lookedUpDetail {
    if (_self.lookedUpDetail == null) {
    return null;
  }

  return $DictionaryDetailCopyWith<$Res>(_self.lookedUpDetail!, (value) {
    return _then(_self.copyWith(lookedUpDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContributionState].
extension ContributionStatePatterns on ContributionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributionState value)  $default,){
final _that = this;
switch (_that) {
case _ContributionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributionState value)?  $default,){
final _that = this;
switch (_that) {
case _ContributionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isLookingUp,  List<Contribution> contributions,  String uid,  String displayName,  String? token,  DictionaryDetail? lookedUpDetail,  String? errorMessage,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isLookingUp,_that.contributions,_that.uid,_that.displayName,_that.token,_that.lookedUpDetail,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isLookingUp,  List<Contribution> contributions,  String uid,  String displayName,  String? token,  DictionaryDetail? lookedUpDetail,  String? errorMessage,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _ContributionState():
return $default(_that.isLoading,_that.isSubmitting,_that.isLookingUp,_that.contributions,_that.uid,_that.displayName,_that.token,_that.lookedUpDetail,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  bool isLookingUp,  List<Contribution> contributions,  String uid,  String displayName,  String? token,  DictionaryDetail? lookedUpDetail,  String? errorMessage,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _ContributionState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isLookingUp,_that.contributions,_that.uid,_that.displayName,_that.token,_that.lookedUpDetail,_that.errorMessage,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ContributionState implements ContributionState {
  const _ContributionState({this.isLoading = false, this.isSubmitting = false, this.isLookingUp = false,  List<Contribution> contributions = const [], this.uid = '', this.displayName = 'Người Chơi Bufopia', this.token, this.lookedUpDetail, this.errorMessage, this.successMessage}): _contributions = contributions;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isLookingUp;
 final  List<Contribution> _contributions;
@override@JsonKey() List<Contribution> get contributions {
  if (_contributions is EqualUnmodifiableListView) return _contributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contributions);
}

@override@JsonKey() final  String uid;
@override@JsonKey() final  String displayName;
@override final  String? token;
@override final  DictionaryDetail? lookedUpDetail;
@override final  String? errorMessage;
@override final  String? successMessage;

/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributionStateCopyWith<_ContributionState> get copyWith => __$ContributionStateCopyWithImpl<_ContributionState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isLookingUp, isLookingUp) || other.isLookingUp == isLookingUp)&&const DeepCollectionEquality().equals(other.contributions, _contributions)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.token, token) || other.token == token)&&(identical(other.lookedUpDetail, lookedUpDetail) || other.lookedUpDetail == lookedUpDetail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoading,isSubmitting,isLookingUp,const DeepCollectionEquality().hash(_contributions),uid,displayName,token,lookedUpDetail,errorMessage,successMessage);
}

@override
String toString() {
    return 'ContributionState(isLoading: $isLoading, isSubmitting: $isSubmitting, isLookingUp: $isLookingUp, contributions: $contributions, uid: $uid, displayName: $displayName, token: $token, lookedUpDetail: $lookedUpDetail, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$ContributionStateCopyWith<$Res> implements $ContributionStateCopyWith<$Res> {
  factory _$ContributionStateCopyWith(_ContributionState value, $Res Function(_ContributionState) _then) = __$ContributionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isLookingUp, List<Contribution> contributions, String uid, String displayName, String? token, DictionaryDetail? lookedUpDetail, String? errorMessage, String? successMessage
});


@override $DictionaryDetailCopyWith<$Res>? get lookedUpDetail;

}
/// @nodoc
class __$ContributionStateCopyWithImpl<$Res>
    implements _$ContributionStateCopyWith<$Res> {
  __$ContributionStateCopyWithImpl(this._self, this._then);

  final _ContributionState _self;
  final $Res Function(_ContributionState) _then;

/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isLookingUp = null,Object? contributions = null,Object? uid = null,Object? displayName = null,Object? token = freezed,Object? lookedUpDetail = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_ContributionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isLookingUp: null == isLookingUp ? _self.isLookingUp : isLookingUp // ignore: cast_nullable_to_non_nullable
as bool,contributions: null == contributions ? _self._contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<Contribution>,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,lookedUpDetail: freezed == lookedUpDetail ? _self.lookedUpDetail : lookedUpDetail // ignore: cast_nullable_to_non_nullable
as DictionaryDetail?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ContributionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryDetailCopyWith<$Res>? get lookedUpDetail {
    if (_self.lookedUpDetail == null) {
    return null;
  }

  return $DictionaryDetailCopyWith<$Res>(_self.lookedUpDetail!, (value) {
    return _then(_self.copyWith(lookedUpDetail: value));
  });
}
}

// dart format on

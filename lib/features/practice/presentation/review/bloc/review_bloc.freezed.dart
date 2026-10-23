// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ReviewEvent()';
}


}

/// @nodoc
class $ReviewEventCopyWith<$Res>  {
$ReviewEventCopyWith(ReviewEvent _, $Res Function(ReviewEvent) __);
}


/// Adds pattern-matching-related methods to [ReviewEvent].
extension ReviewEventPatterns on ReviewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _AnswerWord value)?  answerWord,TResult Function( _AssessPronunciation value)?  assessPronunciation,TResult Function( _SaveWordToVault value)?  saveWordToVault,TResult Function( _NextWord value)?  nextWord,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _AnswerWord() when answerWord != null:
return answerWord(_that);case _AssessPronunciation() when assessPronunciation != null:
return assessPronunciation(_that);case _SaveWordToVault() when saveWordToVault != null:
return saveWordToVault(_that);case _NextWord() when nextWord != null:
return nextWord(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _AnswerWord value)  answerWord,required TResult Function( _AssessPronunciation value)  assessPronunciation,required TResult Function( _SaveWordToVault value)  saveWordToVault,required TResult Function( _NextWord value)  nextWord,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _AnswerWord():
return answerWord(_that);case _AssessPronunciation():
return assessPronunciation(_that);case _SaveWordToVault():
return saveWordToVault(_that);case _NextWord():
return nextWord(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _AnswerWord value)?  answerWord,TResult? Function( _AssessPronunciation value)?  assessPronunciation,TResult? Function( _SaveWordToVault value)?  saveWordToVault,TResult? Function( _NextWord value)?  nextWord,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _AnswerWord() when answerWord != null:
return answerWord(_that);case _AssessPronunciation() when assessPronunciation != null:
return assessPronunciation(_that);case _SaveWordToVault() when saveWordToVault != null:
return saveWordToVault(_that);case _NextWord() when nextWord != null:
return nextWord(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? uid,  String? token)?  init,TResult Function( String uid,  String wordId,  bool correct,  double seconds,  String? token)?  answerWord,TResult Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)?  assessPronunciation,TResult Function( String uid,  Word word,  String? token)?  saveWordToVault,TResult Function()?  nextWord,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.uid,_that.token);case _AnswerWord() when answerWord != null:
return answerWord(_that.uid,_that.wordId,_that.correct,_that.seconds,_that.token);case _AssessPronunciation() when assessPronunciation != null:
return assessPronunciation(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _SaveWordToVault() when saveWordToVault != null:
return saveWordToVault(_that.uid,_that.word,_that.token);case _NextWord() when nextWord != null:
return nextWord();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? uid,  String? token)  init,required TResult Function( String uid,  String wordId,  bool correct,  double seconds,  String? token)  answerWord,required TResult Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)  assessPronunciation,required TResult Function( String uid,  Word word,  String? token)  saveWordToVault,required TResult Function()  nextWord,}) {final _that = this;
switch (_that) {
case _Init():
return init(_that.uid,_that.token);case _AnswerWord():
return answerWord(_that.uid,_that.wordId,_that.correct,_that.seconds,_that.token);case _AssessPronunciation():
return assessPronunciation(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _SaveWordToVault():
return saveWordToVault(_that.uid,_that.word,_that.token);case _NextWord():
return nextWord();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? uid,  String? token)?  init,TResult? Function( String uid,  String wordId,  bool correct,  double seconds,  String? token)?  answerWord,TResult? Function( String uid,  File audioFile,  String referenceText,  String language,  String? token)?  assessPronunciation,TResult? Function( String uid,  Word word,  String? token)?  saveWordToVault,TResult? Function()?  nextWord,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.uid,_that.token);case _AnswerWord() when answerWord != null:
return answerWord(_that.uid,_that.wordId,_that.correct,_that.seconds,_that.token);case _AssessPronunciation() when assessPronunciation != null:
return assessPronunciation(_that.uid,_that.audioFile,_that.referenceText,_that.language,_that.token);case _SaveWordToVault() when saveWordToVault != null:
return saveWordToVault(_that.uid,_that.word,_that.token);case _NextWord() when nextWord != null:
return nextWord();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements ReviewEvent {
  const _Init({this.uid, this.token});
  

 final  String? uid;
 final  String? token;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,token);
}

@override
String toString() {
    return 'ReviewEvent.init(uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 String? uid, String? token
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? token = freezed,}) {
  return _then(_Init(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AnswerWord implements ReviewEvent {
  const _AnswerWord({required this.uid, required this.wordId, required this.correct, required this.seconds, this.token});
  

 final  String uid;
 final  String wordId;
 final  bool correct;
 final  double seconds;
 final  String? token;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerWordCopyWith<_AnswerWord> get copyWith => __$AnswerWordCopyWithImpl<_AnswerWord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerWord&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,wordId,correct,seconds,token);
}

@override
String toString() {
    return 'ReviewEvent.answerWord(uid: $uid, wordId: $wordId, correct: $correct, seconds: $seconds, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AnswerWordCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$AnswerWordCopyWith(_AnswerWord value, $Res Function(_AnswerWord) _then) = __$AnswerWordCopyWithImpl;
@useResult
$Res call({
 String uid, String wordId, bool correct, double seconds, String? token
});




}
/// @nodoc
class __$AnswerWordCopyWithImpl<$Res>
    implements _$AnswerWordCopyWith<$Res> {
  __$AnswerWordCopyWithImpl(this._self, this._then);

  final _AnswerWord _self;
  final $Res Function(_AnswerWord) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? wordId = null,Object? correct = null,Object? seconds = null,Object? token = freezed,}) {
  return _then(_AnswerWord(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool,seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AssessPronunciation implements ReviewEvent {
  const _AssessPronunciation({required this.uid, required this.audioFile, required this.referenceText, this.language = 'en-US', this.token});
  

 final  String uid;
 final  File audioFile;
 final  String referenceText;
@JsonKey() final  String language;
 final  String? token;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessPronunciationCopyWith<_AssessPronunciation> get copyWith => __$AssessPronunciationCopyWithImpl<_AssessPronunciation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessPronunciation&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile)&&(identical(other.referenceText, referenceText) || other.referenceText == referenceText)&&(identical(other.language, language) || other.language == language)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,audioFile,referenceText,language,token);
}

@override
String toString() {
    return 'ReviewEvent.assessPronunciation(uid: $uid, audioFile: $audioFile, referenceText: $referenceText, language: $language, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AssessPronunciationCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$AssessPronunciationCopyWith(_AssessPronunciation value, $Res Function(_AssessPronunciation) _then) = __$AssessPronunciationCopyWithImpl;
@useResult
$Res call({
 String uid, File audioFile, String referenceText, String language, String? token
});




}
/// @nodoc
class __$AssessPronunciationCopyWithImpl<$Res>
    implements _$AssessPronunciationCopyWith<$Res> {
  __$AssessPronunciationCopyWithImpl(this._self, this._then);

  final _AssessPronunciation _self;
  final $Res Function(_AssessPronunciation) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? audioFile = null,Object? referenceText = null,Object? language = null,Object? token = freezed,}) {
  return _then(_AssessPronunciation(
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


class _SaveWordToVault implements ReviewEvent {
  const _SaveWordToVault({required this.uid, required this.word, this.token});
  

 final  String uid;
 final  Word word;
 final  String? token;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveWordToVaultCopyWith<_SaveWordToVault> get copyWith => __$SaveWordToVaultCopyWithImpl<_SaveWordToVault>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveWordToVault&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.word, word) || other.word == word)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,word,token);
}

@override
String toString() {
    return 'ReviewEvent.saveWordToVault(uid: $uid, word: $word, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SaveWordToVaultCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$SaveWordToVaultCopyWith(_SaveWordToVault value, $Res Function(_SaveWordToVault) _then) = __$SaveWordToVaultCopyWithImpl;
@useResult
$Res call({
 String uid, Word word, String? token
});


$WordCopyWith<$Res> get word;

}
/// @nodoc
class __$SaveWordToVaultCopyWithImpl<$Res>
    implements _$SaveWordToVaultCopyWith<$Res> {
  __$SaveWordToVaultCopyWithImpl(this._self, this._then);

  final _SaveWordToVault _self;
  final $Res Function(_SaveWordToVault) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? word = null,Object? token = freezed,}) {
  return _then(_SaveWordToVault(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as Word,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get word {
  
  return $WordCopyWith<$Res>(_self.word, (value) {
    return _then(_self.copyWith(word: value));
  });
}
}

/// @nodoc


class _NextWord implements ReviewEvent {
  const _NextWord();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextWord);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ReviewEvent.nextWord()';
}


}




/// @nodoc
mixin _$ReviewState {

 bool get isLoading; bool get isActionLoading; bool get isSavingVault; bool get isAssessingPronunciation; List<WordMemory> get weakWords; Map<String, Word> get vocabMap; String get uid; String? get token; int get currentWordIndex; PronunciationAssessment? get pronunciationAssessment; String? get errorMessage; String? get successMessage;
/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStateCopyWith<ReviewState> get copyWith => _$ReviewStateCopyWithImpl<ReviewState>(this as ReviewState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReviewState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isActionLoading, _this.isActionLoading) || other.isActionLoading == _this.isActionLoading)&&(identical(other.isSavingVault, _this.isSavingVault) || other.isSavingVault == _this.isSavingVault)&&(identical(other.isAssessingPronunciation, _this.isAssessingPronunciation) || other.isAssessingPronunciation == _this.isAssessingPronunciation)&&const DeepCollectionEquality().equals(other.weakWords, _this.weakWords)&&const DeepCollectionEquality().equals(other.vocabMap, _this.vocabMap)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.currentWordIndex, _this.currentWordIndex) || other.currentWordIndex == _this.currentWordIndex)&&(identical(other.pronunciationAssessment, _this.pronunciationAssessment) || other.pronunciationAssessment == _this.pronunciationAssessment)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.successMessage, _this.successMessage) || other.successMessage == _this.successMessage));
}


@override
int get hashCode {
  final _this = this as ReviewState;
  return Object.hash(runtimeType,_this.isLoading,_this.isActionLoading,_this.isSavingVault,_this.isAssessingPronunciation,const DeepCollectionEquality().hash(_this.weakWords),const DeepCollectionEquality().hash(_this.vocabMap),_this.uid,_this.token,_this.currentWordIndex,_this.pronunciationAssessment,_this.errorMessage,_this.successMessage);
}

@override
String toString() {
  final _this = this as ReviewState;
  return 'ReviewState(isLoading: ${_this.isLoading}, isActionLoading: ${_this.isActionLoading}, isSavingVault: ${_this.isSavingVault}, isAssessingPronunciation: ${_this.isAssessingPronunciation}, weakWords: ${_this.weakWords}, vocabMap: ${_this.vocabMap}, uid: ${_this.uid}, token: ${_this.token}, currentWordIndex: ${_this.currentWordIndex}, pronunciationAssessment: ${_this.pronunciationAssessment}, errorMessage: ${_this.errorMessage}, successMessage: ${_this.successMessage})';
}


}

/// @nodoc
abstract mixin class $ReviewStateCopyWith<$Res>  {
  factory $ReviewStateCopyWith(ReviewState value, $Res Function(ReviewState) _then) = _$ReviewStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isActionLoading, bool isSavingVault, bool isAssessingPronunciation, List<WordMemory> weakWords, Map<String, Word> vocabMap, String uid, String? token, int currentWordIndex, PronunciationAssessment? pronunciationAssessment, String? errorMessage, String? successMessage
});


$PronunciationAssessmentCopyWith<$Res>? get pronunciationAssessment;

}
/// @nodoc
class _$ReviewStateCopyWithImpl<$Res>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._self, this._then);

  final ReviewState _self;
  final $Res Function(ReviewState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isActionLoading = null,Object? isSavingVault = null,Object? isAssessingPronunciation = null,Object? weakWords = null,Object? vocabMap = null,Object? uid = null,Object? token = freezed,Object? currentWordIndex = null,Object? pronunciationAssessment = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(ReviewState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,isSavingVault: null == isSavingVault ? _self.isSavingVault : isSavingVault // ignore: cast_nullable_to_non_nullable
as bool,isAssessingPronunciation: null == isAssessingPronunciation ? _self.isAssessingPronunciation : isAssessingPronunciation // ignore: cast_nullable_to_non_nullable
as bool,weakWords: null == weakWords ? _self.weakWords : weakWords // ignore: cast_nullable_to_non_nullable
as List<WordMemory>,vocabMap: null == vocabMap ? _self.vocabMap : vocabMap // ignore: cast_nullable_to_non_nullable
as Map<String, Word>,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,currentWordIndex: null == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int,pronunciationAssessment: freezed == pronunciationAssessment ? _self.pronunciationAssessment : pronunciationAssessment // ignore: cast_nullable_to_non_nullable
as PronunciationAssessment?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationAssessmentCopyWith<$Res>? get pronunciationAssessment {
    if (_self.pronunciationAssessment == null) {
    return null;
  }

  return $PronunciationAssessmentCopyWith<$Res>(_self.pronunciationAssessment!, (value) {
    return _then(_self.copyWith(pronunciationAssessment: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewState].
extension ReviewStatePatterns on ReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isActionLoading,  bool isSavingVault,  bool isAssessingPronunciation,  List<WordMemory> weakWords,  Map<String, Word> vocabMap,  String uid,  String? token,  int currentWordIndex,  PronunciationAssessment? pronunciationAssessment,  String? errorMessage,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
return $default(_that.isLoading,_that.isActionLoading,_that.isSavingVault,_that.isAssessingPronunciation,_that.weakWords,_that.vocabMap,_that.uid,_that.token,_that.currentWordIndex,_that.pronunciationAssessment,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isActionLoading,  bool isSavingVault,  bool isAssessingPronunciation,  List<WordMemory> weakWords,  Map<String, Word> vocabMap,  String uid,  String? token,  int currentWordIndex,  PronunciationAssessment? pronunciationAssessment,  String? errorMessage,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _ReviewState():
return $default(_that.isLoading,_that.isActionLoading,_that.isSavingVault,_that.isAssessingPronunciation,_that.weakWords,_that.vocabMap,_that.uid,_that.token,_that.currentWordIndex,_that.pronunciationAssessment,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isActionLoading,  bool isSavingVault,  bool isAssessingPronunciation,  List<WordMemory> weakWords,  Map<String, Word> vocabMap,  String uid,  String? token,  int currentWordIndex,  PronunciationAssessment? pronunciationAssessment,  String? errorMessage,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
return $default(_that.isLoading,_that.isActionLoading,_that.isSavingVault,_that.isAssessingPronunciation,_that.weakWords,_that.vocabMap,_that.uid,_that.token,_that.currentWordIndex,_that.pronunciationAssessment,_that.errorMessage,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewState implements ReviewState {
  const _ReviewState({this.isLoading = false, this.isActionLoading = false, this.isSavingVault = false, this.isAssessingPronunciation = false,  List<WordMemory> weakWords = const [],  Map<String, Word> vocabMap = const {}, this.uid = '', this.token, this.currentWordIndex = 0, this.pronunciationAssessment, this.errorMessage, this.successMessage}): _weakWords = weakWords,_vocabMap = vocabMap;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isActionLoading;
@override@JsonKey() final  bool isSavingVault;
@override@JsonKey() final  bool isAssessingPronunciation;
 final  List<WordMemory> _weakWords;
@override@JsonKey() List<WordMemory> get weakWords {
  if (_weakWords is EqualUnmodifiableListView) return _weakWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weakWords);
}

 final  Map<String, Word> _vocabMap;
@override@JsonKey() Map<String, Word> get vocabMap {
  if (_vocabMap is EqualUnmodifiableMapView) return _vocabMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vocabMap);
}

@override@JsonKey() final  String uid;
@override final  String? token;
@override@JsonKey() final  int currentWordIndex;
@override final  PronunciationAssessment? pronunciationAssessment;
@override final  String? errorMessage;
@override final  String? successMessage;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewStateCopyWith<_ReviewState> get copyWith => __$ReviewStateCopyWithImpl<_ReviewState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.isSavingVault, isSavingVault) || other.isSavingVault == isSavingVault)&&(identical(other.isAssessingPronunciation, isAssessingPronunciation) || other.isAssessingPronunciation == isAssessingPronunciation)&&const DeepCollectionEquality().equals(other.weakWords, _weakWords)&&const DeepCollectionEquality().equals(other.vocabMap, _vocabMap)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token)&&(identical(other.currentWordIndex, currentWordIndex) || other.currentWordIndex == currentWordIndex)&&(identical(other.pronunciationAssessment, pronunciationAssessment) || other.pronunciationAssessment == pronunciationAssessment)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoading,isActionLoading,isSavingVault,isAssessingPronunciation,const DeepCollectionEquality().hash(_weakWords),const DeepCollectionEquality().hash(_vocabMap),uid,token,currentWordIndex,pronunciationAssessment,errorMessage,successMessage);
}

@override
String toString() {
    return 'ReviewState(isLoading: $isLoading, isActionLoading: $isActionLoading, isSavingVault: $isSavingVault, isAssessingPronunciation: $isAssessingPronunciation, weakWords: $weakWords, vocabMap: $vocabMap, uid: $uid, token: $token, currentWordIndex: $currentWordIndex, pronunciationAssessment: $pronunciationAssessment, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$ReviewStateCopyWith<$Res> implements $ReviewStateCopyWith<$Res> {
  factory _$ReviewStateCopyWith(_ReviewState value, $Res Function(_ReviewState) _then) = __$ReviewStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isActionLoading, bool isSavingVault, bool isAssessingPronunciation, List<WordMemory> weakWords, Map<String, Word> vocabMap, String uid, String? token, int currentWordIndex, PronunciationAssessment? pronunciationAssessment, String? errorMessage, String? successMessage
});


@override $PronunciationAssessmentCopyWith<$Res>? get pronunciationAssessment;

}
/// @nodoc
class __$ReviewStateCopyWithImpl<$Res>
    implements _$ReviewStateCopyWith<$Res> {
  __$ReviewStateCopyWithImpl(this._self, this._then);

  final _ReviewState _self;
  final $Res Function(_ReviewState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isActionLoading = null,Object? isSavingVault = null,Object? isAssessingPronunciation = null,Object? weakWords = null,Object? vocabMap = null,Object? uid = null,Object? token = freezed,Object? currentWordIndex = null,Object? pronunciationAssessment = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_ReviewState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,isSavingVault: null == isSavingVault ? _self.isSavingVault : isSavingVault // ignore: cast_nullable_to_non_nullable
as bool,isAssessingPronunciation: null == isAssessingPronunciation ? _self.isAssessingPronunciation : isAssessingPronunciation // ignore: cast_nullable_to_non_nullable
as bool,weakWords: null == weakWords ? _self._weakWords : weakWords // ignore: cast_nullable_to_non_nullable
as List<WordMemory>,vocabMap: null == vocabMap ? _self._vocabMap : vocabMap // ignore: cast_nullable_to_non_nullable
as Map<String, Word>,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,currentWordIndex: null == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int,pronunciationAssessment: freezed == pronunciationAssessment ? _self.pronunciationAssessment : pronunciationAssessment // ignore: cast_nullable_to_non_nullable
as PronunciationAssessment?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationAssessmentCopyWith<$Res>? get pronunciationAssessment {
    if (_self.pronunciationAssessment == null) {
    return null;
  }

  return $PronunciationAssessmentCopyWith<$Res>(_self.pronunciationAssessment!, (value) {
    return _then(_self.copyWith(pronunciationAssessment: value));
  });
}
}

// dart format on

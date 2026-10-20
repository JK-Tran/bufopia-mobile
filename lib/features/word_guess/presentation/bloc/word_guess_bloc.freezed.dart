// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_guess_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordGuessEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WordGuessEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent()';
}


}

/// @nodoc
class $WordGuessEventCopyWith<$Res>  {
$WordGuessEventCopyWith(WordGuessEvent _, $Res Function(WordGuessEvent) __);
}


/// Adds pattern-matching-related methods to [WordGuessEvent].
extension WordGuessEventPatterns on WordGuessEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartPractice value)?  startPractice,TResult Function( _SubmitPracticeAnswer value)?  submitPracticeAnswer,TResult Function( _SkipPracticeQuestion value)?  skipPracticeQuestion,TResult Function( _AutoHintTick value)?  autoHintTick,TResult Function( _StartOnlineMatchmake value)?  startOnlineMatchmake,TResult Function( _CancelMatchmake value)?  cancelMatchmake,TResult Function( _JoinRoom value)?  joinRoom,TResult Function( _ToggleReady value)?  toggleReady,TResult Function( _StartGame value)?  startGame,TResult Function( _UpdateConfig value)?  updateConfig,TResult Function( _SubmitGuess value)?  submitGuess,TResult Function( _SkipWord value)?  skipWord,TResult Function( _VoteSkip value)?  voteSkip,TResult Function( _EndGame value)?  endGame,TResult Function( _SendChat value)?  sendChat,TResult Function( _RestartGame value)?  restartGame,TResult Function( _LeaveGame value)?  leaveGame,TResult Function( _InputWordChanged value)?  inputWordChanged,TResult Function( _Tick value)?  tick,TResult Function( _DelayNextRoundFinished value)?  delayNextRoundFinished,TResult Function( _GameEventReceived value)?  gameEventReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartPractice() when startPractice != null:
return startPractice(_that);case _SubmitPracticeAnswer() when submitPracticeAnswer != null:
return submitPracticeAnswer(_that);case _SkipPracticeQuestion() when skipPracticeQuestion != null:
return skipPracticeQuestion(_that);case _AutoHintTick() when autoHintTick != null:
return autoHintTick(_that);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that);case _CancelMatchmake() when cancelMatchmake != null:
return cancelMatchmake(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _ToggleReady() when toggleReady != null:
return toggleReady(_that);case _StartGame() when startGame != null:
return startGame(_that);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that);case _SubmitGuess() when submitGuess != null:
return submitGuess(_that);case _SkipWord() when skipWord != null:
return skipWord(_that);case _VoteSkip() when voteSkip != null:
return voteSkip(_that);case _EndGame() when endGame != null:
return endGame(_that);case _SendChat() when sendChat != null:
return sendChat(_that);case _RestartGame() when restartGame != null:
return restartGame(_that);case _LeaveGame() when leaveGame != null:
return leaveGame(_that);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that);case _Tick() when tick != null:
return tick(_that);case _DelayNextRoundFinished() when delayNextRoundFinished != null:
return delayNextRoundFinished(_that);case _GameEventReceived() when gameEventReceived != null:
return gameEventReceived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartPractice value)  startPractice,required TResult Function( _SubmitPracticeAnswer value)  submitPracticeAnswer,required TResult Function( _SkipPracticeQuestion value)  skipPracticeQuestion,required TResult Function( _AutoHintTick value)  autoHintTick,required TResult Function( _StartOnlineMatchmake value)  startOnlineMatchmake,required TResult Function( _CancelMatchmake value)  cancelMatchmake,required TResult Function( _JoinRoom value)  joinRoom,required TResult Function( _ToggleReady value)  toggleReady,required TResult Function( _StartGame value)  startGame,required TResult Function( _UpdateConfig value)  updateConfig,required TResult Function( _SubmitGuess value)  submitGuess,required TResult Function( _SkipWord value)  skipWord,required TResult Function( _VoteSkip value)  voteSkip,required TResult Function( _EndGame value)  endGame,required TResult Function( _SendChat value)  sendChat,required TResult Function( _RestartGame value)  restartGame,required TResult Function( _LeaveGame value)  leaveGame,required TResult Function( _InputWordChanged value)  inputWordChanged,required TResult Function( _Tick value)  tick,required TResult Function( _DelayNextRoundFinished value)  delayNextRoundFinished,required TResult Function( _GameEventReceived value)  gameEventReceived,}){
final _that = this;
switch (_that) {
case _StartPractice():
return startPractice(_that);case _SubmitPracticeAnswer():
return submitPracticeAnswer(_that);case _SkipPracticeQuestion():
return skipPracticeQuestion(_that);case _AutoHintTick():
return autoHintTick(_that);case _StartOnlineMatchmake():
return startOnlineMatchmake(_that);case _CancelMatchmake():
return cancelMatchmake(_that);case _JoinRoom():
return joinRoom(_that);case _ToggleReady():
return toggleReady(_that);case _StartGame():
return startGame(_that);case _UpdateConfig():
return updateConfig(_that);case _SubmitGuess():
return submitGuess(_that);case _SkipWord():
return skipWord(_that);case _VoteSkip():
return voteSkip(_that);case _EndGame():
return endGame(_that);case _SendChat():
return sendChat(_that);case _RestartGame():
return restartGame(_that);case _LeaveGame():
return leaveGame(_that);case _InputWordChanged():
return inputWordChanged(_that);case _Tick():
return tick(_that);case _DelayNextRoundFinished():
return delayNextRoundFinished(_that);case _GameEventReceived():
return gameEventReceived(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartPractice value)?  startPractice,TResult? Function( _SubmitPracticeAnswer value)?  submitPracticeAnswer,TResult? Function( _SkipPracticeQuestion value)?  skipPracticeQuestion,TResult? Function( _AutoHintTick value)?  autoHintTick,TResult? Function( _StartOnlineMatchmake value)?  startOnlineMatchmake,TResult? Function( _CancelMatchmake value)?  cancelMatchmake,TResult? Function( _JoinRoom value)?  joinRoom,TResult? Function( _ToggleReady value)?  toggleReady,TResult? Function( _StartGame value)?  startGame,TResult? Function( _UpdateConfig value)?  updateConfig,TResult? Function( _SubmitGuess value)?  submitGuess,TResult? Function( _SkipWord value)?  skipWord,TResult? Function( _VoteSkip value)?  voteSkip,TResult? Function( _EndGame value)?  endGame,TResult? Function( _SendChat value)?  sendChat,TResult? Function( _RestartGame value)?  restartGame,TResult? Function( _LeaveGame value)?  leaveGame,TResult? Function( _InputWordChanged value)?  inputWordChanged,TResult? Function( _Tick value)?  tick,TResult? Function( _DelayNextRoundFinished value)?  delayNextRoundFinished,TResult? Function( _GameEventReceived value)?  gameEventReceived,}){
final _that = this;
switch (_that) {
case _StartPractice() when startPractice != null:
return startPractice(_that);case _SubmitPracticeAnswer() when submitPracticeAnswer != null:
return submitPracticeAnswer(_that);case _SkipPracticeQuestion() when skipPracticeQuestion != null:
return skipPracticeQuestion(_that);case _AutoHintTick() when autoHintTick != null:
return autoHintTick(_that);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that);case _CancelMatchmake() when cancelMatchmake != null:
return cancelMatchmake(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _ToggleReady() when toggleReady != null:
return toggleReady(_that);case _StartGame() when startGame != null:
return startGame(_that);case _UpdateConfig() when updateConfig != null:
return updateConfig(_that);case _SubmitGuess() when submitGuess != null:
return submitGuess(_that);case _SkipWord() when skipWord != null:
return skipWord(_that);case _VoteSkip() when voteSkip != null:
return voteSkip(_that);case _EndGame() when endGame != null:
return endGame(_that);case _SendChat() when sendChat != null:
return sendChat(_that);case _RestartGame() when restartGame != null:
return restartGame(_that);case _LeaveGame() when leaveGame != null:
return leaveGame(_that);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that);case _Tick() when tick != null:
return tick(_that);case _DelayNextRoundFinished() when delayNextRoundFinished != null:
return delayNextRoundFinished(_that);case _GameEventReceived() when gameEventReceived != null:
return gameEventReceived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String topic,  String? uid,  int count)?  startPractice,TResult Function()?  submitPracticeAnswer,TResult Function()?  skipPracticeQuestion,TResult Function()?  autoHintTick,TResult Function( String uid,  String name,  String topic,  String? avatar,  String? token)?  startOnlineMatchmake,TResult Function()?  cancelMatchmake,TResult Function( String roomCode,  String uid,  String name,  String? avatar,  String? token)?  joinRoom,TResult Function()?  toggleReady,TResult Function()?  startGame,TResult Function( String? topicId,  int? durationSeconds)?  updateConfig,TResult Function()?  submitGuess,TResult Function()?  skipWord,TResult Function( String proposalId,  bool agree)?  voteSkip,TResult Function()?  endGame,TResult Function( String text)?  sendChat,TResult Function()?  restartGame,TResult Function()?  leaveGame,TResult Function( String word)?  inputWordChanged,TResult Function()?  tick,TResult Function()?  delayNextRoundFinished,TResult Function( GameEvent event)?  gameEventReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartPractice() when startPractice != null:
return startPractice(_that.topic,_that.uid,_that.count);case _SubmitPracticeAnswer() when submitPracticeAnswer != null:
return submitPracticeAnswer();case _SkipPracticeQuestion() when skipPracticeQuestion != null:
return skipPracticeQuestion();case _AutoHintTick() when autoHintTick != null:
return autoHintTick();case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that.uid,_that.name,_that.topic,_that.avatar,_that.token);case _CancelMatchmake() when cancelMatchmake != null:
return cancelMatchmake();case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.token);case _ToggleReady() when toggleReady != null:
return toggleReady();case _StartGame() when startGame != null:
return startGame();case _UpdateConfig() when updateConfig != null:
return updateConfig(_that.topicId,_that.durationSeconds);case _SubmitGuess() when submitGuess != null:
return submitGuess();case _SkipWord() when skipWord != null:
return skipWord();case _VoteSkip() when voteSkip != null:
return voteSkip(_that.proposalId,_that.agree);case _EndGame() when endGame != null:
return endGame();case _SendChat() when sendChat != null:
return sendChat(_that.text);case _RestartGame() when restartGame != null:
return restartGame();case _LeaveGame() when leaveGame != null:
return leaveGame();case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that.word);case _Tick() when tick != null:
return tick();case _DelayNextRoundFinished() when delayNextRoundFinished != null:
return delayNextRoundFinished();case _GameEventReceived() when gameEventReceived != null:
return gameEventReceived(_that.event);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String topic,  String? uid,  int count)  startPractice,required TResult Function()  submitPracticeAnswer,required TResult Function()  skipPracticeQuestion,required TResult Function()  autoHintTick,required TResult Function( String uid,  String name,  String topic,  String? avatar,  String? token)  startOnlineMatchmake,required TResult Function()  cancelMatchmake,required TResult Function( String roomCode,  String uid,  String name,  String? avatar,  String? token)  joinRoom,required TResult Function()  toggleReady,required TResult Function()  startGame,required TResult Function( String? topicId,  int? durationSeconds)  updateConfig,required TResult Function()  submitGuess,required TResult Function()  skipWord,required TResult Function( String proposalId,  bool agree)  voteSkip,required TResult Function()  endGame,required TResult Function( String text)  sendChat,required TResult Function()  restartGame,required TResult Function()  leaveGame,required TResult Function( String word)  inputWordChanged,required TResult Function()  tick,required TResult Function()  delayNextRoundFinished,required TResult Function( GameEvent event)  gameEventReceived,}) {final _that = this;
switch (_that) {
case _StartPractice():
return startPractice(_that.topic,_that.uid,_that.count);case _SubmitPracticeAnswer():
return submitPracticeAnswer();case _SkipPracticeQuestion():
return skipPracticeQuestion();case _AutoHintTick():
return autoHintTick();case _StartOnlineMatchmake():
return startOnlineMatchmake(_that.uid,_that.name,_that.topic,_that.avatar,_that.token);case _CancelMatchmake():
return cancelMatchmake();case _JoinRoom():
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.token);case _ToggleReady():
return toggleReady();case _StartGame():
return startGame();case _UpdateConfig():
return updateConfig(_that.topicId,_that.durationSeconds);case _SubmitGuess():
return submitGuess();case _SkipWord():
return skipWord();case _VoteSkip():
return voteSkip(_that.proposalId,_that.agree);case _EndGame():
return endGame();case _SendChat():
return sendChat(_that.text);case _RestartGame():
return restartGame();case _LeaveGame():
return leaveGame();case _InputWordChanged():
return inputWordChanged(_that.word);case _Tick():
return tick();case _DelayNextRoundFinished():
return delayNextRoundFinished();case _GameEventReceived():
return gameEventReceived(_that.event);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String topic,  String? uid,  int count)?  startPractice,TResult? Function()?  submitPracticeAnswer,TResult? Function()?  skipPracticeQuestion,TResult? Function()?  autoHintTick,TResult? Function( String uid,  String name,  String topic,  String? avatar,  String? token)?  startOnlineMatchmake,TResult? Function()?  cancelMatchmake,TResult? Function( String roomCode,  String uid,  String name,  String? avatar,  String? token)?  joinRoom,TResult? Function()?  toggleReady,TResult? Function()?  startGame,TResult? Function( String? topicId,  int? durationSeconds)?  updateConfig,TResult? Function()?  submitGuess,TResult? Function()?  skipWord,TResult? Function( String proposalId,  bool agree)?  voteSkip,TResult? Function()?  endGame,TResult? Function( String text)?  sendChat,TResult? Function()?  restartGame,TResult? Function()?  leaveGame,TResult? Function( String word)?  inputWordChanged,TResult? Function()?  tick,TResult? Function()?  delayNextRoundFinished,TResult? Function( GameEvent event)?  gameEventReceived,}) {final _that = this;
switch (_that) {
case _StartPractice() when startPractice != null:
return startPractice(_that.topic,_that.uid,_that.count);case _SubmitPracticeAnswer() when submitPracticeAnswer != null:
return submitPracticeAnswer();case _SkipPracticeQuestion() when skipPracticeQuestion != null:
return skipPracticeQuestion();case _AutoHintTick() when autoHintTick != null:
return autoHintTick();case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that.uid,_that.name,_that.topic,_that.avatar,_that.token);case _CancelMatchmake() when cancelMatchmake != null:
return cancelMatchmake();case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.token);case _ToggleReady() when toggleReady != null:
return toggleReady();case _StartGame() when startGame != null:
return startGame();case _UpdateConfig() when updateConfig != null:
return updateConfig(_that.topicId,_that.durationSeconds);case _SubmitGuess() when submitGuess != null:
return submitGuess();case _SkipWord() when skipWord != null:
return skipWord();case _VoteSkip() when voteSkip != null:
return voteSkip(_that.proposalId,_that.agree);case _EndGame() when endGame != null:
return endGame();case _SendChat() when sendChat != null:
return sendChat(_that.text);case _RestartGame() when restartGame != null:
return restartGame();case _LeaveGame() when leaveGame != null:
return leaveGame();case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that.word);case _Tick() when tick != null:
return tick();case _DelayNextRoundFinished() when delayNextRoundFinished != null:
return delayNextRoundFinished();case _GameEventReceived() when gameEventReceived != null:
return gameEventReceived(_that.event);case _:
  return null;

}
}

}

/// @nodoc


class _StartPractice implements WordGuessEvent {
  const _StartPractice({required this.topic, this.uid, this.count = 20});
  

 final  String topic;
 final  String? uid;
@JsonKey() final  int count;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartPracticeCopyWith<_StartPractice> get copyWith => __$StartPracticeCopyWithImpl<_StartPractice>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartPractice&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode {
    return Object.hash(runtimeType,topic,uid,count);
}

@override
String toString() {
    return 'WordGuessEvent.startPractice(topic: $topic, uid: $uid, count: $count)';
}


}

/// @nodoc
abstract mixin class _$StartPracticeCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$StartPracticeCopyWith(_StartPractice value, $Res Function(_StartPractice) _then) = __$StartPracticeCopyWithImpl;
@useResult
$Res call({
 String topic, String? uid, int count
});




}
/// @nodoc
class __$StartPracticeCopyWithImpl<$Res>
    implements _$StartPracticeCopyWith<$Res> {
  __$StartPracticeCopyWithImpl(this._self, this._then);

  final _StartPractice _self;
  final $Res Function(_StartPractice) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topic = null,Object? uid = freezed,Object? count = null,}) {
  return _then(_StartPractice(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SubmitPracticeAnswer implements WordGuessEvent {
  const _SubmitPracticeAnswer();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPracticeAnswer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.submitPracticeAnswer()';
}


}




/// @nodoc


class _SkipPracticeQuestion implements WordGuessEvent {
  const _SkipPracticeQuestion();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipPracticeQuestion);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.skipPracticeQuestion()';
}


}




/// @nodoc


class _AutoHintTick implements WordGuessEvent {
  const _AutoHintTick();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutoHintTick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.autoHintTick()';
}


}




/// @nodoc


class _StartOnlineMatchmake implements WordGuessEvent {
  const _StartOnlineMatchmake({required this.uid, required this.name, required this.topic, this.avatar, this.token});
  

 final  String uid;
 final  String name;
 final  String topic;
 final  String? avatar;
 final  String? token;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartOnlineMatchmakeCopyWith<_StartOnlineMatchmake> get copyWith => __$StartOnlineMatchmakeCopyWithImpl<_StartOnlineMatchmake>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartOnlineMatchmake&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,topic,avatar,token);
}

@override
String toString() {
    return 'WordGuessEvent.startOnlineMatchmake(uid: $uid, name: $name, topic: $topic, avatar: $avatar, token: $token)';
}


}

/// @nodoc
abstract mixin class _$StartOnlineMatchmakeCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$StartOnlineMatchmakeCopyWith(_StartOnlineMatchmake value, $Res Function(_StartOnlineMatchmake) _then) = __$StartOnlineMatchmakeCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String topic, String? avatar, String? token
});




}
/// @nodoc
class __$StartOnlineMatchmakeCopyWithImpl<$Res>
    implements _$StartOnlineMatchmakeCopyWith<$Res> {
  __$StartOnlineMatchmakeCopyWithImpl(this._self, this._then);

  final _StartOnlineMatchmake _self;
  final $Res Function(_StartOnlineMatchmake) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? topic = null,Object? avatar = freezed,Object? token = freezed,}) {
  return _then(_StartOnlineMatchmake(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _CancelMatchmake implements WordGuessEvent {
  const _CancelMatchmake();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelMatchmake);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.cancelMatchmake()';
}


}




/// @nodoc


class _JoinRoom implements WordGuessEvent {
  const _JoinRoom({required this.roomCode, required this.uid, required this.name, this.avatar, this.token});
  

 final  String roomCode;
 final  String uid;
 final  String name;
 final  String? avatar;
 final  String? token;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinRoomCopyWith<_JoinRoom> get copyWith => __$JoinRoomCopyWithImpl<_JoinRoom>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinRoom&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,uid,name,avatar,token);
}

@override
String toString() {
    return 'WordGuessEvent.joinRoom(roomCode: $roomCode, uid: $uid, name: $name, avatar: $avatar, token: $token)';
}


}

/// @nodoc
abstract mixin class _$JoinRoomCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$JoinRoomCopyWith(_JoinRoom value, $Res Function(_JoinRoom) _then) = __$JoinRoomCopyWithImpl;
@useResult
$Res call({
 String roomCode, String uid, String name, String? avatar, String? token
});




}
/// @nodoc
class __$JoinRoomCopyWithImpl<$Res>
    implements _$JoinRoomCopyWith<$Res> {
  __$JoinRoomCopyWithImpl(this._self, this._then);

  final _JoinRoom _self;
  final $Res Function(_JoinRoom) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? uid = null,Object? name = null,Object? avatar = freezed,Object? token = freezed,}) {
  return _then(_JoinRoom(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ToggleReady implements WordGuessEvent {
  const _ToggleReady();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleReady);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.toggleReady()';
}


}




/// @nodoc


class _StartGame implements WordGuessEvent {
  const _StartGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.startGame()';
}


}




/// @nodoc


class _UpdateConfig implements WordGuessEvent {
  const _UpdateConfig({this.topicId, this.durationSeconds});
  

 final  String? topicId;
 final  int? durationSeconds;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateConfigCopyWith<_UpdateConfig> get copyWith => __$UpdateConfigCopyWithImpl<_UpdateConfig>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateConfig&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,topicId,durationSeconds);
}

@override
String toString() {
    return 'WordGuessEvent.updateConfig(topicId: $topicId, durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class _$UpdateConfigCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$UpdateConfigCopyWith(_UpdateConfig value, $Res Function(_UpdateConfig) _then) = __$UpdateConfigCopyWithImpl;
@useResult
$Res call({
 String? topicId, int? durationSeconds
});




}
/// @nodoc
class __$UpdateConfigCopyWithImpl<$Res>
    implements _$UpdateConfigCopyWith<$Res> {
  __$UpdateConfigCopyWithImpl(this._self, this._then);

  final _UpdateConfig _self;
  final $Res Function(_UpdateConfig) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topicId = freezed,Object? durationSeconds = freezed,}) {
  return _then(_UpdateConfig(
topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _SubmitGuess implements WordGuessEvent {
  const _SubmitGuess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.submitGuess()';
}


}




/// @nodoc


class _SkipWord implements WordGuessEvent {
  const _SkipWord();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipWord);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.skipWord()';
}


}




/// @nodoc


class _VoteSkip implements WordGuessEvent {
  const _VoteSkip({required this.proposalId, required this.agree});
  

 final  String proposalId;
 final  bool agree;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoteSkipCopyWith<_VoteSkip> get copyWith => __$VoteSkipCopyWithImpl<_VoteSkip>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoteSkip&&(identical(other.proposalId, proposalId) || other.proposalId == proposalId)&&(identical(other.agree, agree) || other.agree == agree));
}


@override
int get hashCode {
    return Object.hash(runtimeType,proposalId,agree);
}

@override
String toString() {
    return 'WordGuessEvent.voteSkip(proposalId: $proposalId, agree: $agree)';
}


}

/// @nodoc
abstract mixin class _$VoteSkipCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$VoteSkipCopyWith(_VoteSkip value, $Res Function(_VoteSkip) _then) = __$VoteSkipCopyWithImpl;
@useResult
$Res call({
 String proposalId, bool agree
});




}
/// @nodoc
class __$VoteSkipCopyWithImpl<$Res>
    implements _$VoteSkipCopyWith<$Res> {
  __$VoteSkipCopyWithImpl(this._self, this._then);

  final _VoteSkip _self;
  final $Res Function(_VoteSkip) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? proposalId = null,Object? agree = null,}) {
  return _then(_VoteSkip(
proposalId: null == proposalId ? _self.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as String,agree: null == agree ? _self.agree : agree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _EndGame implements WordGuessEvent {
  const _EndGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.endGame()';
}


}




/// @nodoc


class _SendChat implements WordGuessEvent {
  const _SendChat(this.text);
  

 final  String text;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendChatCopyWith<_SendChat> get copyWith => __$SendChatCopyWithImpl<_SendChat>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendChat&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'WordGuessEvent.sendChat(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SendChatCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$SendChatCopyWith(_SendChat value, $Res Function(_SendChat) _then) = __$SendChatCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SendChatCopyWithImpl<$Res>
    implements _$SendChatCopyWith<$Res> {
  __$SendChatCopyWithImpl(this._self, this._then);

  final _SendChat _self;
  final $Res Function(_SendChat) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SendChat(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RestartGame implements WordGuessEvent {
  const _RestartGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestartGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.restartGame()';
}


}




/// @nodoc


class _LeaveGame implements WordGuessEvent {
  const _LeaveGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.leaveGame()';
}


}




/// @nodoc


class _InputWordChanged implements WordGuessEvent {
  const _InputWordChanged(this.word);
  

 final  String word;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputWordChangedCopyWith<_InputWordChanged> get copyWith => __$InputWordChangedCopyWithImpl<_InputWordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputWordChanged&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word);
}

@override
String toString() {
    return 'WordGuessEvent.inputWordChanged(word: $word)';
}


}

/// @nodoc
abstract mixin class _$InputWordChangedCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$InputWordChangedCopyWith(_InputWordChanged value, $Res Function(_InputWordChanged) _then) = __$InputWordChangedCopyWithImpl;
@useResult
$Res call({
 String word
});




}
/// @nodoc
class __$InputWordChangedCopyWithImpl<$Res>
    implements _$InputWordChangedCopyWith<$Res> {
  __$InputWordChangedCopyWithImpl(this._self, this._then);

  final _InputWordChanged _self;
  final $Res Function(_InputWordChanged) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(_InputWordChanged(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Tick implements WordGuessEvent {
  const _Tick();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.tick()';
}


}




/// @nodoc


class _DelayNextRoundFinished implements WordGuessEvent {
  const _DelayNextRoundFinished();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DelayNextRoundFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordGuessEvent.delayNextRoundFinished()';
}


}




/// @nodoc


class _GameEventReceived implements WordGuessEvent {
  const _GameEventReceived(this.event);
  

 final  GameEvent event;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEventReceivedCopyWith<_GameEventReceived> get copyWith => __$GameEventReceivedCopyWithImpl<_GameEventReceived>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEventReceived&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode {
    return Object.hash(runtimeType,event);
}

@override
String toString() {
    return 'WordGuessEvent.gameEventReceived(event: $event)';
}


}

/// @nodoc
abstract mixin class _$GameEventReceivedCopyWith<$Res> implements $WordGuessEventCopyWith<$Res> {
  factory _$GameEventReceivedCopyWith(_GameEventReceived value, $Res Function(_GameEventReceived) _then) = __$GameEventReceivedCopyWithImpl;
@useResult
$Res call({
 GameEvent event
});


$GameEventCopyWith<$Res> get event;

}
/// @nodoc
class __$GameEventReceivedCopyWithImpl<$Res>
    implements _$GameEventReceivedCopyWith<$Res> {
  __$GameEventReceivedCopyWithImpl(this._self, this._then);

  final _GameEventReceived _self;
  final $Res Function(_GameEventReceived) _then;

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? event = null,}) {
  return _then(_GameEventReceived(
null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as GameEvent,
  ));
}

/// Create a copy of WordGuessEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res> get event {
  
  return $GameEventCopyWith<$Res>(_self.event, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}

/// @nodoc
mixin _$WordGuessState {

 bool get isLoading; bool get isSubmitting; bool get isDelayingNextRound; String? get errorMessage; String? get infoMessage; String? get lastWrongGuess; WordGuessGameMode get mode; String get topicId; String get myUid; String get myName; String get myAvatar; String? get roomCode; Deck? get deck; int get currentQuestionIndex; String get practiceSessionId; String get practiceMaskedWord; List<int> get practiceRevealedIndices; int get practiceCorrectCount; int get practiceEarnedXp; PracticeResult? get lastPracticeResult; GameState get gameState; MatchInfo? get matchInfo; SocketConnectionState get connectionState; bool get isQueued; List<String> get chatMessages; String get inputWord; int get roundTimeLeft; int get autoHintSecondsLeft; String? get solvedBannerWord; String? get solvedBannerSolver; bool get isSolvedByMe;
/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordGuessStateCopyWith<WordGuessState> get copyWith => _$WordGuessStateCopyWithImpl<WordGuessState>(this as WordGuessState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordGuessState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordGuessState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.isDelayingNextRound, _this.isDelayingNextRound) || other.isDelayingNextRound == _this.isDelayingNextRound)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.infoMessage, _this.infoMessage) || other.infoMessage == _this.infoMessage)&&(identical(other.lastWrongGuess, _this.lastWrongGuess) || other.lastWrongGuess == _this.lastWrongGuess)&&(identical(other.mode, _this.mode) || other.mode == _this.mode)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.myUid, _this.myUid) || other.myUid == _this.myUid)&&(identical(other.myName, _this.myName) || other.myName == _this.myName)&&(identical(other.myAvatar, _this.myAvatar) || other.myAvatar == _this.myAvatar)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.deck, _this.deck) || other.deck == _this.deck)&&(identical(other.currentQuestionIndex, _this.currentQuestionIndex) || other.currentQuestionIndex == _this.currentQuestionIndex)&&(identical(other.practiceSessionId, _this.practiceSessionId) || other.practiceSessionId == _this.practiceSessionId)&&(identical(other.practiceMaskedWord, _this.practiceMaskedWord) || other.practiceMaskedWord == _this.practiceMaskedWord)&&const DeepCollectionEquality().equals(other.practiceRevealedIndices, _this.practiceRevealedIndices)&&(identical(other.practiceCorrectCount, _this.practiceCorrectCount) || other.practiceCorrectCount == _this.practiceCorrectCount)&&(identical(other.practiceEarnedXp, _this.practiceEarnedXp) || other.practiceEarnedXp == _this.practiceEarnedXp)&&(identical(other.lastPracticeResult, _this.lastPracticeResult) || other.lastPracticeResult == _this.lastPracticeResult)&&(identical(other.gameState, _this.gameState) || other.gameState == _this.gameState)&&(identical(other.matchInfo, _this.matchInfo) || other.matchInfo == _this.matchInfo)&&(identical(other.connectionState, _this.connectionState) || other.connectionState == _this.connectionState)&&(identical(other.isQueued, _this.isQueued) || other.isQueued == _this.isQueued)&&const DeepCollectionEquality().equals(other.chatMessages, _this.chatMessages)&&(identical(other.inputWord, _this.inputWord) || other.inputWord == _this.inputWord)&&(identical(other.roundTimeLeft, _this.roundTimeLeft) || other.roundTimeLeft == _this.roundTimeLeft)&&(identical(other.autoHintSecondsLeft, _this.autoHintSecondsLeft) || other.autoHintSecondsLeft == _this.autoHintSecondsLeft)&&(identical(other.solvedBannerWord, _this.solvedBannerWord) || other.solvedBannerWord == _this.solvedBannerWord)&&(identical(other.solvedBannerSolver, _this.solvedBannerSolver) || other.solvedBannerSolver == _this.solvedBannerSolver)&&(identical(other.isSolvedByMe, _this.isSolvedByMe) || other.isSolvedByMe == _this.isSolvedByMe));
}


@override
int get hashCode {
  final _this = this as WordGuessState;
  return Object.hashAll([runtimeType,_this.isLoading,_this.isSubmitting,_this.isDelayingNextRound,_this.errorMessage,_this.infoMessage,_this.lastWrongGuess,_this.mode,_this.topicId,_this.myUid,_this.myName,_this.myAvatar,_this.roomCode,_this.deck,_this.currentQuestionIndex,_this.practiceSessionId,_this.practiceMaskedWord,const DeepCollectionEquality().hash(_this.practiceRevealedIndices),_this.practiceCorrectCount,_this.practiceEarnedXp,_this.lastPracticeResult,_this.gameState,_this.matchInfo,_this.connectionState,_this.isQueued,const DeepCollectionEquality().hash(_this.chatMessages),_this.inputWord,_this.roundTimeLeft,_this.autoHintSecondsLeft,_this.solvedBannerWord,_this.solvedBannerSolver,_this.isSolvedByMe]);
}

@override
String toString() {
  final _this = this as WordGuessState;
  return 'WordGuessState(isLoading: ${_this.isLoading}, isSubmitting: ${_this.isSubmitting}, isDelayingNextRound: ${_this.isDelayingNextRound}, errorMessage: ${_this.errorMessage}, infoMessage: ${_this.infoMessage}, lastWrongGuess: ${_this.lastWrongGuess}, mode: ${_this.mode}, topicId: ${_this.topicId}, myUid: ${_this.myUid}, myName: ${_this.myName}, myAvatar: ${_this.myAvatar}, roomCode: ${_this.roomCode}, deck: ${_this.deck}, currentQuestionIndex: ${_this.currentQuestionIndex}, practiceSessionId: ${_this.practiceSessionId}, practiceMaskedWord: ${_this.practiceMaskedWord}, practiceRevealedIndices: ${_this.practiceRevealedIndices}, practiceCorrectCount: ${_this.practiceCorrectCount}, practiceEarnedXp: ${_this.practiceEarnedXp}, lastPracticeResult: ${_this.lastPracticeResult}, gameState: ${_this.gameState}, matchInfo: ${_this.matchInfo}, connectionState: ${_this.connectionState}, isQueued: ${_this.isQueued}, chatMessages: ${_this.chatMessages}, inputWord: ${_this.inputWord}, roundTimeLeft: ${_this.roundTimeLeft}, autoHintSecondsLeft: ${_this.autoHintSecondsLeft}, solvedBannerWord: ${_this.solvedBannerWord}, solvedBannerSolver: ${_this.solvedBannerSolver}, isSolvedByMe: ${_this.isSolvedByMe})';
}


}

/// @nodoc
abstract mixin class $WordGuessStateCopyWith<$Res>  {
  factory $WordGuessStateCopyWith(WordGuessState value, $Res Function(WordGuessState) _then) = _$WordGuessStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isDelayingNextRound, String? errorMessage, String? infoMessage, String? lastWrongGuess, WordGuessGameMode mode, String topicId, String myUid, String myName, String myAvatar, String? roomCode, Deck? deck, int currentQuestionIndex, String practiceSessionId, String practiceMaskedWord, List<int> practiceRevealedIndices, int practiceCorrectCount, int practiceEarnedXp, PracticeResult? lastPracticeResult, GameState gameState, MatchInfo? matchInfo, SocketConnectionState connectionState, bool isQueued, List<String> chatMessages, String inputWord, int roundTimeLeft, int autoHintSecondsLeft, String? solvedBannerWord, String? solvedBannerSolver, bool isSolvedByMe
});


$DeckCopyWith<$Res>? get deck;$PracticeResultCopyWith<$Res>? get lastPracticeResult;$GameStateCopyWith<$Res> get gameState;$MatchInfoCopyWith<$Res>? get matchInfo;

}
/// @nodoc
class _$WordGuessStateCopyWithImpl<$Res>
    implements $WordGuessStateCopyWith<$Res> {
  _$WordGuessStateCopyWithImpl(this._self, this._then);

  final WordGuessState _self;
  final $Res Function(WordGuessState) _then;

/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isDelayingNextRound = null,Object? errorMessage = freezed,Object? infoMessage = freezed,Object? lastWrongGuess = freezed,Object? mode = null,Object? topicId = null,Object? myUid = null,Object? myName = null,Object? myAvatar = null,Object? roomCode = freezed,Object? deck = freezed,Object? currentQuestionIndex = null,Object? practiceSessionId = null,Object? practiceMaskedWord = null,Object? practiceRevealedIndices = null,Object? practiceCorrectCount = null,Object? practiceEarnedXp = null,Object? lastPracticeResult = freezed,Object? gameState = null,Object? matchInfo = freezed,Object? connectionState = null,Object? isQueued = null,Object? chatMessages = null,Object? inputWord = null,Object? roundTimeLeft = null,Object? autoHintSecondsLeft = null,Object? solvedBannerWord = freezed,Object? solvedBannerSolver = freezed,Object? isSolvedByMe = null,}) {
  return _then(WordGuessState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isDelayingNextRound: null == isDelayingNextRound ? _self.isDelayingNextRound : isDelayingNextRound // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,infoMessage: freezed == infoMessage ? _self.infoMessage : infoMessage // ignore: cast_nullable_to_non_nullable
as String?,lastWrongGuess: freezed == lastWrongGuess ? _self.lastWrongGuess : lastWrongGuess // ignore: cast_nullable_to_non_nullable
as String?,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as WordGuessGameMode,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,myUid: null == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String,myName: null == myName ? _self.myName : myName // ignore: cast_nullable_to_non_nullable
as String,myAvatar: null == myAvatar ? _self.myAvatar : myAvatar // ignore: cast_nullable_to_non_nullable
as String,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,deck: freezed == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as Deck?,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,practiceSessionId: null == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String,practiceMaskedWord: null == practiceMaskedWord ? _self.practiceMaskedWord : practiceMaskedWord // ignore: cast_nullable_to_non_nullable
as String,practiceRevealedIndices: null == practiceRevealedIndices ? _self.practiceRevealedIndices : practiceRevealedIndices // ignore: cast_nullable_to_non_nullable
as List<int>,practiceCorrectCount: null == practiceCorrectCount ? _self.practiceCorrectCount : practiceCorrectCount // ignore: cast_nullable_to_non_nullable
as int,practiceEarnedXp: null == practiceEarnedXp ? _self.practiceEarnedXp : practiceEarnedXp // ignore: cast_nullable_to_non_nullable
as int,lastPracticeResult: freezed == lastPracticeResult ? _self.lastPracticeResult : lastPracticeResult // ignore: cast_nullable_to_non_nullable
as PracticeResult?,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as GameState,matchInfo: freezed == matchInfo ? _self.matchInfo : matchInfo // ignore: cast_nullable_to_non_nullable
as MatchInfo?,connectionState: null == connectionState ? _self.connectionState : connectionState // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,isQueued: null == isQueued ? _self.isQueued : isQueued // ignore: cast_nullable_to_non_nullable
as bool,chatMessages: null == chatMessages ? _self.chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<String>,inputWord: null == inputWord ? _self.inputWord : inputWord // ignore: cast_nullable_to_non_nullable
as String,roundTimeLeft: null == roundTimeLeft ? _self.roundTimeLeft : roundTimeLeft // ignore: cast_nullable_to_non_nullable
as int,autoHintSecondsLeft: null == autoHintSecondsLeft ? _self.autoHintSecondsLeft : autoHintSecondsLeft // ignore: cast_nullable_to_non_nullable
as int,solvedBannerWord: freezed == solvedBannerWord ? _self.solvedBannerWord : solvedBannerWord // ignore: cast_nullable_to_non_nullable
as String?,solvedBannerSolver: freezed == solvedBannerSolver ? _self.solvedBannerSolver : solvedBannerSolver // ignore: cast_nullable_to_non_nullable
as String?,isSolvedByMe: null == isSolvedByMe ? _self.isSolvedByMe : isSolvedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeckCopyWith<$Res>? get deck {
    if (_self.deck == null) {
    return null;
  }

  return $DeckCopyWith<$Res>(_self.deck!, (value) {
    return _then(_self.copyWith(deck: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeResultCopyWith<$Res>? get lastPracticeResult {
    if (_self.lastPracticeResult == null) {
    return null;
  }

  return $PracticeResultCopyWith<$Res>(_self.lastPracticeResult!, (value) {
    return _then(_self.copyWith(lastPracticeResult: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get gameState {
  
  return $GameStateCopyWith<$Res>(_self.gameState, (value) {
    return _then(_self.copyWith(gameState: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchInfoCopyWith<$Res>? get matchInfo {
    if (_self.matchInfo == null) {
    return null;
  }

  return $MatchInfoCopyWith<$Res>(_self.matchInfo!, (value) {
    return _then(_self.copyWith(matchInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordGuessState].
extension WordGuessStatePatterns on WordGuessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordGuessState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordGuessState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordGuessState value)  $default,){
final _that = this;
switch (_that) {
case _WordGuessState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordGuessState value)?  $default,){
final _that = this;
switch (_that) {
case _WordGuessState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isDelayingNextRound,  String? errorMessage,  String? infoMessage,  String? lastWrongGuess,  WordGuessGameMode mode,  String topicId,  String myUid,  String myName,  String myAvatar,  String? roomCode,  Deck? deck,  int currentQuestionIndex,  String practiceSessionId,  String practiceMaskedWord,  List<int> practiceRevealedIndices,  int practiceCorrectCount,  int practiceEarnedXp,  PracticeResult? lastPracticeResult,  GameState gameState,  MatchInfo? matchInfo,  SocketConnectionState connectionState,  bool isQueued,  List<String> chatMessages,  String inputWord,  int roundTimeLeft,  int autoHintSecondsLeft,  String? solvedBannerWord,  String? solvedBannerSolver,  bool isSolvedByMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordGuessState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isDelayingNextRound,_that.errorMessage,_that.infoMessage,_that.lastWrongGuess,_that.mode,_that.topicId,_that.myUid,_that.myName,_that.myAvatar,_that.roomCode,_that.deck,_that.currentQuestionIndex,_that.practiceSessionId,_that.practiceMaskedWord,_that.practiceRevealedIndices,_that.practiceCorrectCount,_that.practiceEarnedXp,_that.lastPracticeResult,_that.gameState,_that.matchInfo,_that.connectionState,_that.isQueued,_that.chatMessages,_that.inputWord,_that.roundTimeLeft,_that.autoHintSecondsLeft,_that.solvedBannerWord,_that.solvedBannerSolver,_that.isSolvedByMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isDelayingNextRound,  String? errorMessage,  String? infoMessage,  String? lastWrongGuess,  WordGuessGameMode mode,  String topicId,  String myUid,  String myName,  String myAvatar,  String? roomCode,  Deck? deck,  int currentQuestionIndex,  String practiceSessionId,  String practiceMaskedWord,  List<int> practiceRevealedIndices,  int practiceCorrectCount,  int practiceEarnedXp,  PracticeResult? lastPracticeResult,  GameState gameState,  MatchInfo? matchInfo,  SocketConnectionState connectionState,  bool isQueued,  List<String> chatMessages,  String inputWord,  int roundTimeLeft,  int autoHintSecondsLeft,  String? solvedBannerWord,  String? solvedBannerSolver,  bool isSolvedByMe)  $default,) {final _that = this;
switch (_that) {
case _WordGuessState():
return $default(_that.isLoading,_that.isSubmitting,_that.isDelayingNextRound,_that.errorMessage,_that.infoMessage,_that.lastWrongGuess,_that.mode,_that.topicId,_that.myUid,_that.myName,_that.myAvatar,_that.roomCode,_that.deck,_that.currentQuestionIndex,_that.practiceSessionId,_that.practiceMaskedWord,_that.practiceRevealedIndices,_that.practiceCorrectCount,_that.practiceEarnedXp,_that.lastPracticeResult,_that.gameState,_that.matchInfo,_that.connectionState,_that.isQueued,_that.chatMessages,_that.inputWord,_that.roundTimeLeft,_that.autoHintSecondsLeft,_that.solvedBannerWord,_that.solvedBannerSolver,_that.isSolvedByMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  bool isDelayingNextRound,  String? errorMessage,  String? infoMessage,  String? lastWrongGuess,  WordGuessGameMode mode,  String topicId,  String myUid,  String myName,  String myAvatar,  String? roomCode,  Deck? deck,  int currentQuestionIndex,  String practiceSessionId,  String practiceMaskedWord,  List<int> practiceRevealedIndices,  int practiceCorrectCount,  int practiceEarnedXp,  PracticeResult? lastPracticeResult,  GameState gameState,  MatchInfo? matchInfo,  SocketConnectionState connectionState,  bool isQueued,  List<String> chatMessages,  String inputWord,  int roundTimeLeft,  int autoHintSecondsLeft,  String? solvedBannerWord,  String? solvedBannerSolver,  bool isSolvedByMe)?  $default,) {final _that = this;
switch (_that) {
case _WordGuessState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isDelayingNextRound,_that.errorMessage,_that.infoMessage,_that.lastWrongGuess,_that.mode,_that.topicId,_that.myUid,_that.myName,_that.myAvatar,_that.roomCode,_that.deck,_that.currentQuestionIndex,_that.practiceSessionId,_that.practiceMaskedWord,_that.practiceRevealedIndices,_that.practiceCorrectCount,_that.practiceEarnedXp,_that.lastPracticeResult,_that.gameState,_that.matchInfo,_that.connectionState,_that.isQueued,_that.chatMessages,_that.inputWord,_that.roundTimeLeft,_that.autoHintSecondsLeft,_that.solvedBannerWord,_that.solvedBannerSolver,_that.isSolvedByMe);case _:
  return null;

}
}

}

/// @nodoc


class _WordGuessState extends WordGuessState {
  const _WordGuessState({this.isLoading = false, this.isSubmitting = false, this.isDelayingNextRound = false, this.errorMessage, this.infoMessage, this.lastWrongGuess, this.mode = WordGuessGameMode.practice, this.topicId = 'daily', this.myUid = '', this.myName = '', this.myAvatar = '', this.roomCode, this.deck, this.currentQuestionIndex = 0, this.practiceSessionId = '', this.practiceMaskedWord = '',  List<int> practiceRevealedIndices = const [], this.practiceCorrectCount = 0, this.practiceEarnedXp = 0, this.lastPracticeResult, this.gameState = const GameState(), this.matchInfo, this.connectionState = SocketConnectionState.disconnected, this.isQueued = false,  List<String> chatMessages = const [], this.inputWord = '', this.roundTimeLeft = 0, this.autoHintSecondsLeft = 0, this.solvedBannerWord, this.solvedBannerSolver, this.isSolvedByMe = false}): _practiceRevealedIndices = practiceRevealedIndices,_chatMessages = chatMessages,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isDelayingNextRound;
@override final  String? errorMessage;
@override final  String? infoMessage;
@override final  String? lastWrongGuess;
@override@JsonKey() final  WordGuessGameMode mode;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  String myUid;
@override@JsonKey() final  String myName;
@override@JsonKey() final  String myAvatar;
@override final  String? roomCode;
@override final  Deck? deck;
@override@JsonKey() final  int currentQuestionIndex;
@override@JsonKey() final  String practiceSessionId;
@override@JsonKey() final  String practiceMaskedWord;
 final  List<int> _practiceRevealedIndices;
@override@JsonKey() List<int> get practiceRevealedIndices {
  if (_practiceRevealedIndices is EqualUnmodifiableListView) return _practiceRevealedIndices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_practiceRevealedIndices);
}

@override@JsonKey() final  int practiceCorrectCount;
@override@JsonKey() final  int practiceEarnedXp;
@override final  PracticeResult? lastPracticeResult;
@override@JsonKey() final  GameState gameState;
@override final  MatchInfo? matchInfo;
@override@JsonKey() final  SocketConnectionState connectionState;
@override@JsonKey() final  bool isQueued;
 final  List<String> _chatMessages;
@override@JsonKey() List<String> get chatMessages {
  if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatMessages);
}

@override@JsonKey() final  String inputWord;
@override@JsonKey() final  int roundTimeLeft;
@override@JsonKey() final  int autoHintSecondsLeft;
@override final  String? solvedBannerWord;
@override final  String? solvedBannerSolver;
@override@JsonKey() final  bool isSolvedByMe;

/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordGuessStateCopyWith<_WordGuessState> get copyWith => __$WordGuessStateCopyWithImpl<_WordGuessState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordGuessState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isDelayingNextRound, isDelayingNextRound) || other.isDelayingNextRound == isDelayingNextRound)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.infoMessage, infoMessage) || other.infoMessage == infoMessage)&&(identical(other.lastWrongGuess, lastWrongGuess) || other.lastWrongGuess == lastWrongGuess)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.myUid, myUid) || other.myUid == myUid)&&(identical(other.myName, myName) || other.myName == myName)&&(identical(other.myAvatar, myAvatar) || other.myAvatar == myAvatar)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.deck, deck) || other.deck == deck)&&(identical(other.currentQuestionIndex, currentQuestionIndex) || other.currentQuestionIndex == currentQuestionIndex)&&(identical(other.practiceSessionId, practiceSessionId) || other.practiceSessionId == practiceSessionId)&&(identical(other.practiceMaskedWord, practiceMaskedWord) || other.practiceMaskedWord == practiceMaskedWord)&&const DeepCollectionEquality().equals(other.practiceRevealedIndices, _practiceRevealedIndices)&&(identical(other.practiceCorrectCount, practiceCorrectCount) || other.practiceCorrectCount == practiceCorrectCount)&&(identical(other.practiceEarnedXp, practiceEarnedXp) || other.practiceEarnedXp == practiceEarnedXp)&&(identical(other.lastPracticeResult, lastPracticeResult) || other.lastPracticeResult == lastPracticeResult)&&(identical(other.gameState, gameState) || other.gameState == gameState)&&(identical(other.matchInfo, matchInfo) || other.matchInfo == matchInfo)&&(identical(other.connectionState, connectionState) || other.connectionState == connectionState)&&(identical(other.isQueued, isQueued) || other.isQueued == isQueued)&&const DeepCollectionEquality().equals(other.chatMessages, _chatMessages)&&(identical(other.inputWord, inputWord) || other.inputWord == inputWord)&&(identical(other.roundTimeLeft, roundTimeLeft) || other.roundTimeLeft == roundTimeLeft)&&(identical(other.autoHintSecondsLeft, autoHintSecondsLeft) || other.autoHintSecondsLeft == autoHintSecondsLeft)&&(identical(other.solvedBannerWord, solvedBannerWord) || other.solvedBannerWord == solvedBannerWord)&&(identical(other.solvedBannerSolver, solvedBannerSolver) || other.solvedBannerSolver == solvedBannerSolver)&&(identical(other.isSolvedByMe, isSolvedByMe) || other.isSolvedByMe == isSolvedByMe));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,isLoading,isSubmitting,isDelayingNextRound,errorMessage,infoMessage,lastWrongGuess,mode,topicId,myUid,myName,myAvatar,roomCode,deck,currentQuestionIndex,practiceSessionId,practiceMaskedWord,const DeepCollectionEquality().hash(_practiceRevealedIndices),practiceCorrectCount,practiceEarnedXp,lastPracticeResult,gameState,matchInfo,connectionState,isQueued,const DeepCollectionEquality().hash(_chatMessages),inputWord,roundTimeLeft,autoHintSecondsLeft,solvedBannerWord,solvedBannerSolver,isSolvedByMe]);
}

@override
String toString() {
    return 'WordGuessState(isLoading: $isLoading, isSubmitting: $isSubmitting, isDelayingNextRound: $isDelayingNextRound, errorMessage: $errorMessage, infoMessage: $infoMessage, lastWrongGuess: $lastWrongGuess, mode: $mode, topicId: $topicId, myUid: $myUid, myName: $myName, myAvatar: $myAvatar, roomCode: $roomCode, deck: $deck, currentQuestionIndex: $currentQuestionIndex, practiceSessionId: $practiceSessionId, practiceMaskedWord: $practiceMaskedWord, practiceRevealedIndices: $practiceRevealedIndices, practiceCorrectCount: $practiceCorrectCount, practiceEarnedXp: $practiceEarnedXp, lastPracticeResult: $lastPracticeResult, gameState: $gameState, matchInfo: $matchInfo, connectionState: $connectionState, isQueued: $isQueued, chatMessages: $chatMessages, inputWord: $inputWord, roundTimeLeft: $roundTimeLeft, autoHintSecondsLeft: $autoHintSecondsLeft, solvedBannerWord: $solvedBannerWord, solvedBannerSolver: $solvedBannerSolver, isSolvedByMe: $isSolvedByMe)';
}


}

/// @nodoc
abstract mixin class _$WordGuessStateCopyWith<$Res> implements $WordGuessStateCopyWith<$Res> {
  factory _$WordGuessStateCopyWith(_WordGuessState value, $Res Function(_WordGuessState) _then) = __$WordGuessStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isDelayingNextRound, String? errorMessage, String? infoMessage, String? lastWrongGuess, WordGuessGameMode mode, String topicId, String myUid, String myName, String myAvatar, String? roomCode, Deck? deck, int currentQuestionIndex, String practiceSessionId, String practiceMaskedWord, List<int> practiceRevealedIndices, int practiceCorrectCount, int practiceEarnedXp, PracticeResult? lastPracticeResult, GameState gameState, MatchInfo? matchInfo, SocketConnectionState connectionState, bool isQueued, List<String> chatMessages, String inputWord, int roundTimeLeft, int autoHintSecondsLeft, String? solvedBannerWord, String? solvedBannerSolver, bool isSolvedByMe
});


@override $DeckCopyWith<$Res>? get deck;@override $PracticeResultCopyWith<$Res>? get lastPracticeResult;@override $GameStateCopyWith<$Res> get gameState;@override $MatchInfoCopyWith<$Res>? get matchInfo;

}
/// @nodoc
class __$WordGuessStateCopyWithImpl<$Res>
    implements _$WordGuessStateCopyWith<$Res> {
  __$WordGuessStateCopyWithImpl(this._self, this._then);

  final _WordGuessState _self;
  final $Res Function(_WordGuessState) _then;

/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isDelayingNextRound = null,Object? errorMessage = freezed,Object? infoMessage = freezed,Object? lastWrongGuess = freezed,Object? mode = null,Object? topicId = null,Object? myUid = null,Object? myName = null,Object? myAvatar = null,Object? roomCode = freezed,Object? deck = freezed,Object? currentQuestionIndex = null,Object? practiceSessionId = null,Object? practiceMaskedWord = null,Object? practiceRevealedIndices = null,Object? practiceCorrectCount = null,Object? practiceEarnedXp = null,Object? lastPracticeResult = freezed,Object? gameState = null,Object? matchInfo = freezed,Object? connectionState = null,Object? isQueued = null,Object? chatMessages = null,Object? inputWord = null,Object? roundTimeLeft = null,Object? autoHintSecondsLeft = null,Object? solvedBannerWord = freezed,Object? solvedBannerSolver = freezed,Object? isSolvedByMe = null,}) {
  return _then(_WordGuessState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isDelayingNextRound: null == isDelayingNextRound ? _self.isDelayingNextRound : isDelayingNextRound // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,infoMessage: freezed == infoMessage ? _self.infoMessage : infoMessage // ignore: cast_nullable_to_non_nullable
as String?,lastWrongGuess: freezed == lastWrongGuess ? _self.lastWrongGuess : lastWrongGuess // ignore: cast_nullable_to_non_nullable
as String?,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as WordGuessGameMode,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,myUid: null == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String,myName: null == myName ? _self.myName : myName // ignore: cast_nullable_to_non_nullable
as String,myAvatar: null == myAvatar ? _self.myAvatar : myAvatar // ignore: cast_nullable_to_non_nullable
as String,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,deck: freezed == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as Deck?,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,practiceSessionId: null == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String,practiceMaskedWord: null == practiceMaskedWord ? _self.practiceMaskedWord : practiceMaskedWord // ignore: cast_nullable_to_non_nullable
as String,practiceRevealedIndices: null == practiceRevealedIndices ? _self._practiceRevealedIndices : practiceRevealedIndices // ignore: cast_nullable_to_non_nullable
as List<int>,practiceCorrectCount: null == practiceCorrectCount ? _self.practiceCorrectCount : practiceCorrectCount // ignore: cast_nullable_to_non_nullable
as int,practiceEarnedXp: null == practiceEarnedXp ? _self.practiceEarnedXp : practiceEarnedXp // ignore: cast_nullable_to_non_nullable
as int,lastPracticeResult: freezed == lastPracticeResult ? _self.lastPracticeResult : lastPracticeResult // ignore: cast_nullable_to_non_nullable
as PracticeResult?,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as GameState,matchInfo: freezed == matchInfo ? _self.matchInfo : matchInfo // ignore: cast_nullable_to_non_nullable
as MatchInfo?,connectionState: null == connectionState ? _self.connectionState : connectionState // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,isQueued: null == isQueued ? _self.isQueued : isQueued // ignore: cast_nullable_to_non_nullable
as bool,chatMessages: null == chatMessages ? _self._chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<String>,inputWord: null == inputWord ? _self.inputWord : inputWord // ignore: cast_nullable_to_non_nullable
as String,roundTimeLeft: null == roundTimeLeft ? _self.roundTimeLeft : roundTimeLeft // ignore: cast_nullable_to_non_nullable
as int,autoHintSecondsLeft: null == autoHintSecondsLeft ? _self.autoHintSecondsLeft : autoHintSecondsLeft // ignore: cast_nullable_to_non_nullable
as int,solvedBannerWord: freezed == solvedBannerWord ? _self.solvedBannerWord : solvedBannerWord // ignore: cast_nullable_to_non_nullable
as String?,solvedBannerSolver: freezed == solvedBannerSolver ? _self.solvedBannerSolver : solvedBannerSolver // ignore: cast_nullable_to_non_nullable
as String?,isSolvedByMe: null == isSolvedByMe ? _self.isSolvedByMe : isSolvedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeckCopyWith<$Res>? get deck {
    if (_self.deck == null) {
    return null;
  }

  return $DeckCopyWith<$Res>(_self.deck!, (value) {
    return _then(_self.copyWith(deck: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeResultCopyWith<$Res>? get lastPracticeResult {
    if (_self.lastPracticeResult == null) {
    return null;
  }

  return $PracticeResultCopyWith<$Res>(_self.lastPracticeResult!, (value) {
    return _then(_self.copyWith(lastPracticeResult: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get gameState {
  
  return $GameStateCopyWith<$Res>(_self.gameState, (value) {
    return _then(_self.copyWith(gameState: value));
  });
}/// Create a copy of WordGuessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchInfoCopyWith<$Res>? get matchInfo {
    if (_self.matchInfo == null) {
    return null;
  }

  return $MatchInfoCopyWith<$Res>(_self.matchInfo!, (value) {
    return _then(_self.copyWith(matchInfo: value));
  });
}
}

// dart format on

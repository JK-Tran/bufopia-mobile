// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VocabularyEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent()';
}


}

/// @nodoc
class $VocabularyEventCopyWith<$Res>  {
$VocabularyEventCopyWith(VocabularyEvent _, $Res Function(VocabularyEvent) __);
}


/// Adds pattern-matching-related methods to [VocabularyEvent].
extension VocabularyEventPatterns on VocabularyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitDeck value)?  initDeck,TResult Function( _SelectAnswer value)?  selectAnswer,TResult Function( _Tick value)?  tick,TResult Function( _NextQuestion value)?  nextQuestion,TResult Function( _BotAnswer value)?  botAnswer,TResult Function( _FinishGame value)?  finishGame,TResult Function( _RestartGame value)?  restartGame,TResult Function( _SocketConnected value)?  socketConnected,TResult Function( _SocketPlayerJoined value)?  socketPlayerJoined,TResult Function( _SocketMatchStart value)?  socketMatchStart,TResult Function( _SocketSyncState value)?  socketSyncState,TResult Function( _SocketAnswerResult value)?  socketAnswerResult,TResult Function( _SocketRoundTimeout value)?  socketRoundTimeout,TResult Function( _SocketNextRound value)?  socketNextRound,TResult Function( _SocketMatchFinished value)?  socketMatchFinished,TResult Function( _SocketOpponentAnswer value)?  socketOpponentAnswer,TResult Function( _SocketRoundSync value)?  socketRoundSync,TResult Function( _SocketOpponentLeft value)?  socketOpponentLeft,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitDeck() when initDeck != null:
return initDeck(_that);case _SelectAnswer() when selectAnswer != null:
return selectAnswer(_that);case _Tick() when tick != null:
return tick(_that);case _NextQuestion() when nextQuestion != null:
return nextQuestion(_that);case _BotAnswer() when botAnswer != null:
return botAnswer(_that);case _FinishGame() when finishGame != null:
return finishGame(_that);case _RestartGame() when restartGame != null:
return restartGame(_that);case _SocketConnected() when socketConnected != null:
return socketConnected(_that);case _SocketPlayerJoined() when socketPlayerJoined != null:
return socketPlayerJoined(_that);case _SocketMatchStart() when socketMatchStart != null:
return socketMatchStart(_that);case _SocketSyncState() when socketSyncState != null:
return socketSyncState(_that);case _SocketAnswerResult() when socketAnswerResult != null:
return socketAnswerResult(_that);case _SocketRoundTimeout() when socketRoundTimeout != null:
return socketRoundTimeout(_that);case _SocketNextRound() when socketNextRound != null:
return socketNextRound(_that);case _SocketMatchFinished() when socketMatchFinished != null:
return socketMatchFinished(_that);case _SocketOpponentAnswer() when socketOpponentAnswer != null:
return socketOpponentAnswer(_that);case _SocketRoundSync() when socketRoundSync != null:
return socketRoundSync(_that);case _SocketOpponentLeft() when socketOpponentLeft != null:
return socketOpponentLeft(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitDeck value)  initDeck,required TResult Function( _SelectAnswer value)  selectAnswer,required TResult Function( _Tick value)  tick,required TResult Function( _NextQuestion value)  nextQuestion,required TResult Function( _BotAnswer value)  botAnswer,required TResult Function( _FinishGame value)  finishGame,required TResult Function( _RestartGame value)  restartGame,required TResult Function( _SocketConnected value)  socketConnected,required TResult Function( _SocketPlayerJoined value)  socketPlayerJoined,required TResult Function( _SocketMatchStart value)  socketMatchStart,required TResult Function( _SocketSyncState value)  socketSyncState,required TResult Function( _SocketAnswerResult value)  socketAnswerResult,required TResult Function( _SocketRoundTimeout value)  socketRoundTimeout,required TResult Function( _SocketNextRound value)  socketNextRound,required TResult Function( _SocketMatchFinished value)  socketMatchFinished,required TResult Function( _SocketOpponentAnswer value)  socketOpponentAnswer,required TResult Function( _SocketRoundSync value)  socketRoundSync,required TResult Function( _SocketOpponentLeft value)  socketOpponentLeft,}){
final _that = this;
switch (_that) {
case _InitDeck():
return initDeck(_that);case _SelectAnswer():
return selectAnswer(_that);case _Tick():
return tick(_that);case _NextQuestion():
return nextQuestion(_that);case _BotAnswer():
return botAnswer(_that);case _FinishGame():
return finishGame(_that);case _RestartGame():
return restartGame(_that);case _SocketConnected():
return socketConnected(_that);case _SocketPlayerJoined():
return socketPlayerJoined(_that);case _SocketMatchStart():
return socketMatchStart(_that);case _SocketSyncState():
return socketSyncState(_that);case _SocketAnswerResult():
return socketAnswerResult(_that);case _SocketRoundTimeout():
return socketRoundTimeout(_that);case _SocketNextRound():
return socketNextRound(_that);case _SocketMatchFinished():
return socketMatchFinished(_that);case _SocketOpponentAnswer():
return socketOpponentAnswer(_that);case _SocketRoundSync():
return socketRoundSync(_that);case _SocketOpponentLeft():
return socketOpponentLeft(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitDeck value)?  initDeck,TResult? Function( _SelectAnswer value)?  selectAnswer,TResult? Function( _Tick value)?  tick,TResult? Function( _NextQuestion value)?  nextQuestion,TResult? Function( _BotAnswer value)?  botAnswer,TResult? Function( _FinishGame value)?  finishGame,TResult? Function( _RestartGame value)?  restartGame,TResult? Function( _SocketConnected value)?  socketConnected,TResult? Function( _SocketPlayerJoined value)?  socketPlayerJoined,TResult? Function( _SocketMatchStart value)?  socketMatchStart,TResult? Function( _SocketSyncState value)?  socketSyncState,TResult? Function( _SocketAnswerResult value)?  socketAnswerResult,TResult? Function( _SocketRoundTimeout value)?  socketRoundTimeout,TResult? Function( _SocketNextRound value)?  socketNextRound,TResult? Function( _SocketMatchFinished value)?  socketMatchFinished,TResult? Function( _SocketOpponentAnswer value)?  socketOpponentAnswer,TResult? Function( _SocketRoundSync value)?  socketRoundSync,TResult? Function( _SocketOpponentLeft value)?  socketOpponentLeft,}){
final _that = this;
switch (_that) {
case _InitDeck() when initDeck != null:
return initDeck(_that);case _SelectAnswer() when selectAnswer != null:
return selectAnswer(_that);case _Tick() when tick != null:
return tick(_that);case _NextQuestion() when nextQuestion != null:
return nextQuestion(_that);case _BotAnswer() when botAnswer != null:
return botAnswer(_that);case _FinishGame() when finishGame != null:
return finishGame(_that);case _RestartGame() when restartGame != null:
return restartGame(_that);case _SocketConnected() when socketConnected != null:
return socketConnected(_that);case _SocketPlayerJoined() when socketPlayerJoined != null:
return socketPlayerJoined(_that);case _SocketMatchStart() when socketMatchStart != null:
return socketMatchStart(_that);case _SocketSyncState() when socketSyncState != null:
return socketSyncState(_that);case _SocketAnswerResult() when socketAnswerResult != null:
return socketAnswerResult(_that);case _SocketRoundTimeout() when socketRoundTimeout != null:
return socketRoundTimeout(_that);case _SocketNextRound() when socketNextRound != null:
return socketNextRound(_that);case _SocketMatchFinished() when socketMatchFinished != null:
return socketMatchFinished(_that);case _SocketOpponentAnswer() when socketOpponentAnswer != null:
return socketOpponentAnswer(_that);case _SocketRoundSync() when socketRoundSync != null:
return socketRoundSync(_that);case _SocketOpponentLeft() when socketOpponentLeft != null:
return socketOpponentLeft(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String topic,  String? uid,  bool isBotOpponent,  String? roomCode,  String? initialOpponentName,  String? initialOpponentAvatar)?  initDeck,TResult Function( bool isPlayer1,  String selectedWord)?  selectAnswer,TResult Function()?  tick,TResult Function()?  nextQuestion,TResult Function()?  botAnswer,TResult Function()?  finishGame,TResult Function()?  restartGame,TResult Function( int playerIndex,  String rivalName,  String rivalAvatar)?  socketConnected,TResult Function( String name,  String avatar)?  socketPlayerJoined,TResult Function( List<Map<String, dynamic>> rawDeck,  int playerIndex,  String rivalName,  String rivalAvatar,  int matchRound)?  socketMatchStart,TResult Function( int roundIndex,  int startedAt,  List<int> scores,  List<int> streaks)?  socketSyncState,TResult Function( int playerIndex,  String optionId,  bool isCorrect,  List<int> scores,  int revealTime)?  socketAnswerResult,TResult Function()?  socketRoundTimeout,TResult Function( int roundIndex,  int startedAt,  List<int> scores)?  socketNextRound,TResult Function( dynamic winner,  List<int> scores)?  socketMatchFinished,TResult Function( int questionIndex,  String selectedWord,  bool isCorrect,  int score)?  socketOpponentAnswer,TResult Function( int round)?  socketRoundSync,TResult Function()?  socketOpponentLeft,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitDeck() when initDeck != null:
return initDeck(_that.topic,_that.uid,_that.isBotOpponent,_that.roomCode,_that.initialOpponentName,_that.initialOpponentAvatar);case _SelectAnswer() when selectAnswer != null:
return selectAnswer(_that.isPlayer1,_that.selectedWord);case _Tick() when tick != null:
return tick();case _NextQuestion() when nextQuestion != null:
return nextQuestion();case _BotAnswer() when botAnswer != null:
return botAnswer();case _FinishGame() when finishGame != null:
return finishGame();case _RestartGame() when restartGame != null:
return restartGame();case _SocketConnected() when socketConnected != null:
return socketConnected(_that.playerIndex,_that.rivalName,_that.rivalAvatar);case _SocketPlayerJoined() when socketPlayerJoined != null:
return socketPlayerJoined(_that.name,_that.avatar);case _SocketMatchStart() when socketMatchStart != null:
return socketMatchStart(_that.rawDeck,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.matchRound);case _SocketSyncState() when socketSyncState != null:
return socketSyncState(_that.roundIndex,_that.startedAt,_that.scores,_that.streaks);case _SocketAnswerResult() when socketAnswerResult != null:
return socketAnswerResult(_that.playerIndex,_that.optionId,_that.isCorrect,_that.scores,_that.revealTime);case _SocketRoundTimeout() when socketRoundTimeout != null:
return socketRoundTimeout();case _SocketNextRound() when socketNextRound != null:
return socketNextRound(_that.roundIndex,_that.startedAt,_that.scores);case _SocketMatchFinished() when socketMatchFinished != null:
return socketMatchFinished(_that.winner,_that.scores);case _SocketOpponentAnswer() when socketOpponentAnswer != null:
return socketOpponentAnswer(_that.questionIndex,_that.selectedWord,_that.isCorrect,_that.score);case _SocketRoundSync() when socketRoundSync != null:
return socketRoundSync(_that.round);case _SocketOpponentLeft() when socketOpponentLeft != null:
return socketOpponentLeft();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String topic,  String? uid,  bool isBotOpponent,  String? roomCode,  String? initialOpponentName,  String? initialOpponentAvatar)  initDeck,required TResult Function( bool isPlayer1,  String selectedWord)  selectAnswer,required TResult Function()  tick,required TResult Function()  nextQuestion,required TResult Function()  botAnswer,required TResult Function()  finishGame,required TResult Function()  restartGame,required TResult Function( int playerIndex,  String rivalName,  String rivalAvatar)  socketConnected,required TResult Function( String name,  String avatar)  socketPlayerJoined,required TResult Function( List<Map<String, dynamic>> rawDeck,  int playerIndex,  String rivalName,  String rivalAvatar,  int matchRound)  socketMatchStart,required TResult Function( int roundIndex,  int startedAt,  List<int> scores,  List<int> streaks)  socketSyncState,required TResult Function( int playerIndex,  String optionId,  bool isCorrect,  List<int> scores,  int revealTime)  socketAnswerResult,required TResult Function()  socketRoundTimeout,required TResult Function( int roundIndex,  int startedAt,  List<int> scores)  socketNextRound,required TResult Function( dynamic winner,  List<int> scores)  socketMatchFinished,required TResult Function( int questionIndex,  String selectedWord,  bool isCorrect,  int score)  socketOpponentAnswer,required TResult Function( int round)  socketRoundSync,required TResult Function()  socketOpponentLeft,}) {final _that = this;
switch (_that) {
case _InitDeck():
return initDeck(_that.topic,_that.uid,_that.isBotOpponent,_that.roomCode,_that.initialOpponentName,_that.initialOpponentAvatar);case _SelectAnswer():
return selectAnswer(_that.isPlayer1,_that.selectedWord);case _Tick():
return tick();case _NextQuestion():
return nextQuestion();case _BotAnswer():
return botAnswer();case _FinishGame():
return finishGame();case _RestartGame():
return restartGame();case _SocketConnected():
return socketConnected(_that.playerIndex,_that.rivalName,_that.rivalAvatar);case _SocketPlayerJoined():
return socketPlayerJoined(_that.name,_that.avatar);case _SocketMatchStart():
return socketMatchStart(_that.rawDeck,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.matchRound);case _SocketSyncState():
return socketSyncState(_that.roundIndex,_that.startedAt,_that.scores,_that.streaks);case _SocketAnswerResult():
return socketAnswerResult(_that.playerIndex,_that.optionId,_that.isCorrect,_that.scores,_that.revealTime);case _SocketRoundTimeout():
return socketRoundTimeout();case _SocketNextRound():
return socketNextRound(_that.roundIndex,_that.startedAt,_that.scores);case _SocketMatchFinished():
return socketMatchFinished(_that.winner,_that.scores);case _SocketOpponentAnswer():
return socketOpponentAnswer(_that.questionIndex,_that.selectedWord,_that.isCorrect,_that.score);case _SocketRoundSync():
return socketRoundSync(_that.round);case _SocketOpponentLeft():
return socketOpponentLeft();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String topic,  String? uid,  bool isBotOpponent,  String? roomCode,  String? initialOpponentName,  String? initialOpponentAvatar)?  initDeck,TResult? Function( bool isPlayer1,  String selectedWord)?  selectAnswer,TResult? Function()?  tick,TResult? Function()?  nextQuestion,TResult? Function()?  botAnswer,TResult? Function()?  finishGame,TResult? Function()?  restartGame,TResult? Function( int playerIndex,  String rivalName,  String rivalAvatar)?  socketConnected,TResult? Function( String name,  String avatar)?  socketPlayerJoined,TResult? Function( List<Map<String, dynamic>> rawDeck,  int playerIndex,  String rivalName,  String rivalAvatar,  int matchRound)?  socketMatchStart,TResult? Function( int roundIndex,  int startedAt,  List<int> scores,  List<int> streaks)?  socketSyncState,TResult? Function( int playerIndex,  String optionId,  bool isCorrect,  List<int> scores,  int revealTime)?  socketAnswerResult,TResult? Function()?  socketRoundTimeout,TResult? Function( int roundIndex,  int startedAt,  List<int> scores)?  socketNextRound,TResult? Function( dynamic winner,  List<int> scores)?  socketMatchFinished,TResult? Function( int questionIndex,  String selectedWord,  bool isCorrect,  int score)?  socketOpponentAnswer,TResult? Function( int round)?  socketRoundSync,TResult? Function()?  socketOpponentLeft,}) {final _that = this;
switch (_that) {
case _InitDeck() when initDeck != null:
return initDeck(_that.topic,_that.uid,_that.isBotOpponent,_that.roomCode,_that.initialOpponentName,_that.initialOpponentAvatar);case _SelectAnswer() when selectAnswer != null:
return selectAnswer(_that.isPlayer1,_that.selectedWord);case _Tick() when tick != null:
return tick();case _NextQuestion() when nextQuestion != null:
return nextQuestion();case _BotAnswer() when botAnswer != null:
return botAnswer();case _FinishGame() when finishGame != null:
return finishGame();case _RestartGame() when restartGame != null:
return restartGame();case _SocketConnected() when socketConnected != null:
return socketConnected(_that.playerIndex,_that.rivalName,_that.rivalAvatar);case _SocketPlayerJoined() when socketPlayerJoined != null:
return socketPlayerJoined(_that.name,_that.avatar);case _SocketMatchStart() when socketMatchStart != null:
return socketMatchStart(_that.rawDeck,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.matchRound);case _SocketSyncState() when socketSyncState != null:
return socketSyncState(_that.roundIndex,_that.startedAt,_that.scores,_that.streaks);case _SocketAnswerResult() when socketAnswerResult != null:
return socketAnswerResult(_that.playerIndex,_that.optionId,_that.isCorrect,_that.scores,_that.revealTime);case _SocketRoundTimeout() when socketRoundTimeout != null:
return socketRoundTimeout();case _SocketNextRound() when socketNextRound != null:
return socketNextRound(_that.roundIndex,_that.startedAt,_that.scores);case _SocketMatchFinished() when socketMatchFinished != null:
return socketMatchFinished(_that.winner,_that.scores);case _SocketOpponentAnswer() when socketOpponentAnswer != null:
return socketOpponentAnswer(_that.questionIndex,_that.selectedWord,_that.isCorrect,_that.score);case _SocketRoundSync() when socketRoundSync != null:
return socketRoundSync(_that.round);case _SocketOpponentLeft() when socketOpponentLeft != null:
return socketOpponentLeft();case _:
  return null;

}
}

}

/// @nodoc


class _InitDeck implements VocabularyEvent {
  const _InitDeck({this.topic = 'daily', this.uid, this.isBotOpponent = true, this.roomCode, this.initialOpponentName, this.initialOpponentAvatar});
  

@JsonKey() final  String topic;
 final  String? uid;
@JsonKey() final  bool isBotOpponent;
 final  String? roomCode;
 final  String? initialOpponentName;
 final  String? initialOpponentAvatar;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitDeckCopyWith<_InitDeck> get copyWith => __$InitDeckCopyWithImpl<_InitDeck>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitDeck&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.isBotOpponent, isBotOpponent) || other.isBotOpponent == isBotOpponent)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.initialOpponentName, initialOpponentName) || other.initialOpponentName == initialOpponentName)&&(identical(other.initialOpponentAvatar, initialOpponentAvatar) || other.initialOpponentAvatar == initialOpponentAvatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,topic,uid,isBotOpponent,roomCode,initialOpponentName,initialOpponentAvatar);
}

@override
String toString() {
    return 'VocabularyEvent.initDeck(topic: $topic, uid: $uid, isBotOpponent: $isBotOpponent, roomCode: $roomCode, initialOpponentName: $initialOpponentName, initialOpponentAvatar: $initialOpponentAvatar)';
}


}

/// @nodoc
abstract mixin class _$InitDeckCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$InitDeckCopyWith(_InitDeck value, $Res Function(_InitDeck) _then) = __$InitDeckCopyWithImpl;
@useResult
$Res call({
 String topic, String? uid, bool isBotOpponent, String? roomCode, String? initialOpponentName, String? initialOpponentAvatar
});




}
/// @nodoc
class __$InitDeckCopyWithImpl<$Res>
    implements _$InitDeckCopyWith<$Res> {
  __$InitDeckCopyWithImpl(this._self, this._then);

  final _InitDeck _self;
  final $Res Function(_InitDeck) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topic = null,Object? uid = freezed,Object? isBotOpponent = null,Object? roomCode = freezed,Object? initialOpponentName = freezed,Object? initialOpponentAvatar = freezed,}) {
  return _then(_InitDeck(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,isBotOpponent: null == isBotOpponent ? _self.isBotOpponent : isBotOpponent // ignore: cast_nullable_to_non_nullable
as bool,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,initialOpponentName: freezed == initialOpponentName ? _self.initialOpponentName : initialOpponentName // ignore: cast_nullable_to_non_nullable
as String?,initialOpponentAvatar: freezed == initialOpponentAvatar ? _self.initialOpponentAvatar : initialOpponentAvatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SelectAnswer implements VocabularyEvent {
  const _SelectAnswer({required this.isPlayer1, required this.selectedWord});
  

 final  bool isPlayer1;
 final  String selectedWord;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectAnswerCopyWith<_SelectAnswer> get copyWith => __$SelectAnswerCopyWithImpl<_SelectAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectAnswer&&(identical(other.isPlayer1, isPlayer1) || other.isPlayer1 == isPlayer1)&&(identical(other.selectedWord, selectedWord) || other.selectedWord == selectedWord));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isPlayer1,selectedWord);
}

@override
String toString() {
    return 'VocabularyEvent.selectAnswer(isPlayer1: $isPlayer1, selectedWord: $selectedWord)';
}


}

/// @nodoc
abstract mixin class _$SelectAnswerCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SelectAnswerCopyWith(_SelectAnswer value, $Res Function(_SelectAnswer) _then) = __$SelectAnswerCopyWithImpl;
@useResult
$Res call({
 bool isPlayer1, String selectedWord
});




}
/// @nodoc
class __$SelectAnswerCopyWithImpl<$Res>
    implements _$SelectAnswerCopyWith<$Res> {
  __$SelectAnswerCopyWithImpl(this._self, this._then);

  final _SelectAnswer _self;
  final $Res Function(_SelectAnswer) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPlayer1 = null,Object? selectedWord = null,}) {
  return _then(_SelectAnswer(
isPlayer1: null == isPlayer1 ? _self.isPlayer1 : isPlayer1 // ignore: cast_nullable_to_non_nullable
as bool,selectedWord: null == selectedWord ? _self.selectedWord : selectedWord // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Tick implements VocabularyEvent {
  const _Tick();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.tick()';
}


}




/// @nodoc


class _NextQuestion implements VocabularyEvent {
  const _NextQuestion();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextQuestion);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.nextQuestion()';
}


}




/// @nodoc


class _BotAnswer implements VocabularyEvent {
  const _BotAnswer();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BotAnswer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.botAnswer()';
}


}




/// @nodoc


class _FinishGame implements VocabularyEvent {
  const _FinishGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinishGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.finishGame()';
}


}




/// @nodoc


class _RestartGame implements VocabularyEvent {
  const _RestartGame();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestartGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.restartGame()';
}


}




/// @nodoc


class _SocketConnected implements VocabularyEvent {
  const _SocketConnected({required this.playerIndex, required this.rivalName, required this.rivalAvatar});
  

 final  int playerIndex;
 final  String rivalName;
 final  String rivalAvatar;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketConnectedCopyWith<_SocketConnected> get copyWith => __$SocketConnectedCopyWithImpl<_SocketConnected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketConnected&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,playerIndex,rivalName,rivalAvatar);
}

@override
String toString() {
    return 'VocabularyEvent.socketConnected(playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar)';
}


}

/// @nodoc
abstract mixin class _$SocketConnectedCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketConnectedCopyWith(_SocketConnected value, $Res Function(_SocketConnected) _then) = __$SocketConnectedCopyWithImpl;
@useResult
$Res call({
 int playerIndex, String rivalName, String rivalAvatar
});




}
/// @nodoc
class __$SocketConnectedCopyWithImpl<$Res>
    implements _$SocketConnectedCopyWith<$Res> {
  __$SocketConnectedCopyWithImpl(this._self, this._then);

  final _SocketConnected _self;
  final $Res Function(_SocketConnected) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,}) {
  return _then(_SocketConnected(
playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SocketPlayerJoined implements VocabularyEvent {
  const _SocketPlayerJoined({required this.name, required this.avatar});
  

 final  String name;
 final  String avatar;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketPlayerJoinedCopyWith<_SocketPlayerJoined> get copyWith => __$SocketPlayerJoinedCopyWithImpl<_SocketPlayerJoined>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketPlayerJoined&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,avatar);
}

@override
String toString() {
    return 'VocabularyEvent.socketPlayerJoined(name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$SocketPlayerJoinedCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketPlayerJoinedCopyWith(_SocketPlayerJoined value, $Res Function(_SocketPlayerJoined) _then) = __$SocketPlayerJoinedCopyWithImpl;
@useResult
$Res call({
 String name, String avatar
});




}
/// @nodoc
class __$SocketPlayerJoinedCopyWithImpl<$Res>
    implements _$SocketPlayerJoinedCopyWith<$Res> {
  __$SocketPlayerJoinedCopyWithImpl(this._self, this._then);

  final _SocketPlayerJoined _self;
  final $Res Function(_SocketPlayerJoined) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? avatar = null,}) {
  return _then(_SocketPlayerJoined(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SocketMatchStart implements VocabularyEvent {
  const _SocketMatchStart({required  List<Map<String, dynamic>> rawDeck, required this.playerIndex, required this.rivalName, required this.rivalAvatar, required this.matchRound}): _rawDeck = rawDeck;
  

 final  List<Map<String, dynamic>> _rawDeck;
 List<Map<String, dynamic>> get rawDeck {
  if (_rawDeck is EqualUnmodifiableListView) return _rawDeck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rawDeck);
}

 final  int playerIndex;
 final  String rivalName;
 final  String rivalAvatar;
 final  int matchRound;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketMatchStartCopyWith<_SocketMatchStart> get copyWith => __$SocketMatchStartCopyWithImpl<_SocketMatchStart>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketMatchStart&&const DeepCollectionEquality().equals(other.rawDeck, _rawDeck)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.matchRound, matchRound) || other.matchRound == matchRound));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_rawDeck),playerIndex,rivalName,rivalAvatar,matchRound);
}

@override
String toString() {
    return 'VocabularyEvent.socketMatchStart(rawDeck: $rawDeck, playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar, matchRound: $matchRound)';
}


}

/// @nodoc
abstract mixin class _$SocketMatchStartCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketMatchStartCopyWith(_SocketMatchStart value, $Res Function(_SocketMatchStart) _then) = __$SocketMatchStartCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> rawDeck, int playerIndex, String rivalName, String rivalAvatar, int matchRound
});




}
/// @nodoc
class __$SocketMatchStartCopyWithImpl<$Res>
    implements _$SocketMatchStartCopyWith<$Res> {
  __$SocketMatchStartCopyWithImpl(this._self, this._then);

  final _SocketMatchStart _self;
  final $Res Function(_SocketMatchStart) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rawDeck = null,Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,Object? matchRound = null,}) {
  return _then(_SocketMatchStart(
rawDeck: null == rawDeck ? _self._rawDeck : rawDeck // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,matchRound: null == matchRound ? _self.matchRound : matchRound // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SocketSyncState implements VocabularyEvent {
  const _SocketSyncState({required this.roundIndex, required this.startedAt, required  List<int> scores,  List<int> streaks = const []}): _scores = scores,_streaks = streaks;
  

 final  int roundIndex;
 final  int startedAt;
 final  List<int> _scores;
 List<int> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}

 final  List<int> _streaks;
@JsonKey() List<int> get streaks {
  if (_streaks is EqualUnmodifiableListView) return _streaks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_streaks);
}


/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketSyncStateCopyWith<_SocketSyncState> get copyWith => __$SocketSyncStateCopyWithImpl<_SocketSyncState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketSyncState&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&const DeepCollectionEquality().equals(other.scores, _scores)&&const DeepCollectionEquality().equals(other.streaks, _streaks));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roundIndex,startedAt,const DeepCollectionEquality().hash(_scores),const DeepCollectionEquality().hash(_streaks));
}

@override
String toString() {
    return 'VocabularyEvent.socketSyncState(roundIndex: $roundIndex, startedAt: $startedAt, scores: $scores, streaks: $streaks)';
}


}

/// @nodoc
abstract mixin class _$SocketSyncStateCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketSyncStateCopyWith(_SocketSyncState value, $Res Function(_SocketSyncState) _then) = __$SocketSyncStateCopyWithImpl;
@useResult
$Res call({
 int roundIndex, int startedAt, List<int> scores, List<int> streaks
});




}
/// @nodoc
class __$SocketSyncStateCopyWithImpl<$Res>
    implements _$SocketSyncStateCopyWith<$Res> {
  __$SocketSyncStateCopyWithImpl(this._self, this._then);

  final _SocketSyncState _self;
  final $Res Function(_SocketSyncState) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roundIndex = null,Object? startedAt = null,Object? scores = null,Object? streaks = null,}) {
  return _then(_SocketSyncState(
roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,streaks: null == streaks ? _self._streaks : streaks // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _SocketAnswerResult implements VocabularyEvent {
  const _SocketAnswerResult({required this.playerIndex, required this.optionId, required this.isCorrect, required  List<int> scores, this.revealTime = 1350}): _scores = scores;
  

 final  int playerIndex;
 final  String optionId;
 final  bool isCorrect;
 final  List<int> _scores;
 List<int> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}

@JsonKey() final  int revealTime;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketAnswerResultCopyWith<_SocketAnswerResult> get copyWith => __$SocketAnswerResultCopyWithImpl<_SocketAnswerResult>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketAnswerResult&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&const DeepCollectionEquality().equals(other.scores, _scores)&&(identical(other.revealTime, revealTime) || other.revealTime == revealTime));
}


@override
int get hashCode {
    return Object.hash(runtimeType,playerIndex,optionId,isCorrect,const DeepCollectionEquality().hash(_scores),revealTime);
}

@override
String toString() {
    return 'VocabularyEvent.socketAnswerResult(playerIndex: $playerIndex, optionId: $optionId, isCorrect: $isCorrect, scores: $scores, revealTime: $revealTime)';
}


}

/// @nodoc
abstract mixin class _$SocketAnswerResultCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketAnswerResultCopyWith(_SocketAnswerResult value, $Res Function(_SocketAnswerResult) _then) = __$SocketAnswerResultCopyWithImpl;
@useResult
$Res call({
 int playerIndex, String optionId, bool isCorrect, List<int> scores, int revealTime
});




}
/// @nodoc
class __$SocketAnswerResultCopyWithImpl<$Res>
    implements _$SocketAnswerResultCopyWith<$Res> {
  __$SocketAnswerResultCopyWithImpl(this._self, this._then);

  final _SocketAnswerResult _self;
  final $Res Function(_SocketAnswerResult) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? playerIndex = null,Object? optionId = null,Object? isCorrect = null,Object? scores = null,Object? revealTime = null,}) {
  return _then(_SocketAnswerResult(
playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,revealTime: null == revealTime ? _self.revealTime : revealTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SocketRoundTimeout implements VocabularyEvent {
  const _SocketRoundTimeout();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketRoundTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.socketRoundTimeout()';
}


}




/// @nodoc


class _SocketNextRound implements VocabularyEvent {
  const _SocketNextRound({required this.roundIndex, required this.startedAt,  List<int> scores = const []}): _scores = scores;
  

 final  int roundIndex;
 final  int startedAt;
 final  List<int> _scores;
@JsonKey() List<int> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}


/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketNextRoundCopyWith<_SocketNextRound> get copyWith => __$SocketNextRoundCopyWithImpl<_SocketNextRound>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketNextRound&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&const DeepCollectionEquality().equals(other.scores, _scores));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roundIndex,startedAt,const DeepCollectionEquality().hash(_scores));
}

@override
String toString() {
    return 'VocabularyEvent.socketNextRound(roundIndex: $roundIndex, startedAt: $startedAt, scores: $scores)';
}


}

/// @nodoc
abstract mixin class _$SocketNextRoundCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketNextRoundCopyWith(_SocketNextRound value, $Res Function(_SocketNextRound) _then) = __$SocketNextRoundCopyWithImpl;
@useResult
$Res call({
 int roundIndex, int startedAt, List<int> scores
});




}
/// @nodoc
class __$SocketNextRoundCopyWithImpl<$Res>
    implements _$SocketNextRoundCopyWith<$Res> {
  __$SocketNextRoundCopyWithImpl(this._self, this._then);

  final _SocketNextRound _self;
  final $Res Function(_SocketNextRound) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roundIndex = null,Object? startedAt = null,Object? scores = null,}) {
  return _then(_SocketNextRound(
roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _SocketMatchFinished implements VocabularyEvent {
  const _SocketMatchFinished({required this.winner,  List<int> scores = const []}): _scores = scores;
  

 final  dynamic winner;
 final  List<int> _scores;
@JsonKey() List<int> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}


/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketMatchFinishedCopyWith<_SocketMatchFinished> get copyWith => __$SocketMatchFinishedCopyWithImpl<_SocketMatchFinished>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketMatchFinished&&const DeepCollectionEquality().equals(other.winner, winner)&&const DeepCollectionEquality().equals(other.scores, _scores));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(winner),const DeepCollectionEquality().hash(_scores));
}

@override
String toString() {
    return 'VocabularyEvent.socketMatchFinished(winner: $winner, scores: $scores)';
}


}

/// @nodoc
abstract mixin class _$SocketMatchFinishedCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketMatchFinishedCopyWith(_SocketMatchFinished value, $Res Function(_SocketMatchFinished) _then) = __$SocketMatchFinishedCopyWithImpl;
@useResult
$Res call({
 dynamic winner, List<int> scores
});




}
/// @nodoc
class __$SocketMatchFinishedCopyWithImpl<$Res>
    implements _$SocketMatchFinishedCopyWith<$Res> {
  __$SocketMatchFinishedCopyWithImpl(this._self, this._then);

  final _SocketMatchFinished _self;
  final $Res Function(_SocketMatchFinished) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winner = freezed,Object? scores = null,}) {
  return _then(_SocketMatchFinished(
winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as dynamic,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _SocketOpponentAnswer implements VocabularyEvent {
  const _SocketOpponentAnswer({required this.questionIndex, required this.selectedWord, required this.isCorrect, required this.score});
  

 final  int questionIndex;
 final  String selectedWord;
 final  bool isCorrect;
 final  int score;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketOpponentAnswerCopyWith<_SocketOpponentAnswer> get copyWith => __$SocketOpponentAnswerCopyWithImpl<_SocketOpponentAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketOpponentAnswer&&(identical(other.questionIndex, questionIndex) || other.questionIndex == questionIndex)&&(identical(other.selectedWord, selectedWord) || other.selectedWord == selectedWord)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode {
    return Object.hash(runtimeType,questionIndex,selectedWord,isCorrect,score);
}

@override
String toString() {
    return 'VocabularyEvent.socketOpponentAnswer(questionIndex: $questionIndex, selectedWord: $selectedWord, isCorrect: $isCorrect, score: $score)';
}


}

/// @nodoc
abstract mixin class _$SocketOpponentAnswerCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketOpponentAnswerCopyWith(_SocketOpponentAnswer value, $Res Function(_SocketOpponentAnswer) _then) = __$SocketOpponentAnswerCopyWithImpl;
@useResult
$Res call({
 int questionIndex, String selectedWord, bool isCorrect, int score
});




}
/// @nodoc
class __$SocketOpponentAnswerCopyWithImpl<$Res>
    implements _$SocketOpponentAnswerCopyWith<$Res> {
  __$SocketOpponentAnswerCopyWithImpl(this._self, this._then);

  final _SocketOpponentAnswer _self;
  final $Res Function(_SocketOpponentAnswer) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionIndex = null,Object? selectedWord = null,Object? isCorrect = null,Object? score = null,}) {
  return _then(_SocketOpponentAnswer(
questionIndex: null == questionIndex ? _self.questionIndex : questionIndex // ignore: cast_nullable_to_non_nullable
as int,selectedWord: null == selectedWord ? _self.selectedWord : selectedWord // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SocketRoundSync implements VocabularyEvent {
  const _SocketRoundSync({required this.round});
  

 final  int round;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketRoundSyncCopyWith<_SocketRoundSync> get copyWith => __$SocketRoundSyncCopyWithImpl<_SocketRoundSync>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketRoundSync&&(identical(other.round, round) || other.round == round));
}


@override
int get hashCode {
    return Object.hash(runtimeType,round);
}

@override
String toString() {
    return 'VocabularyEvent.socketRoundSync(round: $round)';
}


}

/// @nodoc
abstract mixin class _$SocketRoundSyncCopyWith<$Res> implements $VocabularyEventCopyWith<$Res> {
  factory _$SocketRoundSyncCopyWith(_SocketRoundSync value, $Res Function(_SocketRoundSync) _then) = __$SocketRoundSyncCopyWithImpl;
@useResult
$Res call({
 int round
});




}
/// @nodoc
class __$SocketRoundSyncCopyWithImpl<$Res>
    implements _$SocketRoundSyncCopyWith<$Res> {
  __$SocketRoundSyncCopyWithImpl(this._self, this._then);

  final _SocketRoundSync _self;
  final $Res Function(_SocketRoundSync) _then;

/// Create a copy of VocabularyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? round = null,}) {
  return _then(_SocketRoundSync(
round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SocketOpponentLeft implements VocabularyEvent {
  const _SocketOpponentLeft();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketOpponentLeft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'VocabularyEvent.socketOpponentLeft()';
}


}




/// @nodoc
mixin _$VocabularyState {

 bool get isLoading; String? get errorMessage; BattleDeck? get deckEntity; List<BattleQuestion> get questions; int get currentQuestionIndex; int get player1Score; int get player2Score; int get correctCountP1; int get remainingSeconds; bool get isRoundLocked; String? get selectedWordP1; String? get selectedWordP2; bool get isGameOver; bool get isSavingReward; BattleReward? get reward; List<String> get optionsP1; List<String> get optionsP2; bool get isBotOpponent; String? get roomCode; String? get opponentName; String? get opponentAvatar; bool get isOpponentConnected; bool get isOpponentLeft; String? get opponentLeftMessage; int get playerIndex; int get matchRound; int get startedAt; String? get selectedOptionIdP1; String? get selectedOptionIdP2; bool? get isP1Correct; bool? get isP2Correct; bool get isWaitingForReady; String get topic; String? get currentUid; Map<String, bool> get answersP1; List<String> get wrongWordsP1; List<String> get wrongWordsP2;
/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyStateCopyWith<VocabularyState> get copyWith => _$VocabularyStateCopyWithImpl<VocabularyState>(this as VocabularyState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VocabularyState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.deckEntity, _this.deckEntity) || other.deckEntity == _this.deckEntity)&&const DeepCollectionEquality().equals(other.questions, _this.questions)&&(identical(other.currentQuestionIndex, _this.currentQuestionIndex) || other.currentQuestionIndex == _this.currentQuestionIndex)&&(identical(other.player1Score, _this.player1Score) || other.player1Score == _this.player1Score)&&(identical(other.player2Score, _this.player2Score) || other.player2Score == _this.player2Score)&&(identical(other.correctCountP1, _this.correctCountP1) || other.correctCountP1 == _this.correctCountP1)&&(identical(other.remainingSeconds, _this.remainingSeconds) || other.remainingSeconds == _this.remainingSeconds)&&(identical(other.isRoundLocked, _this.isRoundLocked) || other.isRoundLocked == _this.isRoundLocked)&&(identical(other.selectedWordP1, _this.selectedWordP1) || other.selectedWordP1 == _this.selectedWordP1)&&(identical(other.selectedWordP2, _this.selectedWordP2) || other.selectedWordP2 == _this.selectedWordP2)&&(identical(other.isGameOver, _this.isGameOver) || other.isGameOver == _this.isGameOver)&&(identical(other.isSavingReward, _this.isSavingReward) || other.isSavingReward == _this.isSavingReward)&&(identical(other.reward, _this.reward) || other.reward == _this.reward)&&const DeepCollectionEquality().equals(other.optionsP1, _this.optionsP1)&&const DeepCollectionEquality().equals(other.optionsP2, _this.optionsP2)&&(identical(other.isBotOpponent, _this.isBotOpponent) || other.isBotOpponent == _this.isBotOpponent)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.opponentName, _this.opponentName) || other.opponentName == _this.opponentName)&&(identical(other.opponentAvatar, _this.opponentAvatar) || other.opponentAvatar == _this.opponentAvatar)&&(identical(other.isOpponentConnected, _this.isOpponentConnected) || other.isOpponentConnected == _this.isOpponentConnected)&&(identical(other.isOpponentLeft, _this.isOpponentLeft) || other.isOpponentLeft == _this.isOpponentLeft)&&(identical(other.opponentLeftMessage, _this.opponentLeftMessage) || other.opponentLeftMessage == _this.opponentLeftMessage)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.matchRound, _this.matchRound) || other.matchRound == _this.matchRound)&&(identical(other.startedAt, _this.startedAt) || other.startedAt == _this.startedAt)&&(identical(other.selectedOptionIdP1, _this.selectedOptionIdP1) || other.selectedOptionIdP1 == _this.selectedOptionIdP1)&&(identical(other.selectedOptionIdP2, _this.selectedOptionIdP2) || other.selectedOptionIdP2 == _this.selectedOptionIdP2)&&(identical(other.isP1Correct, _this.isP1Correct) || other.isP1Correct == _this.isP1Correct)&&(identical(other.isP2Correct, _this.isP2Correct) || other.isP2Correct == _this.isP2Correct)&&(identical(other.isWaitingForReady, _this.isWaitingForReady) || other.isWaitingForReady == _this.isWaitingForReady)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.currentUid, _this.currentUid) || other.currentUid == _this.currentUid)&&const DeepCollectionEquality().equals(other.answersP1, _this.answersP1)&&const DeepCollectionEquality().equals(other.wrongWordsP1, _this.wrongWordsP1)&&const DeepCollectionEquality().equals(other.wrongWordsP2, _this.wrongWordsP2));
}


@override
int get hashCode {
  final _this = this as VocabularyState;
  return Object.hashAll([runtimeType,_this.isLoading,_this.errorMessage,_this.deckEntity,const DeepCollectionEquality().hash(_this.questions),_this.currentQuestionIndex,_this.player1Score,_this.player2Score,_this.correctCountP1,_this.remainingSeconds,_this.isRoundLocked,_this.selectedWordP1,_this.selectedWordP2,_this.isGameOver,_this.isSavingReward,_this.reward,const DeepCollectionEquality().hash(_this.optionsP1),const DeepCollectionEquality().hash(_this.optionsP2),_this.isBotOpponent,_this.roomCode,_this.opponentName,_this.opponentAvatar,_this.isOpponentConnected,_this.isOpponentLeft,_this.opponentLeftMessage,_this.playerIndex,_this.matchRound,_this.startedAt,_this.selectedOptionIdP1,_this.selectedOptionIdP2,_this.isP1Correct,_this.isP2Correct,_this.isWaitingForReady,_this.topic,_this.currentUid,const DeepCollectionEquality().hash(_this.answersP1),const DeepCollectionEquality().hash(_this.wrongWordsP1),const DeepCollectionEquality().hash(_this.wrongWordsP2)]);
}



}

/// @nodoc
abstract mixin class $VocabularyStateCopyWith<$Res>  {
  factory $VocabularyStateCopyWith(VocabularyState value, $Res Function(VocabularyState) _then) = _$VocabularyStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, BattleDeck? deckEntity, List<BattleQuestion> questions, int currentQuestionIndex, int player1Score, int player2Score, int correctCountP1, int remainingSeconds, bool isRoundLocked, String? selectedWordP1, String? selectedWordP2, bool isGameOver, bool isSavingReward, BattleReward? reward, List<String> optionsP1, List<String> optionsP2, bool isBotOpponent, String? roomCode, String? opponentName, String? opponentAvatar, bool isOpponentConnected, bool isOpponentLeft, String? opponentLeftMessage, int playerIndex, int matchRound, int startedAt, String? selectedOptionIdP1, String? selectedOptionIdP2, bool? isP1Correct, bool? isP2Correct, bool isWaitingForReady, String topic, String? currentUid, Map<String, bool> answersP1, List<String> wrongWordsP1, List<String> wrongWordsP2
});


$BattleDeckCopyWith<$Res>? get deckEntity;$BattleRewardCopyWith<$Res>? get reward;

}
/// @nodoc
class _$VocabularyStateCopyWithImpl<$Res>
    implements $VocabularyStateCopyWith<$Res> {
  _$VocabularyStateCopyWithImpl(this._self, this._then);

  final VocabularyState _self;
  final $Res Function(VocabularyState) _then;

/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? deckEntity = freezed,Object? questions = null,Object? currentQuestionIndex = null,Object? player1Score = null,Object? player2Score = null,Object? correctCountP1 = null,Object? remainingSeconds = null,Object? isRoundLocked = null,Object? selectedWordP1 = freezed,Object? selectedWordP2 = freezed,Object? isGameOver = null,Object? isSavingReward = null,Object? reward = freezed,Object? optionsP1 = null,Object? optionsP2 = null,Object? isBotOpponent = null,Object? roomCode = freezed,Object? opponentName = freezed,Object? opponentAvatar = freezed,Object? isOpponentConnected = null,Object? isOpponentLeft = null,Object? opponentLeftMessage = freezed,Object? playerIndex = null,Object? matchRound = null,Object? startedAt = null,Object? selectedOptionIdP1 = freezed,Object? selectedOptionIdP2 = freezed,Object? isP1Correct = freezed,Object? isP2Correct = freezed,Object? isWaitingForReady = null,Object? topic = null,Object? currentUid = freezed,Object? answersP1 = null,Object? wrongWordsP1 = null,Object? wrongWordsP2 = null,}) {
  return _then(VocabularyState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deckEntity: freezed == deckEntity ? _self.deckEntity : deckEntity // ignore: cast_nullable_to_non_nullable
as BattleDeck?,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<BattleQuestion>,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,player1Score: null == player1Score ? _self.player1Score : player1Score // ignore: cast_nullable_to_non_nullable
as int,player2Score: null == player2Score ? _self.player2Score : player2Score // ignore: cast_nullable_to_non_nullable
as int,correctCountP1: null == correctCountP1 ? _self.correctCountP1 : correctCountP1 // ignore: cast_nullable_to_non_nullable
as int,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,isRoundLocked: null == isRoundLocked ? _self.isRoundLocked : isRoundLocked // ignore: cast_nullable_to_non_nullable
as bool,selectedWordP1: freezed == selectedWordP1 ? _self.selectedWordP1 : selectedWordP1 // ignore: cast_nullable_to_non_nullable
as String?,selectedWordP2: freezed == selectedWordP2 ? _self.selectedWordP2 : selectedWordP2 // ignore: cast_nullable_to_non_nullable
as String?,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,isSavingReward: null == isSavingReward ? _self.isSavingReward : isSavingReward // ignore: cast_nullable_to_non_nullable
as bool,reward: freezed == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BattleReward?,optionsP1: null == optionsP1 ? _self.optionsP1 : optionsP1 // ignore: cast_nullable_to_non_nullable
as List<String>,optionsP2: null == optionsP2 ? _self.optionsP2 : optionsP2 // ignore: cast_nullable_to_non_nullable
as List<String>,isBotOpponent: null == isBotOpponent ? _self.isBotOpponent : isBotOpponent // ignore: cast_nullable_to_non_nullable
as bool,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,opponentName: freezed == opponentName ? _self.opponentName : opponentName // ignore: cast_nullable_to_non_nullable
as String?,opponentAvatar: freezed == opponentAvatar ? _self.opponentAvatar : opponentAvatar // ignore: cast_nullable_to_non_nullable
as String?,isOpponentConnected: null == isOpponentConnected ? _self.isOpponentConnected : isOpponentConnected // ignore: cast_nullable_to_non_nullable
as bool,isOpponentLeft: null == isOpponentLeft ? _self.isOpponentLeft : isOpponentLeft // ignore: cast_nullable_to_non_nullable
as bool,opponentLeftMessage: freezed == opponentLeftMessage ? _self.opponentLeftMessage : opponentLeftMessage // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,matchRound: null == matchRound ? _self.matchRound : matchRound // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,selectedOptionIdP1: freezed == selectedOptionIdP1 ? _self.selectedOptionIdP1 : selectedOptionIdP1 // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionIdP2: freezed == selectedOptionIdP2 ? _self.selectedOptionIdP2 : selectedOptionIdP2 // ignore: cast_nullable_to_non_nullable
as String?,isP1Correct: freezed == isP1Correct ? _self.isP1Correct : isP1Correct // ignore: cast_nullable_to_non_nullable
as bool?,isP2Correct: freezed == isP2Correct ? _self.isP2Correct : isP2Correct // ignore: cast_nullable_to_non_nullable
as bool?,isWaitingForReady: null == isWaitingForReady ? _self.isWaitingForReady : isWaitingForReady // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,currentUid: freezed == currentUid ? _self.currentUid : currentUid // ignore: cast_nullable_to_non_nullable
as String?,answersP1: null == answersP1 ? _self.answersP1 : answersP1 // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,wrongWordsP1: null == wrongWordsP1 ? _self.wrongWordsP1 : wrongWordsP1 // ignore: cast_nullable_to_non_nullable
as List<String>,wrongWordsP2: null == wrongWordsP2 ? _self.wrongWordsP2 : wrongWordsP2 // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleDeckCopyWith<$Res>? get deckEntity {
    if (_self.deckEntity == null) {
    return null;
  }

  return $BattleDeckCopyWith<$Res>(_self.deckEntity!, (value) {
    return _then(_self.copyWith(deckEntity: value));
  });
}/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleRewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
    return null;
  }

  return $BattleRewardCopyWith<$Res>(_self.reward!, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}


/// Adds pattern-matching-related methods to [VocabularyState].
extension VocabularyStatePatterns on VocabularyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VocabularyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VocabularyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VocabularyState value)  $default,){
final _that = this;
switch (_that) {
case _VocabularyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VocabularyState value)?  $default,){
final _that = this;
switch (_that) {
case _VocabularyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  BattleDeck? deckEntity,  List<BattleQuestion> questions,  int currentQuestionIndex,  int player1Score,  int player2Score,  int correctCountP1,  int remainingSeconds,  bool isRoundLocked,  String? selectedWordP1,  String? selectedWordP2,  bool isGameOver,  bool isSavingReward,  BattleReward? reward,  List<String> optionsP1,  List<String> optionsP2,  bool isBotOpponent,  String? roomCode,  String? opponentName,  String? opponentAvatar,  bool isOpponentConnected,  bool isOpponentLeft,  String? opponentLeftMessage,  int playerIndex,  int matchRound,  int startedAt,  String? selectedOptionIdP1,  String? selectedOptionIdP2,  bool? isP1Correct,  bool? isP2Correct,  bool isWaitingForReady,  String topic,  String? currentUid,  Map<String, bool> answersP1,  List<String> wrongWordsP1,  List<String> wrongWordsP2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VocabularyState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.deckEntity,_that.questions,_that.currentQuestionIndex,_that.player1Score,_that.player2Score,_that.correctCountP1,_that.remainingSeconds,_that.isRoundLocked,_that.selectedWordP1,_that.selectedWordP2,_that.isGameOver,_that.isSavingReward,_that.reward,_that.optionsP1,_that.optionsP2,_that.isBotOpponent,_that.roomCode,_that.opponentName,_that.opponentAvatar,_that.isOpponentConnected,_that.isOpponentLeft,_that.opponentLeftMessage,_that.playerIndex,_that.matchRound,_that.startedAt,_that.selectedOptionIdP1,_that.selectedOptionIdP2,_that.isP1Correct,_that.isP2Correct,_that.isWaitingForReady,_that.topic,_that.currentUid,_that.answersP1,_that.wrongWordsP1,_that.wrongWordsP2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  BattleDeck? deckEntity,  List<BattleQuestion> questions,  int currentQuestionIndex,  int player1Score,  int player2Score,  int correctCountP1,  int remainingSeconds,  bool isRoundLocked,  String? selectedWordP1,  String? selectedWordP2,  bool isGameOver,  bool isSavingReward,  BattleReward? reward,  List<String> optionsP1,  List<String> optionsP2,  bool isBotOpponent,  String? roomCode,  String? opponentName,  String? opponentAvatar,  bool isOpponentConnected,  bool isOpponentLeft,  String? opponentLeftMessage,  int playerIndex,  int matchRound,  int startedAt,  String? selectedOptionIdP1,  String? selectedOptionIdP2,  bool? isP1Correct,  bool? isP2Correct,  bool isWaitingForReady,  String topic,  String? currentUid,  Map<String, bool> answersP1,  List<String> wrongWordsP1,  List<String> wrongWordsP2)  $default,) {final _that = this;
switch (_that) {
case _VocabularyState():
return $default(_that.isLoading,_that.errorMessage,_that.deckEntity,_that.questions,_that.currentQuestionIndex,_that.player1Score,_that.player2Score,_that.correctCountP1,_that.remainingSeconds,_that.isRoundLocked,_that.selectedWordP1,_that.selectedWordP2,_that.isGameOver,_that.isSavingReward,_that.reward,_that.optionsP1,_that.optionsP2,_that.isBotOpponent,_that.roomCode,_that.opponentName,_that.opponentAvatar,_that.isOpponentConnected,_that.isOpponentLeft,_that.opponentLeftMessage,_that.playerIndex,_that.matchRound,_that.startedAt,_that.selectedOptionIdP1,_that.selectedOptionIdP2,_that.isP1Correct,_that.isP2Correct,_that.isWaitingForReady,_that.topic,_that.currentUid,_that.answersP1,_that.wrongWordsP1,_that.wrongWordsP2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  BattleDeck? deckEntity,  List<BattleQuestion> questions,  int currentQuestionIndex,  int player1Score,  int player2Score,  int correctCountP1,  int remainingSeconds,  bool isRoundLocked,  String? selectedWordP1,  String? selectedWordP2,  bool isGameOver,  bool isSavingReward,  BattleReward? reward,  List<String> optionsP1,  List<String> optionsP2,  bool isBotOpponent,  String? roomCode,  String? opponentName,  String? opponentAvatar,  bool isOpponentConnected,  bool isOpponentLeft,  String? opponentLeftMessage,  int playerIndex,  int matchRound,  int startedAt,  String? selectedOptionIdP1,  String? selectedOptionIdP2,  bool? isP1Correct,  bool? isP2Correct,  bool isWaitingForReady,  String topic,  String? currentUid,  Map<String, bool> answersP1,  List<String> wrongWordsP1,  List<String> wrongWordsP2)?  $default,) {final _that = this;
switch (_that) {
case _VocabularyState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.deckEntity,_that.questions,_that.currentQuestionIndex,_that.player1Score,_that.player2Score,_that.correctCountP1,_that.remainingSeconds,_that.isRoundLocked,_that.selectedWordP1,_that.selectedWordP2,_that.isGameOver,_that.isSavingReward,_that.reward,_that.optionsP1,_that.optionsP2,_that.isBotOpponent,_that.roomCode,_that.opponentName,_that.opponentAvatar,_that.isOpponentConnected,_that.isOpponentLeft,_that.opponentLeftMessage,_that.playerIndex,_that.matchRound,_that.startedAt,_that.selectedOptionIdP1,_that.selectedOptionIdP2,_that.isP1Correct,_that.isP2Correct,_that.isWaitingForReady,_that.topic,_that.currentUid,_that.answersP1,_that.wrongWordsP1,_that.wrongWordsP2);case _:
  return null;

}
}

}

/// @nodoc


class _VocabularyState extends VocabularyState {
  const _VocabularyState({this.isLoading = false, this.errorMessage, this.deckEntity,  List<BattleQuestion> questions = const [], this.currentQuestionIndex = 0, this.player1Score = 0, this.player2Score = 0, this.correctCountP1 = 0, this.remainingSeconds = 10, this.isRoundLocked = false, this.selectedWordP1, this.selectedWordP2, this.isGameOver = false, this.isSavingReward = false, this.reward,  List<String> optionsP1 = const [],  List<String> optionsP2 = const [], this.isBotOpponent = true, this.roomCode, this.opponentName, this.opponentAvatar, this.isOpponentConnected = false, this.isOpponentLeft = false, this.opponentLeftMessage, this.playerIndex = 0, this.matchRound = 1, this.startedAt = 0, this.selectedOptionIdP1, this.selectedOptionIdP2, this.isP1Correct, this.isP2Correct, this.isWaitingForReady = false, this.topic = 'daily', this.currentUid,  Map<String, bool> answersP1 = const {},  List<String> wrongWordsP1 = const [],  List<String> wrongWordsP2 = const []}): _questions = questions,_optionsP1 = optionsP1,_optionsP2 = optionsP2,_answersP1 = answersP1,_wrongWordsP1 = wrongWordsP1,_wrongWordsP2 = wrongWordsP2,super._();
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  BattleDeck? deckEntity;
 final  List<BattleQuestion> _questions;
@override@JsonKey() List<BattleQuestion> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

@override@JsonKey() final  int currentQuestionIndex;
@override@JsonKey() final  int player1Score;
@override@JsonKey() final  int player2Score;
@override@JsonKey() final  int correctCountP1;
@override@JsonKey() final  int remainingSeconds;
@override@JsonKey() final  bool isRoundLocked;
@override final  String? selectedWordP1;
@override final  String? selectedWordP2;
@override@JsonKey() final  bool isGameOver;
@override@JsonKey() final  bool isSavingReward;
@override final  BattleReward? reward;
 final  List<String> _optionsP1;
@override@JsonKey() List<String> get optionsP1 {
  if (_optionsP1 is EqualUnmodifiableListView) return _optionsP1;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_optionsP1);
}

 final  List<String> _optionsP2;
@override@JsonKey() List<String> get optionsP2 {
  if (_optionsP2 is EqualUnmodifiableListView) return _optionsP2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_optionsP2);
}

@override@JsonKey() final  bool isBotOpponent;
@override final  String? roomCode;
@override final  String? opponentName;
@override final  String? opponentAvatar;
@override@JsonKey() final  bool isOpponentConnected;
@override@JsonKey() final  bool isOpponentLeft;
@override final  String? opponentLeftMessage;
@override@JsonKey() final  int playerIndex;
@override@JsonKey() final  int matchRound;
@override@JsonKey() final  int startedAt;
@override final  String? selectedOptionIdP1;
@override final  String? selectedOptionIdP2;
@override final  bool? isP1Correct;
@override final  bool? isP2Correct;
@override@JsonKey() final  bool isWaitingForReady;
@override@JsonKey() final  String topic;
@override final  String? currentUid;
 final  Map<String, bool> _answersP1;
@override@JsonKey() Map<String, bool> get answersP1 {
  if (_answersP1 is EqualUnmodifiableMapView) return _answersP1;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_answersP1);
}

 final  List<String> _wrongWordsP1;
@override@JsonKey() List<String> get wrongWordsP1 {
  if (_wrongWordsP1 is EqualUnmodifiableListView) return _wrongWordsP1;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wrongWordsP1);
}

 final  List<String> _wrongWordsP2;
@override@JsonKey() List<String> get wrongWordsP2 {
  if (_wrongWordsP2 is EqualUnmodifiableListView) return _wrongWordsP2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wrongWordsP2);
}


/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyStateCopyWith<_VocabularyState> get copyWith => __$VocabularyStateCopyWithImpl<_VocabularyState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VocabularyState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.deckEntity, deckEntity) || other.deckEntity == deckEntity)&&const DeepCollectionEquality().equals(other.questions, _questions)&&(identical(other.currentQuestionIndex, currentQuestionIndex) || other.currentQuestionIndex == currentQuestionIndex)&&(identical(other.player1Score, player1Score) || other.player1Score == player1Score)&&(identical(other.player2Score, player2Score) || other.player2Score == player2Score)&&(identical(other.correctCountP1, correctCountP1) || other.correctCountP1 == correctCountP1)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.isRoundLocked, isRoundLocked) || other.isRoundLocked == isRoundLocked)&&(identical(other.selectedWordP1, selectedWordP1) || other.selectedWordP1 == selectedWordP1)&&(identical(other.selectedWordP2, selectedWordP2) || other.selectedWordP2 == selectedWordP2)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.isSavingReward, isSavingReward) || other.isSavingReward == isSavingReward)&&(identical(other.reward, reward) || other.reward == reward)&&const DeepCollectionEquality().equals(other.optionsP1, _optionsP1)&&const DeepCollectionEquality().equals(other.optionsP2, _optionsP2)&&(identical(other.isBotOpponent, isBotOpponent) || other.isBotOpponent == isBotOpponent)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.opponentName, opponentName) || other.opponentName == opponentName)&&(identical(other.opponentAvatar, opponentAvatar) || other.opponentAvatar == opponentAvatar)&&(identical(other.isOpponentConnected, isOpponentConnected) || other.isOpponentConnected == isOpponentConnected)&&(identical(other.isOpponentLeft, isOpponentLeft) || other.isOpponentLeft == isOpponentLeft)&&(identical(other.opponentLeftMessage, opponentLeftMessage) || other.opponentLeftMessage == opponentLeftMessage)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.matchRound, matchRound) || other.matchRound == matchRound)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.selectedOptionIdP1, selectedOptionIdP1) || other.selectedOptionIdP1 == selectedOptionIdP1)&&(identical(other.selectedOptionIdP2, selectedOptionIdP2) || other.selectedOptionIdP2 == selectedOptionIdP2)&&(identical(other.isP1Correct, isP1Correct) || other.isP1Correct == isP1Correct)&&(identical(other.isP2Correct, isP2Correct) || other.isP2Correct == isP2Correct)&&(identical(other.isWaitingForReady, isWaitingForReady) || other.isWaitingForReady == isWaitingForReady)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.currentUid, currentUid) || other.currentUid == currentUid)&&const DeepCollectionEquality().equals(other.answersP1, _answersP1)&&const DeepCollectionEquality().equals(other.wrongWordsP1, _wrongWordsP1)&&const DeepCollectionEquality().equals(other.wrongWordsP2, _wrongWordsP2));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,isLoading,errorMessage,deckEntity,const DeepCollectionEquality().hash(_questions),currentQuestionIndex,player1Score,player2Score,correctCountP1,remainingSeconds,isRoundLocked,selectedWordP1,selectedWordP2,isGameOver,isSavingReward,reward,const DeepCollectionEquality().hash(_optionsP1),const DeepCollectionEquality().hash(_optionsP2),isBotOpponent,roomCode,opponentName,opponentAvatar,isOpponentConnected,isOpponentLeft,opponentLeftMessage,playerIndex,matchRound,startedAt,selectedOptionIdP1,selectedOptionIdP2,isP1Correct,isP2Correct,isWaitingForReady,topic,currentUid,const DeepCollectionEquality().hash(_answersP1),const DeepCollectionEquality().hash(_wrongWordsP1),const DeepCollectionEquality().hash(_wrongWordsP2)]);
}



}

/// @nodoc
abstract mixin class _$VocabularyStateCopyWith<$Res> implements $VocabularyStateCopyWith<$Res> {
  factory _$VocabularyStateCopyWith(_VocabularyState value, $Res Function(_VocabularyState) _then) = __$VocabularyStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, BattleDeck? deckEntity, List<BattleQuestion> questions, int currentQuestionIndex, int player1Score, int player2Score, int correctCountP1, int remainingSeconds, bool isRoundLocked, String? selectedWordP1, String? selectedWordP2, bool isGameOver, bool isSavingReward, BattleReward? reward, List<String> optionsP1, List<String> optionsP2, bool isBotOpponent, String? roomCode, String? opponentName, String? opponentAvatar, bool isOpponentConnected, bool isOpponentLeft, String? opponentLeftMessage, int playerIndex, int matchRound, int startedAt, String? selectedOptionIdP1, String? selectedOptionIdP2, bool? isP1Correct, bool? isP2Correct, bool isWaitingForReady, String topic, String? currentUid, Map<String, bool> answersP1, List<String> wrongWordsP1, List<String> wrongWordsP2
});


@override $BattleDeckCopyWith<$Res>? get deckEntity;@override $BattleRewardCopyWith<$Res>? get reward;

}
/// @nodoc
class __$VocabularyStateCopyWithImpl<$Res>
    implements _$VocabularyStateCopyWith<$Res> {
  __$VocabularyStateCopyWithImpl(this._self, this._then);

  final _VocabularyState _self;
  final $Res Function(_VocabularyState) _then;

/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? deckEntity = freezed,Object? questions = null,Object? currentQuestionIndex = null,Object? player1Score = null,Object? player2Score = null,Object? correctCountP1 = null,Object? remainingSeconds = null,Object? isRoundLocked = null,Object? selectedWordP1 = freezed,Object? selectedWordP2 = freezed,Object? isGameOver = null,Object? isSavingReward = null,Object? reward = freezed,Object? optionsP1 = null,Object? optionsP2 = null,Object? isBotOpponent = null,Object? roomCode = freezed,Object? opponentName = freezed,Object? opponentAvatar = freezed,Object? isOpponentConnected = null,Object? isOpponentLeft = null,Object? opponentLeftMessage = freezed,Object? playerIndex = null,Object? matchRound = null,Object? startedAt = null,Object? selectedOptionIdP1 = freezed,Object? selectedOptionIdP2 = freezed,Object? isP1Correct = freezed,Object? isP2Correct = freezed,Object? isWaitingForReady = null,Object? topic = null,Object? currentUid = freezed,Object? answersP1 = null,Object? wrongWordsP1 = null,Object? wrongWordsP2 = null,}) {
  return _then(_VocabularyState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deckEntity: freezed == deckEntity ? _self.deckEntity : deckEntity // ignore: cast_nullable_to_non_nullable
as BattleDeck?,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<BattleQuestion>,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,player1Score: null == player1Score ? _self.player1Score : player1Score // ignore: cast_nullable_to_non_nullable
as int,player2Score: null == player2Score ? _self.player2Score : player2Score // ignore: cast_nullable_to_non_nullable
as int,correctCountP1: null == correctCountP1 ? _self.correctCountP1 : correctCountP1 // ignore: cast_nullable_to_non_nullable
as int,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,isRoundLocked: null == isRoundLocked ? _self.isRoundLocked : isRoundLocked // ignore: cast_nullable_to_non_nullable
as bool,selectedWordP1: freezed == selectedWordP1 ? _self.selectedWordP1 : selectedWordP1 // ignore: cast_nullable_to_non_nullable
as String?,selectedWordP2: freezed == selectedWordP2 ? _self.selectedWordP2 : selectedWordP2 // ignore: cast_nullable_to_non_nullable
as String?,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,isSavingReward: null == isSavingReward ? _self.isSavingReward : isSavingReward // ignore: cast_nullable_to_non_nullable
as bool,reward: freezed == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BattleReward?,optionsP1: null == optionsP1 ? _self._optionsP1 : optionsP1 // ignore: cast_nullable_to_non_nullable
as List<String>,optionsP2: null == optionsP2 ? _self._optionsP2 : optionsP2 // ignore: cast_nullable_to_non_nullable
as List<String>,isBotOpponent: null == isBotOpponent ? _self.isBotOpponent : isBotOpponent // ignore: cast_nullable_to_non_nullable
as bool,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,opponentName: freezed == opponentName ? _self.opponentName : opponentName // ignore: cast_nullable_to_non_nullable
as String?,opponentAvatar: freezed == opponentAvatar ? _self.opponentAvatar : opponentAvatar // ignore: cast_nullable_to_non_nullable
as String?,isOpponentConnected: null == isOpponentConnected ? _self.isOpponentConnected : isOpponentConnected // ignore: cast_nullable_to_non_nullable
as bool,isOpponentLeft: null == isOpponentLeft ? _self.isOpponentLeft : isOpponentLeft // ignore: cast_nullable_to_non_nullable
as bool,opponentLeftMessage: freezed == opponentLeftMessage ? _self.opponentLeftMessage : opponentLeftMessage // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,matchRound: null == matchRound ? _self.matchRound : matchRound // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as int,selectedOptionIdP1: freezed == selectedOptionIdP1 ? _self.selectedOptionIdP1 : selectedOptionIdP1 // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionIdP2: freezed == selectedOptionIdP2 ? _self.selectedOptionIdP2 : selectedOptionIdP2 // ignore: cast_nullable_to_non_nullable
as String?,isP1Correct: freezed == isP1Correct ? _self.isP1Correct : isP1Correct // ignore: cast_nullable_to_non_nullable
as bool?,isP2Correct: freezed == isP2Correct ? _self.isP2Correct : isP2Correct // ignore: cast_nullable_to_non_nullable
as bool?,isWaitingForReady: null == isWaitingForReady ? _self.isWaitingForReady : isWaitingForReady // ignore: cast_nullable_to_non_nullable
as bool,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,currentUid: freezed == currentUid ? _self.currentUid : currentUid // ignore: cast_nullable_to_non_nullable
as String?,answersP1: null == answersP1 ? _self._answersP1 : answersP1 // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,wrongWordsP1: null == wrongWordsP1 ? _self._wrongWordsP1 : wrongWordsP1 // ignore: cast_nullable_to_non_nullable
as List<String>,wrongWordsP2: null == wrongWordsP2 ? _self._wrongWordsP2 : wrongWordsP2 // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleDeckCopyWith<$Res>? get deckEntity {
    if (_self.deckEntity == null) {
    return null;
  }

  return $BattleDeckCopyWith<$Res>(_self.deckEntity!, (value) {
    return _then(_self.copyWith(deckEntity: value));
  });
}/// Create a copy of VocabularyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleRewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
    return null;
  }

  return $BattleRewardCopyWith<$Res>(_self.reward!, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

// dart format on

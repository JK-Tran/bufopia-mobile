// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_chain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordChainEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WordChainEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent()';
}


}

/// @nodoc
class $WordChainEventCopyWith<$Res>  {
$WordChainEventCopyWith(WordChainEvent _, $Res Function(WordChainEvent) __);
}


/// Adds pattern-matching-related methods to [WordChainEvent].
extension WordChainEventPatterns on WordChainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartBotGame value)?  startBotGame,TResult Function( _StartOnlineMatchmake value)?  startOnlineMatchmake,TResult Function( _JoinRoom value)?  joinRoom,TResult Function( _InputWordChanged value)?  inputWordChanged,TResult Function( _SubmitWord value)?  submitWord,TResult Function( _Surrender value)?  surrender,TResult Function( _AppAway value)?  appAway,TResult Function( _RequestRematch value)?  requestRematch,TResult Function( _ChainStateUpdated value)?  chainStateUpdated,TResult Function( _WordCheckingChanged value)?  wordCheckingChanged,TResult Function( _WordRejected value)?  wordRejected,TResult Function( _RewardReceived value)?  rewardReceived,TResult Function( _RematchWaiting value)?  rematchWaiting,TResult Function( _ConnectionStateChanged value)?  connectionStateChanged,TResult Function( _WordChainOpponentLeft value)?  opponentLeft,TResult Function( _ErrorOccurred value)?  errorOccurred,TResult Function( _Tick value)?  tick,TResult Function( _BotTurn value)?  botTurn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartBotGame() when startBotGame != null:
return startBotGame(_that);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that);case _SubmitWord() when submitWord != null:
return submitWord(_that);case _Surrender() when surrender != null:
return surrender(_that);case _AppAway() when appAway != null:
return appAway(_that);case _RequestRematch() when requestRematch != null:
return requestRematch(_that);case _ChainStateUpdated() when chainStateUpdated != null:
return chainStateUpdated(_that);case _WordCheckingChanged() when wordCheckingChanged != null:
return wordCheckingChanged(_that);case _WordRejected() when wordRejected != null:
return wordRejected(_that);case _RewardReceived() when rewardReceived != null:
return rewardReceived(_that);case _RematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that);case _ConnectionStateChanged() when connectionStateChanged != null:
return connectionStateChanged(_that);case _WordChainOpponentLeft() when opponentLeft != null:
return opponentLeft(_that);case _ErrorOccurred() when errorOccurred != null:
return errorOccurred(_that);case _Tick() when tick != null:
return tick(_that);case _BotTurn() when botTurn != null:
return botTurn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartBotGame value)  startBotGame,required TResult Function( _StartOnlineMatchmake value)  startOnlineMatchmake,required TResult Function( _JoinRoom value)  joinRoom,required TResult Function( _InputWordChanged value)  inputWordChanged,required TResult Function( _SubmitWord value)  submitWord,required TResult Function( _Surrender value)  surrender,required TResult Function( _AppAway value)  appAway,required TResult Function( _RequestRematch value)  requestRematch,required TResult Function( _ChainStateUpdated value)  chainStateUpdated,required TResult Function( _WordCheckingChanged value)  wordCheckingChanged,required TResult Function( _WordRejected value)  wordRejected,required TResult Function( _RewardReceived value)  rewardReceived,required TResult Function( _RematchWaiting value)  rematchWaiting,required TResult Function( _ConnectionStateChanged value)  connectionStateChanged,required TResult Function( _WordChainOpponentLeft value)  opponentLeft,required TResult Function( _ErrorOccurred value)  errorOccurred,required TResult Function( _Tick value)  tick,required TResult Function( _BotTurn value)  botTurn,}){
final _that = this;
switch (_that) {
case _StartBotGame():
return startBotGame(_that);case _StartOnlineMatchmake():
return startOnlineMatchmake(_that);case _JoinRoom():
return joinRoom(_that);case _InputWordChanged():
return inputWordChanged(_that);case _SubmitWord():
return submitWord(_that);case _Surrender():
return surrender(_that);case _AppAway():
return appAway(_that);case _RequestRematch():
return requestRematch(_that);case _ChainStateUpdated():
return chainStateUpdated(_that);case _WordCheckingChanged():
return wordCheckingChanged(_that);case _WordRejected():
return wordRejected(_that);case _RewardReceived():
return rewardReceived(_that);case _RematchWaiting():
return rematchWaiting(_that);case _ConnectionStateChanged():
return connectionStateChanged(_that);case _WordChainOpponentLeft():
return opponentLeft(_that);case _ErrorOccurred():
return errorOccurred(_that);case _Tick():
return tick(_that);case _BotTurn():
return botTurn(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartBotGame value)?  startBotGame,TResult? Function( _StartOnlineMatchmake value)?  startOnlineMatchmake,TResult? Function( _JoinRoom value)?  joinRoom,TResult? Function( _InputWordChanged value)?  inputWordChanged,TResult? Function( _SubmitWord value)?  submitWord,TResult? Function( _Surrender value)?  surrender,TResult? Function( _AppAway value)?  appAway,TResult? Function( _RequestRematch value)?  requestRematch,TResult? Function( _ChainStateUpdated value)?  chainStateUpdated,TResult? Function( _WordCheckingChanged value)?  wordCheckingChanged,TResult? Function( _WordRejected value)?  wordRejected,TResult? Function( _RewardReceived value)?  rewardReceived,TResult? Function( _RematchWaiting value)?  rematchWaiting,TResult? Function( _ConnectionStateChanged value)?  connectionStateChanged,TResult? Function( _WordChainOpponentLeft value)?  opponentLeft,TResult? Function( _ErrorOccurred value)?  errorOccurred,TResult? Function( _Tick value)?  tick,TResult? Function( _BotTurn value)?  botTurn,}){
final _that = this;
switch (_that) {
case _StartBotGame() when startBotGame != null:
return startBotGame(_that);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that);case _SubmitWord() when submitWord != null:
return submitWord(_that);case _Surrender() when surrender != null:
return surrender(_that);case _AppAway() when appAway != null:
return appAway(_that);case _RequestRematch() when requestRematch != null:
return requestRematch(_that);case _ChainStateUpdated() when chainStateUpdated != null:
return chainStateUpdated(_that);case _WordCheckingChanged() when wordCheckingChanged != null:
return wordCheckingChanged(_that);case _WordRejected() when wordRejected != null:
return wordRejected(_that);case _RewardReceived() when rewardReceived != null:
return rewardReceived(_that);case _RematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that);case _ConnectionStateChanged() when connectionStateChanged != null:
return connectionStateChanged(_that);case _WordChainOpponentLeft() when opponentLeft != null:
return opponentLeft(_that);case _ErrorOccurred() when errorOccurred != null:
return errorOccurred(_that);case _Tick() when tick != null:
return tick(_that);case _BotTurn() when botTurn != null:
return botTurn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String uid,  bool relaxed,  String language)?  startBotGame,TResult Function( String uid,  String name,  String? avatar,  bool relaxed,  String language)?  startOnlineMatchmake,TResult Function( String roomCode,  String uid,  String name,  String? avatar,  bool relaxed,  String language)?  joinRoom,TResult Function( String word)?  inputWordChanged,TResult Function()?  submitWord,TResult Function()?  surrender,TResult Function()?  appAway,TResult Function()?  requestRematch,TResult Function( ChainStateUpdate update)?  chainStateUpdated,TResult Function( bool isChecking)?  wordCheckingChanged,TResult Function( int penalty)?  wordRejected,TResult Function( Reward reward,  String? sessionId)?  rewardReceived,TResult Function( List<bool> readyPlayers)?  rematchWaiting,TResult Function( SocketConnectionState connectionState)?  connectionStateChanged,TResult Function( String? message)?  opponentLeft,TResult Function( String message)?  errorOccurred,TResult Function()?  tick,TResult Function()?  botTurn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartBotGame() when startBotGame != null:
return startBotGame(_that.uid,_that.relaxed,_that.language);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that.word);case _SubmitWord() when submitWord != null:
return submitWord();case _Surrender() when surrender != null:
return surrender();case _AppAway() when appAway != null:
return appAway();case _RequestRematch() when requestRematch != null:
return requestRematch();case _ChainStateUpdated() when chainStateUpdated != null:
return chainStateUpdated(_that.update);case _WordCheckingChanged() when wordCheckingChanged != null:
return wordCheckingChanged(_that.isChecking);case _WordRejected() when wordRejected != null:
return wordRejected(_that.penalty);case _RewardReceived() when rewardReceived != null:
return rewardReceived(_that.reward,_that.sessionId);case _RematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that.readyPlayers);case _ConnectionStateChanged() when connectionStateChanged != null:
return connectionStateChanged(_that.connectionState);case _WordChainOpponentLeft() when opponentLeft != null:
return opponentLeft(_that.message);case _ErrorOccurred() when errorOccurred != null:
return errorOccurred(_that.message);case _Tick() when tick != null:
return tick();case _BotTurn() when botTurn != null:
return botTurn();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String uid,  bool relaxed,  String language)  startBotGame,required TResult Function( String uid,  String name,  String? avatar,  bool relaxed,  String language)  startOnlineMatchmake,required TResult Function( String roomCode,  String uid,  String name,  String? avatar,  bool relaxed,  String language)  joinRoom,required TResult Function( String word)  inputWordChanged,required TResult Function()  submitWord,required TResult Function()  surrender,required TResult Function()  appAway,required TResult Function()  requestRematch,required TResult Function( ChainStateUpdate update)  chainStateUpdated,required TResult Function( bool isChecking)  wordCheckingChanged,required TResult Function( int penalty)  wordRejected,required TResult Function( Reward reward,  String? sessionId)  rewardReceived,required TResult Function( List<bool> readyPlayers)  rematchWaiting,required TResult Function( SocketConnectionState connectionState)  connectionStateChanged,required TResult Function( String? message)  opponentLeft,required TResult Function( String message)  errorOccurred,required TResult Function()  tick,required TResult Function()  botTurn,}) {final _that = this;
switch (_that) {
case _StartBotGame():
return startBotGame(_that.uid,_that.relaxed,_that.language);case _StartOnlineMatchmake():
return startOnlineMatchmake(_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _JoinRoom():
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _InputWordChanged():
return inputWordChanged(_that.word);case _SubmitWord():
return submitWord();case _Surrender():
return surrender();case _AppAway():
return appAway();case _RequestRematch():
return requestRematch();case _ChainStateUpdated():
return chainStateUpdated(_that.update);case _WordCheckingChanged():
return wordCheckingChanged(_that.isChecking);case _WordRejected():
return wordRejected(_that.penalty);case _RewardReceived():
return rewardReceived(_that.reward,_that.sessionId);case _RematchWaiting():
return rematchWaiting(_that.readyPlayers);case _ConnectionStateChanged():
return connectionStateChanged(_that.connectionState);case _WordChainOpponentLeft():
return opponentLeft(_that.message);case _ErrorOccurred():
return errorOccurred(_that.message);case _Tick():
return tick();case _BotTurn():
return botTurn();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String uid,  bool relaxed,  String language)?  startBotGame,TResult? Function( String uid,  String name,  String? avatar,  bool relaxed,  String language)?  startOnlineMatchmake,TResult? Function( String roomCode,  String uid,  String name,  String? avatar,  bool relaxed,  String language)?  joinRoom,TResult? Function( String word)?  inputWordChanged,TResult? Function()?  submitWord,TResult? Function()?  surrender,TResult? Function()?  appAway,TResult? Function()?  requestRematch,TResult? Function( ChainStateUpdate update)?  chainStateUpdated,TResult? Function( bool isChecking)?  wordCheckingChanged,TResult? Function( int penalty)?  wordRejected,TResult? Function( Reward reward,  String? sessionId)?  rewardReceived,TResult? Function( List<bool> readyPlayers)?  rematchWaiting,TResult? Function( SocketConnectionState connectionState)?  connectionStateChanged,TResult? Function( String? message)?  opponentLeft,TResult? Function( String message)?  errorOccurred,TResult? Function()?  tick,TResult? Function()?  botTurn,}) {final _that = this;
switch (_that) {
case _StartBotGame() when startBotGame != null:
return startBotGame(_that.uid,_that.relaxed,_that.language);case _StartOnlineMatchmake() when startOnlineMatchmake != null:
return startOnlineMatchmake(_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.uid,_that.name,_that.avatar,_that.relaxed,_that.language);case _InputWordChanged() when inputWordChanged != null:
return inputWordChanged(_that.word);case _SubmitWord() when submitWord != null:
return submitWord();case _Surrender() when surrender != null:
return surrender();case _AppAway() when appAway != null:
return appAway();case _RequestRematch() when requestRematch != null:
return requestRematch();case _ChainStateUpdated() when chainStateUpdated != null:
return chainStateUpdated(_that.update);case _WordCheckingChanged() when wordCheckingChanged != null:
return wordCheckingChanged(_that.isChecking);case _WordRejected() when wordRejected != null:
return wordRejected(_that.penalty);case _RewardReceived() when rewardReceived != null:
return rewardReceived(_that.reward,_that.sessionId);case _RematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that.readyPlayers);case _ConnectionStateChanged() when connectionStateChanged != null:
return connectionStateChanged(_that.connectionState);case _WordChainOpponentLeft() when opponentLeft != null:
return opponentLeft(_that.message);case _ErrorOccurred() when errorOccurred != null:
return errorOccurred(_that.message);case _Tick() when tick != null:
return tick();case _BotTurn() when botTurn != null:
return botTurn();case _:
  return null;

}
}

}

/// @nodoc


class _StartBotGame implements WordChainEvent {
  const _StartBotGame({required this.uid, this.relaxed = false, this.language = 'en'});
  

 final  String uid;
@JsonKey() final  bool relaxed;
@JsonKey() final  String language;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartBotGameCopyWith<_StartBotGame> get copyWith => __$StartBotGameCopyWithImpl<_StartBotGame>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartBotGame&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,relaxed,language);
}

@override
String toString() {
    return 'WordChainEvent.startBotGame(uid: $uid, relaxed: $relaxed, language: $language)';
}


}

/// @nodoc
abstract mixin class _$StartBotGameCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$StartBotGameCopyWith(_StartBotGame value, $Res Function(_StartBotGame) _then) = __$StartBotGameCopyWithImpl;
@useResult
$Res call({
 String uid, bool relaxed, String language
});




}
/// @nodoc
class __$StartBotGameCopyWithImpl<$Res>
    implements _$StartBotGameCopyWith<$Res> {
  __$StartBotGameCopyWithImpl(this._self, this._then);

  final _StartBotGame _self;
  final $Res Function(_StartBotGame) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? relaxed = null,Object? language = null,}) {
  return _then(_StartBotGame(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StartOnlineMatchmake implements WordChainEvent {
  const _StartOnlineMatchmake({required this.uid, required this.name, this.avatar, this.relaxed = false, this.language = 'en'});
  

 final  String uid;
 final  String name;
 final  String? avatar;
@JsonKey() final  bool relaxed;
@JsonKey() final  String language;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartOnlineMatchmakeCopyWith<_StartOnlineMatchmake> get copyWith => __$StartOnlineMatchmakeCopyWithImpl<_StartOnlineMatchmake>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartOnlineMatchmake&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar,relaxed,language);
}

@override
String toString() {
    return 'WordChainEvent.startOnlineMatchmake(uid: $uid, name: $name, avatar: $avatar, relaxed: $relaxed, language: $language)';
}


}

/// @nodoc
abstract mixin class _$StartOnlineMatchmakeCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$StartOnlineMatchmakeCopyWith(_StartOnlineMatchmake value, $Res Function(_StartOnlineMatchmake) _then) = __$StartOnlineMatchmakeCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? avatar, bool relaxed, String language
});




}
/// @nodoc
class __$StartOnlineMatchmakeCopyWithImpl<$Res>
    implements _$StartOnlineMatchmakeCopyWith<$Res> {
  __$StartOnlineMatchmakeCopyWithImpl(this._self, this._then);

  final _StartOnlineMatchmake _self;
  final $Res Function(_StartOnlineMatchmake) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,Object? relaxed = null,Object? language = null,}) {
  return _then(_StartOnlineMatchmake(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _JoinRoom implements WordChainEvent {
  const _JoinRoom({required this.roomCode, required this.uid, required this.name, this.avatar, this.relaxed = false, this.language = 'en'});
  

 final  String roomCode;
 final  String uid;
 final  String name;
 final  String? avatar;
@JsonKey() final  bool relaxed;
@JsonKey() final  String language;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinRoomCopyWith<_JoinRoom> get copyWith => __$JoinRoomCopyWithImpl<_JoinRoom>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinRoom&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,uid,name,avatar,relaxed,language);
}

@override
String toString() {
    return 'WordChainEvent.joinRoom(roomCode: $roomCode, uid: $uid, name: $name, avatar: $avatar, relaxed: $relaxed, language: $language)';
}


}

/// @nodoc
abstract mixin class _$JoinRoomCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$JoinRoomCopyWith(_JoinRoom value, $Res Function(_JoinRoom) _then) = __$JoinRoomCopyWithImpl;
@useResult
$Res call({
 String roomCode, String uid, String name, String? avatar, bool relaxed, String language
});




}
/// @nodoc
class __$JoinRoomCopyWithImpl<$Res>
    implements _$JoinRoomCopyWith<$Res> {
  __$JoinRoomCopyWithImpl(this._self, this._then);

  final _JoinRoom _self;
  final $Res Function(_JoinRoom) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? uid = null,Object? name = null,Object? avatar = freezed,Object? relaxed = null,Object? language = null,}) {
  return _then(_JoinRoom(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _InputWordChanged implements WordChainEvent {
  const _InputWordChanged(this.word);
  

 final  String word;

/// Create a copy of WordChainEvent
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
    return 'WordChainEvent.inputWordChanged(word: $word)';
}


}

/// @nodoc
abstract mixin class _$InputWordChangedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
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

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(_InputWordChanged(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitWord implements WordChainEvent {
  const _SubmitWord();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitWord);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.submitWord()';
}


}




/// @nodoc


class _Surrender implements WordChainEvent {
  const _Surrender();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Surrender);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.surrender()';
}


}




/// @nodoc


class _AppAway implements WordChainEvent {
  const _AppAway();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppAway);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.appAway()';
}


}




/// @nodoc


class _RequestRematch implements WordChainEvent {
  const _RequestRematch();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRematch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.requestRematch()';
}


}




/// @nodoc


class _ChainStateUpdated implements WordChainEvent {
  const _ChainStateUpdated(this.update);
  

 final  ChainStateUpdate update;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainStateUpdatedCopyWith<_ChainStateUpdated> get copyWith => __$ChainStateUpdatedCopyWithImpl<_ChainStateUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainStateUpdated&&(identical(other.update, update) || other.update == update));
}


@override
int get hashCode {
    return Object.hash(runtimeType,update);
}

@override
String toString() {
    return 'WordChainEvent.chainStateUpdated(update: $update)';
}


}

/// @nodoc
abstract mixin class _$ChainStateUpdatedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$ChainStateUpdatedCopyWith(_ChainStateUpdated value, $Res Function(_ChainStateUpdated) _then) = __$ChainStateUpdatedCopyWithImpl;
@useResult
$Res call({
 ChainStateUpdate update
});


$ChainStateUpdateCopyWith<$Res> get update;

}
/// @nodoc
class __$ChainStateUpdatedCopyWithImpl<$Res>
    implements _$ChainStateUpdatedCopyWith<$Res> {
  __$ChainStateUpdatedCopyWithImpl(this._self, this._then);

  final _ChainStateUpdated _self;
  final $Res Function(_ChainStateUpdated) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? update = null,}) {
  return _then(_ChainStateUpdated(
null == update ? _self.update : update // ignore: cast_nullable_to_non_nullable
as ChainStateUpdate,
  ));
}

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStateUpdateCopyWith<$Res> get update {
  
  return $ChainStateUpdateCopyWith<$Res>(_self.update, (value) {
    return _then(_self.copyWith(update: value));
  });
}
}

/// @nodoc


class _WordCheckingChanged implements WordChainEvent {
  const _WordCheckingChanged({required this.isChecking});
  

 final  bool isChecking;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordCheckingChangedCopyWith<_WordCheckingChanged> get copyWith => __$WordCheckingChangedCopyWithImpl<_WordCheckingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordCheckingChanged&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isChecking);
}

@override
String toString() {
    return 'WordChainEvent.wordCheckingChanged(isChecking: $isChecking)';
}


}

/// @nodoc
abstract mixin class _$WordCheckingChangedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$WordCheckingChangedCopyWith(_WordCheckingChanged value, $Res Function(_WordCheckingChanged) _then) = __$WordCheckingChangedCopyWithImpl;
@useResult
$Res call({
 bool isChecking
});




}
/// @nodoc
class __$WordCheckingChangedCopyWithImpl<$Res>
    implements _$WordCheckingChangedCopyWith<$Res> {
  __$WordCheckingChangedCopyWithImpl(this._self, this._then);

  final _WordCheckingChanged _self;
  final $Res Function(_WordCheckingChanged) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isChecking = null,}) {
  return _then(_WordCheckingChanged(
isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _WordRejected implements WordChainEvent {
  const _WordRejected({required this.penalty});
  

 final  int penalty;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordRejectedCopyWith<_WordRejected> get copyWith => __$WordRejectedCopyWithImpl<_WordRejected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordRejected&&(identical(other.penalty, penalty) || other.penalty == penalty));
}


@override
int get hashCode {
    return Object.hash(runtimeType,penalty);
}

@override
String toString() {
    return 'WordChainEvent.wordRejected(penalty: $penalty)';
}


}

/// @nodoc
abstract mixin class _$WordRejectedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$WordRejectedCopyWith(_WordRejected value, $Res Function(_WordRejected) _then) = __$WordRejectedCopyWithImpl;
@useResult
$Res call({
 int penalty
});




}
/// @nodoc
class __$WordRejectedCopyWithImpl<$Res>
    implements _$WordRejectedCopyWith<$Res> {
  __$WordRejectedCopyWithImpl(this._self, this._then);

  final _WordRejected _self;
  final $Res Function(_WordRejected) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? penalty = null,}) {
  return _then(_WordRejected(
penalty: null == penalty ? _self.penalty : penalty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RewardReceived implements WordChainEvent {
  const _RewardReceived({required this.reward, this.sessionId});
  

 final  Reward reward;
 final  String? sessionId;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardReceivedCopyWith<_RewardReceived> get copyWith => __$RewardReceivedCopyWithImpl<_RewardReceived>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardReceived&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reward,sessionId);
}

@override
String toString() {
    return 'WordChainEvent.rewardReceived(reward: $reward, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$RewardReceivedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$RewardReceivedCopyWith(_RewardReceived value, $Res Function(_RewardReceived) _then) = __$RewardReceivedCopyWithImpl;
@useResult
$Res call({
 Reward reward, String? sessionId
});


$RewardCopyWith<$Res> get reward;

}
/// @nodoc
class __$RewardReceivedCopyWithImpl<$Res>
    implements _$RewardReceivedCopyWith<$Res> {
  __$RewardReceivedCopyWithImpl(this._self, this._then);

  final _RewardReceived _self;
  final $Res Function(_RewardReceived) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reward = null,Object? sessionId = freezed,}) {
  return _then(_RewardReceived(
reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res> get reward {
  
  return $RewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

/// @nodoc


class _RematchWaiting implements WordChainEvent {
  const _RematchWaiting({required  List<bool> readyPlayers}): _readyPlayers = readyPlayers;
  

 final  List<bool> _readyPlayers;
 List<bool> get readyPlayers {
  if (_readyPlayers is EqualUnmodifiableListView) return _readyPlayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_readyPlayers);
}


/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RematchWaitingCopyWith<_RematchWaiting> get copyWith => __$RematchWaitingCopyWithImpl<_RematchWaiting>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RematchWaiting&&const DeepCollectionEquality().equals(other.readyPlayers, _readyPlayers));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_readyPlayers));
}

@override
String toString() {
    return 'WordChainEvent.rematchWaiting(readyPlayers: $readyPlayers)';
}


}

/// @nodoc
abstract mixin class _$RematchWaitingCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$RematchWaitingCopyWith(_RematchWaiting value, $Res Function(_RematchWaiting) _then) = __$RematchWaitingCopyWithImpl;
@useResult
$Res call({
 List<bool> readyPlayers
});




}
/// @nodoc
class __$RematchWaitingCopyWithImpl<$Res>
    implements _$RematchWaitingCopyWith<$Res> {
  __$RematchWaitingCopyWithImpl(this._self, this._then);

  final _RematchWaiting _self;
  final $Res Function(_RematchWaiting) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? readyPlayers = null,}) {
  return _then(_RematchWaiting(
readyPlayers: null == readyPlayers ? _self._readyPlayers : readyPlayers // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _ConnectionStateChanged implements WordChainEvent {
  const _ConnectionStateChanged(this.connectionState);
  

 final  SocketConnectionState connectionState;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionStateChangedCopyWith<_ConnectionStateChanged> get copyWith => __$ConnectionStateChangedCopyWithImpl<_ConnectionStateChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionStateChanged&&(identical(other.connectionState, connectionState) || other.connectionState == connectionState));
}


@override
int get hashCode {
    return Object.hash(runtimeType,connectionState);
}

@override
String toString() {
    return 'WordChainEvent.connectionStateChanged(connectionState: $connectionState)';
}


}

/// @nodoc
abstract mixin class _$ConnectionStateChangedCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$ConnectionStateChangedCopyWith(_ConnectionStateChanged value, $Res Function(_ConnectionStateChanged) _then) = __$ConnectionStateChangedCopyWithImpl;
@useResult
$Res call({
 SocketConnectionState connectionState
});




}
/// @nodoc
class __$ConnectionStateChangedCopyWithImpl<$Res>
    implements _$ConnectionStateChangedCopyWith<$Res> {
  __$ConnectionStateChangedCopyWithImpl(this._self, this._then);

  final _ConnectionStateChanged _self;
  final $Res Function(_ConnectionStateChanged) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? connectionState = null,}) {
  return _then(_ConnectionStateChanged(
null == connectionState ? _self.connectionState : connectionState // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,
  ));
}


}

/// @nodoc


class _WordChainOpponentLeft implements WordChainEvent {
  const _WordChainOpponentLeft([this.message]);
  

 final  String? message;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordChainOpponentLeftCopyWith<_WordChainOpponentLeft> get copyWith => __$WordChainOpponentLeftCopyWithImpl<_WordChainOpponentLeft>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordChainOpponentLeft&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'WordChainEvent.opponentLeft(message: $message)';
}


}

/// @nodoc
abstract mixin class _$WordChainOpponentLeftCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$WordChainOpponentLeftCopyWith(_WordChainOpponentLeft value, $Res Function(_WordChainOpponentLeft) _then) = __$WordChainOpponentLeftCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$WordChainOpponentLeftCopyWithImpl<$Res>
    implements _$WordChainOpponentLeftCopyWith<$Res> {
  __$WordChainOpponentLeftCopyWithImpl(this._self, this._then);

  final _WordChainOpponentLeft _self;
  final $Res Function(_WordChainOpponentLeft) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_WordChainOpponentLeft(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ErrorOccurred implements WordChainEvent {
  const _ErrorOccurred(this.message);
  

 final  String message;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorOccurredCopyWith<_ErrorOccurred> get copyWith => __$ErrorOccurredCopyWithImpl<_ErrorOccurred>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorOccurred&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'WordChainEvent.errorOccurred(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorOccurredCopyWith<$Res> implements $WordChainEventCopyWith<$Res> {
  factory _$ErrorOccurredCopyWith(_ErrorOccurred value, $Res Function(_ErrorOccurred) _then) = __$ErrorOccurredCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorOccurredCopyWithImpl<$Res>
    implements _$ErrorOccurredCopyWith<$Res> {
  __$ErrorOccurredCopyWithImpl(this._self, this._then);

  final _ErrorOccurred _self;
  final $Res Function(_ErrorOccurred) _then;

/// Create a copy of WordChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorOccurred(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Tick implements WordChainEvent {
  const _Tick();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.tick()';
}


}




/// @nodoc


class _BotTurn implements WordChainEvent {
  const _BotTurn();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BotTurn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WordChainEvent.botTurn()';
}


}




/// @nodoc
mixin _$WordChainState {

 bool get isLoading; bool get isCheckingWord; String? get errorMessage; String? get rejectedReason; WordChainGameMode get mode; bool get relaxed; String? get roomCode; int get myPlayerIndex; GameState get gameState; String get inputWord; int get remainingSeconds; String get rivalName; String get rivalAvatar; bool get isOpponentLeft; String? get opponentLeftMessage; Reward? get reward; SocketConnectionState get connectionState; String get sessionId; bool get isRematchPending; bool get isRivalRematchReady;
/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordChainStateCopyWith<WordChainState> get copyWith => _$WordChainStateCopyWithImpl<WordChainState>(this as WordChainState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordChainState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordChainState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isCheckingWord, _this.isCheckingWord) || other.isCheckingWord == _this.isCheckingWord)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.rejectedReason, _this.rejectedReason) || other.rejectedReason == _this.rejectedReason)&&(identical(other.mode, _this.mode) || other.mode == _this.mode)&&(identical(other.relaxed, _this.relaxed) || other.relaxed == _this.relaxed)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.myPlayerIndex, _this.myPlayerIndex) || other.myPlayerIndex == _this.myPlayerIndex)&&(identical(other.gameState, _this.gameState) || other.gameState == _this.gameState)&&(identical(other.inputWord, _this.inputWord) || other.inputWord == _this.inputWord)&&(identical(other.remainingSeconds, _this.remainingSeconds) || other.remainingSeconds == _this.remainingSeconds)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.isOpponentLeft, _this.isOpponentLeft) || other.isOpponentLeft == _this.isOpponentLeft)&&(identical(other.opponentLeftMessage, _this.opponentLeftMessage) || other.opponentLeftMessage == _this.opponentLeftMessage)&&(identical(other.reward, _this.reward) || other.reward == _this.reward)&&(identical(other.connectionState, _this.connectionState) || other.connectionState == _this.connectionState)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.isRematchPending, _this.isRematchPending) || other.isRematchPending == _this.isRematchPending)&&(identical(other.isRivalRematchReady, _this.isRivalRematchReady) || other.isRivalRematchReady == _this.isRivalRematchReady));
}


@override
int get hashCode {
  final _this = this as WordChainState;
  return Object.hashAll([runtimeType,_this.isLoading,_this.isCheckingWord,_this.errorMessage,_this.rejectedReason,_this.mode,_this.relaxed,_this.roomCode,_this.myPlayerIndex,_this.gameState,_this.inputWord,_this.remainingSeconds,_this.rivalName,_this.rivalAvatar,_this.isOpponentLeft,_this.opponentLeftMessage,_this.reward,_this.connectionState,_this.sessionId,_this.isRematchPending,_this.isRivalRematchReady]);
}

@override
String toString() {
  final _this = this as WordChainState;
  return 'WordChainState(isLoading: ${_this.isLoading}, isCheckingWord: ${_this.isCheckingWord}, errorMessage: ${_this.errorMessage}, rejectedReason: ${_this.rejectedReason}, mode: ${_this.mode}, relaxed: ${_this.relaxed}, roomCode: ${_this.roomCode}, myPlayerIndex: ${_this.myPlayerIndex}, gameState: ${_this.gameState}, inputWord: ${_this.inputWord}, remainingSeconds: ${_this.remainingSeconds}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, isOpponentLeft: ${_this.isOpponentLeft}, opponentLeftMessage: ${_this.opponentLeftMessage}, reward: ${_this.reward}, connectionState: ${_this.connectionState}, sessionId: ${_this.sessionId}, isRematchPending: ${_this.isRematchPending}, isRivalRematchReady: ${_this.isRivalRematchReady})';
}


}

/// @nodoc
abstract mixin class $WordChainStateCopyWith<$Res>  {
  factory $WordChainStateCopyWith(WordChainState value, $Res Function(WordChainState) _then) = _$WordChainStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCheckingWord, String? errorMessage, String? rejectedReason, WordChainGameMode mode, bool relaxed, String? roomCode, int myPlayerIndex, GameState gameState, String inputWord, int remainingSeconds, String rivalName, String rivalAvatar, bool isOpponentLeft, String? opponentLeftMessage, Reward? reward, SocketConnectionState connectionState, String sessionId, bool isRematchPending, bool isRivalRematchReady
});


$GameStateCopyWith<$Res> get gameState;$RewardCopyWith<$Res>? get reward;

}
/// @nodoc
class _$WordChainStateCopyWithImpl<$Res>
    implements $WordChainStateCopyWith<$Res> {
  _$WordChainStateCopyWithImpl(this._self, this._then);

  final WordChainState _self;
  final $Res Function(WordChainState) _then;

/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCheckingWord = null,Object? errorMessage = freezed,Object? rejectedReason = freezed,Object? mode = null,Object? relaxed = null,Object? roomCode = freezed,Object? myPlayerIndex = null,Object? gameState = null,Object? inputWord = null,Object? remainingSeconds = null,Object? rivalName = null,Object? rivalAvatar = null,Object? isOpponentLeft = null,Object? opponentLeftMessage = freezed,Object? reward = freezed,Object? connectionState = null,Object? sessionId = null,Object? isRematchPending = null,Object? isRivalRematchReady = null,}) {
  return _then(WordChainState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCheckingWord: null == isCheckingWord ? _self.isCheckingWord : isCheckingWord // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as WordChainGameMode,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as GameState,inputWord: null == inputWord ? _self.inputWord : inputWord // ignore: cast_nullable_to_non_nullable
as String,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,isOpponentLeft: null == isOpponentLeft ? _self.isOpponentLeft : isOpponentLeft // ignore: cast_nullable_to_non_nullable
as bool,opponentLeftMessage: freezed == opponentLeftMessage ? _self.opponentLeftMessage : opponentLeftMessage // ignore: cast_nullable_to_non_nullable
as String?,reward: freezed == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward?,connectionState: null == connectionState ? _self.connectionState : connectionState // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,isRematchPending: null == isRematchPending ? _self.isRematchPending : isRematchPending // ignore: cast_nullable_to_non_nullable
as bool,isRivalRematchReady: null == isRivalRematchReady ? _self.isRivalRematchReady : isRivalRematchReady // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get gameState {
  
  return $GameStateCopyWith<$Res>(_self.gameState, (value) {
    return _then(_self.copyWith(gameState: value));
  });
}/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.reward!, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}


/// Adds pattern-matching-related methods to [WordChainState].
extension WordChainStatePatterns on WordChainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordChainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordChainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordChainState value)  $default,){
final _that = this;
switch (_that) {
case _WordChainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordChainState value)?  $default,){
final _that = this;
switch (_that) {
case _WordChainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCheckingWord,  String? errorMessage,  String? rejectedReason,  WordChainGameMode mode,  bool relaxed,  String? roomCode,  int myPlayerIndex,  GameState gameState,  String inputWord,  int remainingSeconds,  String rivalName,  String rivalAvatar,  bool isOpponentLeft,  String? opponentLeftMessage,  Reward? reward,  SocketConnectionState connectionState,  String sessionId,  bool isRematchPending,  bool isRivalRematchReady)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordChainState() when $default != null:
return $default(_that.isLoading,_that.isCheckingWord,_that.errorMessage,_that.rejectedReason,_that.mode,_that.relaxed,_that.roomCode,_that.myPlayerIndex,_that.gameState,_that.inputWord,_that.remainingSeconds,_that.rivalName,_that.rivalAvatar,_that.isOpponentLeft,_that.opponentLeftMessage,_that.reward,_that.connectionState,_that.sessionId,_that.isRematchPending,_that.isRivalRematchReady);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCheckingWord,  String? errorMessage,  String? rejectedReason,  WordChainGameMode mode,  bool relaxed,  String? roomCode,  int myPlayerIndex,  GameState gameState,  String inputWord,  int remainingSeconds,  String rivalName,  String rivalAvatar,  bool isOpponentLeft,  String? opponentLeftMessage,  Reward? reward,  SocketConnectionState connectionState,  String sessionId,  bool isRematchPending,  bool isRivalRematchReady)  $default,) {final _that = this;
switch (_that) {
case _WordChainState():
return $default(_that.isLoading,_that.isCheckingWord,_that.errorMessage,_that.rejectedReason,_that.mode,_that.relaxed,_that.roomCode,_that.myPlayerIndex,_that.gameState,_that.inputWord,_that.remainingSeconds,_that.rivalName,_that.rivalAvatar,_that.isOpponentLeft,_that.opponentLeftMessage,_that.reward,_that.connectionState,_that.sessionId,_that.isRematchPending,_that.isRivalRematchReady);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCheckingWord,  String? errorMessage,  String? rejectedReason,  WordChainGameMode mode,  bool relaxed,  String? roomCode,  int myPlayerIndex,  GameState gameState,  String inputWord,  int remainingSeconds,  String rivalName,  String rivalAvatar,  bool isOpponentLeft,  String? opponentLeftMessage,  Reward? reward,  SocketConnectionState connectionState,  String sessionId,  bool isRematchPending,  bool isRivalRematchReady)?  $default,) {final _that = this;
switch (_that) {
case _WordChainState() when $default != null:
return $default(_that.isLoading,_that.isCheckingWord,_that.errorMessage,_that.rejectedReason,_that.mode,_that.relaxed,_that.roomCode,_that.myPlayerIndex,_that.gameState,_that.inputWord,_that.remainingSeconds,_that.rivalName,_that.rivalAvatar,_that.isOpponentLeft,_that.opponentLeftMessage,_that.reward,_that.connectionState,_that.sessionId,_that.isRematchPending,_that.isRivalRematchReady);case _:
  return null;

}
}

}

/// @nodoc


class _WordChainState extends WordChainState {
  const _WordChainState({this.isLoading = false, this.isCheckingWord = false, this.errorMessage, this.rejectedReason, this.mode = WordChainGameMode.bot, this.relaxed = false, this.roomCode, this.myPlayerIndex = 0, this.gameState = const GameState(), this.inputWord = '', this.remainingSeconds = 20, this.rivalName = 'Máy (Bot)', this.rivalAvatar = '', this.isOpponentLeft = false, this.opponentLeftMessage, this.reward, this.connectionState = SocketConnectionState.disconnected, this.sessionId = '', this.isRematchPending = false, this.isRivalRematchReady = false}): super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCheckingWord;
@override final  String? errorMessage;
@override final  String? rejectedReason;
@override@JsonKey() final  WordChainGameMode mode;
@override@JsonKey() final  bool relaxed;
@override final  String? roomCode;
@override@JsonKey() final  int myPlayerIndex;
@override@JsonKey() final  GameState gameState;
@override@JsonKey() final  String inputWord;
@override@JsonKey() final  int remainingSeconds;
@override@JsonKey() final  String rivalName;
@override@JsonKey() final  String rivalAvatar;
@override@JsonKey() final  bool isOpponentLeft;
@override final  String? opponentLeftMessage;
@override final  Reward? reward;
@override@JsonKey() final  SocketConnectionState connectionState;
@override@JsonKey() final  String sessionId;
@override@JsonKey() final  bool isRematchPending;
@override@JsonKey() final  bool isRivalRematchReady;

/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordChainStateCopyWith<_WordChainState> get copyWith => __$WordChainStateCopyWithImpl<_WordChainState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordChainState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCheckingWord, isCheckingWord) || other.isCheckingWord == isCheckingWord)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex)&&(identical(other.gameState, gameState) || other.gameState == gameState)&&(identical(other.inputWord, inputWord) || other.inputWord == inputWord)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.isOpponentLeft, isOpponentLeft) || other.isOpponentLeft == isOpponentLeft)&&(identical(other.opponentLeftMessage, opponentLeftMessage) || other.opponentLeftMessage == opponentLeftMessage)&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.connectionState, connectionState) || other.connectionState == connectionState)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.isRematchPending, isRematchPending) || other.isRematchPending == isRematchPending)&&(identical(other.isRivalRematchReady, isRivalRematchReady) || other.isRivalRematchReady == isRivalRematchReady));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,isLoading,isCheckingWord,errorMessage,rejectedReason,mode,relaxed,roomCode,myPlayerIndex,gameState,inputWord,remainingSeconds,rivalName,rivalAvatar,isOpponentLeft,opponentLeftMessage,reward,connectionState,sessionId,isRematchPending,isRivalRematchReady]);
}

@override
String toString() {
    return 'WordChainState(isLoading: $isLoading, isCheckingWord: $isCheckingWord, errorMessage: $errorMessage, rejectedReason: $rejectedReason, mode: $mode, relaxed: $relaxed, roomCode: $roomCode, myPlayerIndex: $myPlayerIndex, gameState: $gameState, inputWord: $inputWord, remainingSeconds: $remainingSeconds, rivalName: $rivalName, rivalAvatar: $rivalAvatar, isOpponentLeft: $isOpponentLeft, opponentLeftMessage: $opponentLeftMessage, reward: $reward, connectionState: $connectionState, sessionId: $sessionId, isRematchPending: $isRematchPending, isRivalRematchReady: $isRivalRematchReady)';
}


}

/// @nodoc
abstract mixin class _$WordChainStateCopyWith<$Res> implements $WordChainStateCopyWith<$Res> {
  factory _$WordChainStateCopyWith(_WordChainState value, $Res Function(_WordChainState) _then) = __$WordChainStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCheckingWord, String? errorMessage, String? rejectedReason, WordChainGameMode mode, bool relaxed, String? roomCode, int myPlayerIndex, GameState gameState, String inputWord, int remainingSeconds, String rivalName, String rivalAvatar, bool isOpponentLeft, String? opponentLeftMessage, Reward? reward, SocketConnectionState connectionState, String sessionId, bool isRematchPending, bool isRivalRematchReady
});


@override $GameStateCopyWith<$Res> get gameState;@override $RewardCopyWith<$Res>? get reward;

}
/// @nodoc
class __$WordChainStateCopyWithImpl<$Res>
    implements _$WordChainStateCopyWith<$Res> {
  __$WordChainStateCopyWithImpl(this._self, this._then);

  final _WordChainState _self;
  final $Res Function(_WordChainState) _then;

/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCheckingWord = null,Object? errorMessage = freezed,Object? rejectedReason = freezed,Object? mode = null,Object? relaxed = null,Object? roomCode = freezed,Object? myPlayerIndex = null,Object? gameState = null,Object? inputWord = null,Object? remainingSeconds = null,Object? rivalName = null,Object? rivalAvatar = null,Object? isOpponentLeft = null,Object? opponentLeftMessage = freezed,Object? reward = freezed,Object? connectionState = null,Object? sessionId = null,Object? isRematchPending = null,Object? isRivalRematchReady = null,}) {
  return _then(_WordChainState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCheckingWord: null == isCheckingWord ? _self.isCheckingWord : isCheckingWord // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as WordChainGameMode,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as GameState,inputWord: null == inputWord ? _self.inputWord : inputWord // ignore: cast_nullable_to_non_nullable
as String,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,isOpponentLeft: null == isOpponentLeft ? _self.isOpponentLeft : isOpponentLeft // ignore: cast_nullable_to_non_nullable
as bool,opponentLeftMessage: freezed == opponentLeftMessage ? _self.opponentLeftMessage : opponentLeftMessage // ignore: cast_nullable_to_non_nullable
as String?,reward: freezed == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward?,connectionState: null == connectionState ? _self.connectionState : connectionState // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,isRematchPending: null == isRematchPending ? _self.isRematchPending : isRematchPending // ignore: cast_nullable_to_non_nullable
as bool,isRivalRematchReady: null == isRivalRematchReady ? _self.isRivalRematchReady : isRivalRematchReady // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get gameState {
  
  return $GameStateCopyWith<$Res>(_self.gameState, (value) {
    return _then(_self.copyWith(gameState: value));
  });
}/// Create a copy of WordChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get reward {
    if (_self.reward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.reward!, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 String get sessionId; String get roomCode; String get status; int get currentRound; int get totalRounds; String get topicId; int get durationSeconds; int get timeLeft; int get serverNow; int get deadline; int get protocolVersion; WordInfo? get wordInfo; RoundResult? get lastResult; SkipProposal? get activeProposal; List<RoomPlayer> get players; List<HistoryItem> get history; String get myUid; String? get winnerUid; int get foundCount; Map<String, dynamic>? get result; List<Map<String, dynamic>> get wordsSummary; List<Map<String, dynamic>> get rewardResults; int? get currentWordIndex; String? get finishReason;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GameState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.currentRound, _this.currentRound) || other.currentRound == _this.currentRound)&&(identical(other.totalRounds, _this.totalRounds) || other.totalRounds == _this.totalRounds)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.durationSeconds, _this.durationSeconds) || other.durationSeconds == _this.durationSeconds)&&(identical(other.timeLeft, _this.timeLeft) || other.timeLeft == _this.timeLeft)&&(identical(other.serverNow, _this.serverNow) || other.serverNow == _this.serverNow)&&(identical(other.deadline, _this.deadline) || other.deadline == _this.deadline)&&(identical(other.protocolVersion, _this.protocolVersion) || other.protocolVersion == _this.protocolVersion)&&(identical(other.wordInfo, _this.wordInfo) || other.wordInfo == _this.wordInfo)&&(identical(other.lastResult, _this.lastResult) || other.lastResult == _this.lastResult)&&(identical(other.activeProposal, _this.activeProposal) || other.activeProposal == _this.activeProposal)&&const DeepCollectionEquality().equals(other.players, _this.players)&&const DeepCollectionEquality().equals(other.history, _this.history)&&(identical(other.myUid, _this.myUid) || other.myUid == _this.myUid)&&(identical(other.winnerUid, _this.winnerUid) || other.winnerUid == _this.winnerUid)&&(identical(other.foundCount, _this.foundCount) || other.foundCount == _this.foundCount)&&const DeepCollectionEquality().equals(other.result, _this.result)&&const DeepCollectionEquality().equals(other.wordsSummary, _this.wordsSummary)&&const DeepCollectionEquality().equals(other.rewardResults, _this.rewardResults)&&(identical(other.currentWordIndex, _this.currentWordIndex) || other.currentWordIndex == _this.currentWordIndex)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason));
}


@override
int get hashCode {
  final _this = this as GameState;
  return Object.hashAll([runtimeType,_this.sessionId,_this.roomCode,_this.status,_this.currentRound,_this.totalRounds,_this.topicId,_this.durationSeconds,_this.timeLeft,_this.serverNow,_this.deadline,_this.protocolVersion,_this.wordInfo,_this.lastResult,_this.activeProposal,const DeepCollectionEquality().hash(_this.players),const DeepCollectionEquality().hash(_this.history),_this.myUid,_this.winnerUid,_this.foundCount,const DeepCollectionEquality().hash(_this.result),const DeepCollectionEquality().hash(_this.wordsSummary),const DeepCollectionEquality().hash(_this.rewardResults),_this.currentWordIndex,_this.finishReason]);
}

@override
String toString() {
  final _this = this as GameState;
  return 'GameState(sessionId: ${_this.sessionId}, roomCode: ${_this.roomCode}, status: ${_this.status}, currentRound: ${_this.currentRound}, totalRounds: ${_this.totalRounds}, topicId: ${_this.topicId}, durationSeconds: ${_this.durationSeconds}, timeLeft: ${_this.timeLeft}, serverNow: ${_this.serverNow}, deadline: ${_this.deadline}, protocolVersion: ${_this.protocolVersion}, wordInfo: ${_this.wordInfo}, lastResult: ${_this.lastResult}, activeProposal: ${_this.activeProposal}, players: ${_this.players}, history: ${_this.history}, myUid: ${_this.myUid}, winnerUid: ${_this.winnerUid}, foundCount: ${_this.foundCount}, result: ${_this.result}, wordsSummary: ${_this.wordsSummary}, rewardResults: ${_this.rewardResults}, currentWordIndex: ${_this.currentWordIndex}, finishReason: ${_this.finishReason})';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 String sessionId, String roomCode, String status, int currentRound, int totalRounds, String topicId, int durationSeconds, int timeLeft, int serverNow, int deadline, int protocolVersion, WordInfo? wordInfo, RoundResult? lastResult, SkipProposal? activeProposal, List<RoomPlayer> players, List<HistoryItem> history, String myUid, String? winnerUid, int foundCount, Map<String, dynamic>? result, List<Map<String, dynamic>> wordsSummary, List<Map<String, dynamic>> rewardResults, int? currentWordIndex, String? finishReason
});


$WordInfoCopyWith<$Res>? get wordInfo;$RoundResultCopyWith<$Res>? get lastResult;$SkipProposalCopyWith<$Res>? get activeProposal;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? roomCode = null,Object? status = null,Object? currentRound = null,Object? totalRounds = null,Object? topicId = null,Object? durationSeconds = null,Object? timeLeft = null,Object? serverNow = null,Object? deadline = null,Object? protocolVersion = null,Object? wordInfo = freezed,Object? lastResult = freezed,Object? activeProposal = freezed,Object? players = null,Object? history = null,Object? myUid = null,Object? winnerUid = freezed,Object? foundCount = null,Object? result = freezed,Object? wordsSummary = null,Object? rewardResults = null,Object? currentWordIndex = freezed,Object? finishReason = freezed,}) {
  return _then(GameState(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentRound: null == currentRound ? _self.currentRound : currentRound // ignore: cast_nullable_to_non_nullable
as int,totalRounds: null == totalRounds ? _self.totalRounds : totalRounds // ignore: cast_nullable_to_non_nullable
as int,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,timeLeft: null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,serverNow: null == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int,protocolVersion: null == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int,wordInfo: freezed == wordInfo ? _self.wordInfo : wordInfo // ignore: cast_nullable_to_non_nullable
as WordInfo?,lastResult: freezed == lastResult ? _self.lastResult : lastResult // ignore: cast_nullable_to_non_nullable
as RoundResult?,activeProposal: freezed == activeProposal ? _self.activeProposal : activeProposal // ignore: cast_nullable_to_non_nullable
as SkipProposal?,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayer>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<HistoryItem>,myUid: null == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String,winnerUid: freezed == winnerUid ? _self.winnerUid : winnerUid // ignore: cast_nullable_to_non_nullable
as String?,foundCount: null == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,wordsSummary: null == wordsSummary ? _self.wordsSummary : wordsSummary // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,rewardResults: null == rewardResults ? _self.rewardResults : rewardResults // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,currentWordIndex: freezed == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordInfoCopyWith<$Res>? get wordInfo {
    if (_self.wordInfo == null) {
    return null;
  }

  return $WordInfoCopyWith<$Res>(_self.wordInfo!, (value) {
    return _then(_self.copyWith(wordInfo: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoundResultCopyWith<$Res>? get lastResult {
    if (_self.lastResult == null) {
    return null;
  }

  return $RoundResultCopyWith<$Res>(_self.lastResult!, (value) {
    return _then(_self.copyWith(lastResult: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalCopyWith<$Res>? get activeProposal {
    if (_self.activeProposal == null) {
    return null;
  }

  return $SkipProposalCopyWith<$Res>(_self.activeProposal!, (value) {
    return _then(_self.copyWith(activeProposal: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sessionId,  String roomCode,  String status,  int currentRound,  int totalRounds,  String topicId,  int durationSeconds,  int timeLeft,  int serverNow,  int deadline,  int protocolVersion,  WordInfo? wordInfo,  RoundResult? lastResult,  SkipProposal? activeProposal,  List<RoomPlayer> players,  List<HistoryItem> history,  String myUid,  String? winnerUid,  int foundCount,  Map<String, dynamic>? result,  List<Map<String, dynamic>> wordsSummary,  List<Map<String, dynamic>> rewardResults,  int? currentWordIndex,  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.sessionId,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.protocolVersion,_that.wordInfo,_that.lastResult,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sessionId,  String roomCode,  String status,  int currentRound,  int totalRounds,  String topicId,  int durationSeconds,  int timeLeft,  int serverNow,  int deadline,  int protocolVersion,  WordInfo? wordInfo,  RoundResult? lastResult,  SkipProposal? activeProposal,  List<RoomPlayer> players,  List<HistoryItem> history,  String myUid,  String? winnerUid,  int foundCount,  Map<String, dynamic>? result,  List<Map<String, dynamic>> wordsSummary,  List<Map<String, dynamic>> rewardResults,  int? currentWordIndex,  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.sessionId,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.protocolVersion,_that.wordInfo,_that.lastResult,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sessionId,  String roomCode,  String status,  int currentRound,  int totalRounds,  String topicId,  int durationSeconds,  int timeLeft,  int serverNow,  int deadline,  int protocolVersion,  WordInfo? wordInfo,  RoundResult? lastResult,  SkipProposal? activeProposal,  List<RoomPlayer> players,  List<HistoryItem> history,  String myUid,  String? winnerUid,  int foundCount,  Map<String, dynamic>? result,  List<Map<String, dynamic>> wordsSummary,  List<Map<String, dynamic>> rewardResults,  int? currentWordIndex,  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.sessionId,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.protocolVersion,_that.wordInfo,_that.lastResult,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc


class _GameState extends GameState {
  const _GameState({this.sessionId = '', this.roomCode = '', this.status = 'lobby', this.currentRound = 0, this.totalRounds = 10, this.topicId = '', this.durationSeconds = 300, this.timeLeft = 0, this.serverNow = 0, this.deadline = 0, this.protocolVersion = 4, this.wordInfo, this.lastResult, this.activeProposal,  List<RoomPlayer> players = const [],  List<HistoryItem> history = const [], this.myUid = '', this.winnerUid, this.foundCount = 0,  Map<String, dynamic>? result,  List<Map<String, dynamic>> wordsSummary = const [],  List<Map<String, dynamic>> rewardResults = const [], this.currentWordIndex, this.finishReason}): _players = players,_history = history,_result = result,_wordsSummary = wordsSummary,_rewardResults = rewardResults,super._();
  

@override@JsonKey() final  String sessionId;
@override@JsonKey() final  String roomCode;
@override@JsonKey() final  String status;
@override@JsonKey() final  int currentRound;
@override@JsonKey() final  int totalRounds;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  int durationSeconds;
@override@JsonKey() final  int timeLeft;
@override@JsonKey() final  int serverNow;
@override@JsonKey() final  int deadline;
@override@JsonKey() final  int protocolVersion;
@override final  WordInfo? wordInfo;
@override final  RoundResult? lastResult;
@override final  SkipProposal? activeProposal;
 final  List<RoomPlayer> _players;
@override@JsonKey() List<RoomPlayer> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

 final  List<HistoryItem> _history;
@override@JsonKey() List<HistoryItem> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override@JsonKey() final  String myUid;
@override final  String? winnerUid;
@override@JsonKey() final  int foundCount;
 final  Map<String, dynamic>? _result;
@override Map<String, dynamic>? get result {
  final value = _result;
  if (value == null) return null;
  if (_result is EqualUnmodifiableMapView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>> _wordsSummary;
@override@JsonKey() List<Map<String, dynamic>> get wordsSummary {
  if (_wordsSummary is EqualUnmodifiableListView) return _wordsSummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wordsSummary);
}

 final  List<Map<String, dynamic>> _rewardResults;
@override@JsonKey() List<Map<String, dynamic>> get rewardResults {
  if (_rewardResults is EqualUnmodifiableListView) return _rewardResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rewardResults);
}

@override final  int? currentWordIndex;
@override final  String? finishReason;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentRound, currentRound) || other.currentRound == currentRound)&&(identical(other.totalRounds, totalRounds) || other.totalRounds == totalRounds)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.serverNow, serverNow) || other.serverNow == serverNow)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.wordInfo, wordInfo) || other.wordInfo == wordInfo)&&(identical(other.lastResult, lastResult) || other.lastResult == lastResult)&&(identical(other.activeProposal, activeProposal) || other.activeProposal == activeProposal)&&const DeepCollectionEquality().equals(other.players, _players)&&const DeepCollectionEquality().equals(other.history, _history)&&(identical(other.myUid, myUid) || other.myUid == myUid)&&(identical(other.winnerUid, winnerUid) || other.winnerUid == winnerUid)&&(identical(other.foundCount, foundCount) || other.foundCount == foundCount)&&const DeepCollectionEquality().equals(other.result, _result)&&const DeepCollectionEquality().equals(other.wordsSummary, _wordsSummary)&&const DeepCollectionEquality().equals(other.rewardResults, _rewardResults)&&(identical(other.currentWordIndex, currentWordIndex) || other.currentWordIndex == currentWordIndex)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,sessionId,roomCode,status,currentRound,totalRounds,topicId,durationSeconds,timeLeft,serverNow,deadline,protocolVersion,wordInfo,lastResult,activeProposal,const DeepCollectionEquality().hash(_players),const DeepCollectionEquality().hash(_history),myUid,winnerUid,foundCount,const DeepCollectionEquality().hash(_result),const DeepCollectionEquality().hash(_wordsSummary),const DeepCollectionEquality().hash(_rewardResults),currentWordIndex,finishReason]);
}

@override
String toString() {
    return 'GameState(sessionId: $sessionId, roomCode: $roomCode, status: $status, currentRound: $currentRound, totalRounds: $totalRounds, topicId: $topicId, durationSeconds: $durationSeconds, timeLeft: $timeLeft, serverNow: $serverNow, deadline: $deadline, protocolVersion: $protocolVersion, wordInfo: $wordInfo, lastResult: $lastResult, activeProposal: $activeProposal, players: $players, history: $history, myUid: $myUid, winnerUid: $winnerUid, foundCount: $foundCount, result: $result, wordsSummary: $wordsSummary, rewardResults: $rewardResults, currentWordIndex: $currentWordIndex, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, String roomCode, String status, int currentRound, int totalRounds, String topicId, int durationSeconds, int timeLeft, int serverNow, int deadline, int protocolVersion, WordInfo? wordInfo, RoundResult? lastResult, SkipProposal? activeProposal, List<RoomPlayer> players, List<HistoryItem> history, String myUid, String? winnerUid, int foundCount, Map<String, dynamic>? result, List<Map<String, dynamic>> wordsSummary, List<Map<String, dynamic>> rewardResults, int? currentWordIndex, String? finishReason
});


@override $WordInfoCopyWith<$Res>? get wordInfo;@override $RoundResultCopyWith<$Res>? get lastResult;@override $SkipProposalCopyWith<$Res>? get activeProposal;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? roomCode = null,Object? status = null,Object? currentRound = null,Object? totalRounds = null,Object? topicId = null,Object? durationSeconds = null,Object? timeLeft = null,Object? serverNow = null,Object? deadline = null,Object? protocolVersion = null,Object? wordInfo = freezed,Object? lastResult = freezed,Object? activeProposal = freezed,Object? players = null,Object? history = null,Object? myUid = null,Object? winnerUid = freezed,Object? foundCount = null,Object? result = freezed,Object? wordsSummary = null,Object? rewardResults = null,Object? currentWordIndex = freezed,Object? finishReason = freezed,}) {
  return _then(_GameState(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentRound: null == currentRound ? _self.currentRound : currentRound // ignore: cast_nullable_to_non_nullable
as int,totalRounds: null == totalRounds ? _self.totalRounds : totalRounds // ignore: cast_nullable_to_non_nullable
as int,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,timeLeft: null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,serverNow: null == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int,protocolVersion: null == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int,wordInfo: freezed == wordInfo ? _self.wordInfo : wordInfo // ignore: cast_nullable_to_non_nullable
as WordInfo?,lastResult: freezed == lastResult ? _self.lastResult : lastResult // ignore: cast_nullable_to_non_nullable
as RoundResult?,activeProposal: freezed == activeProposal ? _self.activeProposal : activeProposal // ignore: cast_nullable_to_non_nullable
as SkipProposal?,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayer>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<HistoryItem>,myUid: null == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String,winnerUid: freezed == winnerUid ? _self.winnerUid : winnerUid // ignore: cast_nullable_to_non_nullable
as String?,foundCount: null == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int,result: freezed == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,wordsSummary: null == wordsSummary ? _self._wordsSummary : wordsSummary // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,rewardResults: null == rewardResults ? _self._rewardResults : rewardResults // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,currentWordIndex: freezed == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordInfoCopyWith<$Res>? get wordInfo {
    if (_self.wordInfo == null) {
    return null;
  }

  return $WordInfoCopyWith<$Res>(_self.wordInfo!, (value) {
    return _then(_self.copyWith(wordInfo: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoundResultCopyWith<$Res>? get lastResult {
    if (_self.lastResult == null) {
    return null;
  }

  return $RoundResultCopyWith<$Res>(_self.lastResult!, (value) {
    return _then(_self.copyWith(lastResult: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalCopyWith<$Res>? get activeProposal {
    if (_self.activeProposal == null) {
    return null;
  }

  return $SkipProposalCopyWith<$Res>(_self.activeProposal!, (value) {
    return _then(_self.copyWith(activeProposal: value));
  });
}
}

// dart format on

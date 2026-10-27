// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStateData {

@JsonKey(name: 'sessionId') String? get sessionId;@JsonKey(name: 'protocolVersion') int? get protocolVersion;@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'currentRound') int? get currentRound;@JsonKey(name: 'totalRounds') int? get totalRounds;@JsonKey(name: 'topicId') String? get topicId;@JsonKey(name: 'durationSeconds') int? get durationSeconds;@JsonKey(name: 'timeLeft') int? get timeLeft;@JsonKey(name: 'serverNow') int? get serverNow;@JsonKey(name: 'deadline') int? get deadline;@JsonKey(name: 'wordInfo') WordInfoData? get wordInfo;@JsonKey(name: 'lastResult') RoundResultData? get lastResult;@JsonKey(name: 'proposal') SkipProposalData? get proposal;@JsonKey(name: 'activeProposal') SkipProposalData? get activeProposal;@JsonKey(name: 'players') List<RoomPlayerData>? get players;@JsonKey(name: 'history') List<HistoryItemData>? get history;@JsonKey(name: 'myUid') String? get myUid;@JsonKey(name: 'winnerUid') String? get winnerUid;@JsonKey(name: 'foundCount') int? get foundCount;@JsonKey(name: 'result') Map<String, dynamic>? get result;@JsonKey(name: 'wordsSummary') List<Map<String, dynamic>>? get wordsSummary;@JsonKey(name: 'rewardResults') List<Map<String, dynamic>>? get rewardResults;@JsonKey(name: 'currentWordIndex') int? get currentWordIndex;@JsonKey(name: 'finishReason') String? get finishReason;
/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateDataCopyWith<GameStateData> get copyWith => _$GameStateDataCopyWithImpl<GameStateData>(this as GameStateData, _$identity);

  /// Serializes this GameStateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GameStateData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStateData&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.protocolVersion, _this.protocolVersion) || other.protocolVersion == _this.protocolVersion)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.currentRound, _this.currentRound) || other.currentRound == _this.currentRound)&&(identical(other.totalRounds, _this.totalRounds) || other.totalRounds == _this.totalRounds)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.durationSeconds, _this.durationSeconds) || other.durationSeconds == _this.durationSeconds)&&(identical(other.timeLeft, _this.timeLeft) || other.timeLeft == _this.timeLeft)&&(identical(other.serverNow, _this.serverNow) || other.serverNow == _this.serverNow)&&(identical(other.deadline, _this.deadline) || other.deadline == _this.deadline)&&(identical(other.wordInfo, _this.wordInfo) || other.wordInfo == _this.wordInfo)&&(identical(other.lastResult, _this.lastResult) || other.lastResult == _this.lastResult)&&(identical(other.proposal, _this.proposal) || other.proposal == _this.proposal)&&(identical(other.activeProposal, _this.activeProposal) || other.activeProposal == _this.activeProposal)&&const DeepCollectionEquality().equals(other.players, _this.players)&&const DeepCollectionEquality().equals(other.history, _this.history)&&(identical(other.myUid, _this.myUid) || other.myUid == _this.myUid)&&(identical(other.winnerUid, _this.winnerUid) || other.winnerUid == _this.winnerUid)&&(identical(other.foundCount, _this.foundCount) || other.foundCount == _this.foundCount)&&const DeepCollectionEquality().equals(other.result, _this.result)&&const DeepCollectionEquality().equals(other.wordsSummary, _this.wordsSummary)&&const DeepCollectionEquality().equals(other.rewardResults, _this.rewardResults)&&(identical(other.currentWordIndex, _this.currentWordIndex) || other.currentWordIndex == _this.currentWordIndex)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GameStateData;
  return Object.hashAll([runtimeType,_this.sessionId,_this.protocolVersion,_this.roomCode,_this.status,_this.currentRound,_this.totalRounds,_this.topicId,_this.durationSeconds,_this.timeLeft,_this.serverNow,_this.deadline,_this.wordInfo,_this.lastResult,_this.proposal,_this.activeProposal,const DeepCollectionEquality().hash(_this.players),const DeepCollectionEquality().hash(_this.history),_this.myUid,_this.winnerUid,_this.foundCount,const DeepCollectionEquality().hash(_this.result),const DeepCollectionEquality().hash(_this.wordsSummary),const DeepCollectionEquality().hash(_this.rewardResults),_this.currentWordIndex,_this.finishReason]);
}

@override
String toString() {
  final _this = this as GameStateData;
  return 'GameStateData(sessionId: ${_this.sessionId}, protocolVersion: ${_this.protocolVersion}, roomCode: ${_this.roomCode}, status: ${_this.status}, currentRound: ${_this.currentRound}, totalRounds: ${_this.totalRounds}, topicId: ${_this.topicId}, durationSeconds: ${_this.durationSeconds}, timeLeft: ${_this.timeLeft}, serverNow: ${_this.serverNow}, deadline: ${_this.deadline}, wordInfo: ${_this.wordInfo}, lastResult: ${_this.lastResult}, proposal: ${_this.proposal}, activeProposal: ${_this.activeProposal}, players: ${_this.players}, history: ${_this.history}, myUid: ${_this.myUid}, winnerUid: ${_this.winnerUid}, foundCount: ${_this.foundCount}, result: ${_this.result}, wordsSummary: ${_this.wordsSummary}, rewardResults: ${_this.rewardResults}, currentWordIndex: ${_this.currentWordIndex}, finishReason: ${_this.finishReason})';
}


}

/// @nodoc
abstract mixin class $GameStateDataCopyWith<$Res>  {
  factory $GameStateDataCopyWith(GameStateData value, $Res Function(GameStateData) _then) = _$GameStateDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sessionId') String? sessionId,@JsonKey(name: 'protocolVersion') int? protocolVersion,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'status') String? status,@JsonKey(name: 'currentRound') int? currentRound,@JsonKey(name: 'totalRounds') int? totalRounds,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'durationSeconds') int? durationSeconds,@JsonKey(name: 'timeLeft') int? timeLeft,@JsonKey(name: 'serverNow') int? serverNow,@JsonKey(name: 'deadline') int? deadline,@JsonKey(name: 'wordInfo') WordInfoData? wordInfo,@JsonKey(name: 'lastResult') RoundResultData? lastResult,@JsonKey(name: 'proposal') SkipProposalData? proposal,@JsonKey(name: 'activeProposal') SkipProposalData? activeProposal,@JsonKey(name: 'players') List<RoomPlayerData>? players,@JsonKey(name: 'history') List<HistoryItemData>? history,@JsonKey(name: 'myUid') String? myUid,@JsonKey(name: 'winnerUid') String? winnerUid,@JsonKey(name: 'foundCount') int? foundCount,@JsonKey(name: 'result') Map<String, dynamic>? result,@JsonKey(name: 'wordsSummary') List<Map<String, dynamic>>? wordsSummary,@JsonKey(name: 'rewardResults') List<Map<String, dynamic>>? rewardResults,@JsonKey(name: 'currentWordIndex') int? currentWordIndex,@JsonKey(name: 'finishReason') String? finishReason
});


$WordInfoDataCopyWith<$Res>? get wordInfo;$RoundResultDataCopyWith<$Res>? get lastResult;$SkipProposalDataCopyWith<$Res>? get proposal;$SkipProposalDataCopyWith<$Res>? get activeProposal;

}
/// @nodoc
class _$GameStateDataCopyWithImpl<$Res>
    implements $GameStateDataCopyWith<$Res> {
  _$GameStateDataCopyWithImpl(this._self, this._then);

  final GameStateData _self;
  final $Res Function(GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? protocolVersion = freezed,Object? roomCode = freezed,Object? status = freezed,Object? currentRound = freezed,Object? totalRounds = freezed,Object? topicId = freezed,Object? durationSeconds = freezed,Object? timeLeft = freezed,Object? serverNow = freezed,Object? deadline = freezed,Object? wordInfo = freezed,Object? lastResult = freezed,Object? proposal = freezed,Object? activeProposal = freezed,Object? players = freezed,Object? history = freezed,Object? myUid = freezed,Object? winnerUid = freezed,Object? foundCount = freezed,Object? result = freezed,Object? wordsSummary = freezed,Object? rewardResults = freezed,Object? currentWordIndex = freezed,Object? finishReason = freezed,}) {
  return _then(GameStateData(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,currentRound: freezed == currentRound ? _self.currentRound : currentRound // ignore: cast_nullable_to_non_nullable
as int?,totalRounds: freezed == totalRounds ? _self.totalRounds : totalRounds // ignore: cast_nullable_to_non_nullable
as int?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,timeLeft: freezed == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int?,serverNow: freezed == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,wordInfo: freezed == wordInfo ? _self.wordInfo : wordInfo // ignore: cast_nullable_to_non_nullable
as WordInfoData?,lastResult: freezed == lastResult ? _self.lastResult : lastResult // ignore: cast_nullable_to_non_nullable
as RoundResultData?,proposal: freezed == proposal ? _self.proposal : proposal // ignore: cast_nullable_to_non_nullable
as SkipProposalData?,activeProposal: freezed == activeProposal ? _self.activeProposal : activeProposal // ignore: cast_nullable_to_non_nullable
as SkipProposalData?,players: freezed == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerData>?,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<HistoryItemData>?,myUid: freezed == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String?,winnerUid: freezed == winnerUid ? _self.winnerUid : winnerUid // ignore: cast_nullable_to_non_nullable
as String?,foundCount: freezed == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,wordsSummary: freezed == wordsSummary ? _self.wordsSummary : wordsSummary // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,rewardResults: freezed == rewardResults ? _self.rewardResults : rewardResults // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,currentWordIndex: freezed == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordInfoDataCopyWith<$Res>? get wordInfo {
    if (_self.wordInfo == null) {
    return null;
  }

  return $WordInfoDataCopyWith<$Res>(_self.wordInfo!, (value) {
    return _then(_self.copyWith(wordInfo: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoundResultDataCopyWith<$Res>? get lastResult {
    if (_self.lastResult == null) {
    return null;
  }

  return $RoundResultDataCopyWith<$Res>(_self.lastResult!, (value) {
    return _then(_self.copyWith(lastResult: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalDataCopyWith<$Res>? get proposal {
    if (_self.proposal == null) {
    return null;
  }

  return $SkipProposalDataCopyWith<$Res>(_self.proposal!, (value) {
    return _then(_self.copyWith(proposal: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalDataCopyWith<$Res>? get activeProposal {
    if (_self.activeProposal == null) {
    return null;
  }

  return $SkipProposalDataCopyWith<$Res>(_self.activeProposal!, (value) {
    return _then(_self.copyWith(activeProposal: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameStateData].
extension GameStateDataPatterns on GameStateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStateData value)  $default,){
final _that = this;
switch (_that) {
case _GameStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStateData value)?  $default,){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sessionId')  String? sessionId, @JsonKey(name: 'protocolVersion')  int? protocolVersion, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'currentRound')  int? currentRound, @JsonKey(name: 'totalRounds')  int? totalRounds, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'durationSeconds')  int? durationSeconds, @JsonKey(name: 'timeLeft')  int? timeLeft, @JsonKey(name: 'serverNow')  int? serverNow, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'wordInfo')  WordInfoData? wordInfo, @JsonKey(name: 'lastResult')  RoundResultData? lastResult, @JsonKey(name: 'proposal')  SkipProposalData? proposal, @JsonKey(name: 'activeProposal')  SkipProposalData? activeProposal, @JsonKey(name: 'players')  List<RoomPlayerData>? players, @JsonKey(name: 'history')  List<HistoryItemData>? history, @JsonKey(name: 'myUid')  String? myUid, @JsonKey(name: 'winnerUid')  String? winnerUid, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'result')  Map<String, dynamic>? result, @JsonKey(name: 'wordsSummary')  List<Map<String, dynamic>>? wordsSummary, @JsonKey(name: 'rewardResults')  List<Map<String, dynamic>>? rewardResults, @JsonKey(name: 'currentWordIndex')  int? currentWordIndex, @JsonKey(name: 'finishReason')  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.sessionId,_that.protocolVersion,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.wordInfo,_that.lastResult,_that.proposal,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sessionId')  String? sessionId, @JsonKey(name: 'protocolVersion')  int? protocolVersion, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'currentRound')  int? currentRound, @JsonKey(name: 'totalRounds')  int? totalRounds, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'durationSeconds')  int? durationSeconds, @JsonKey(name: 'timeLeft')  int? timeLeft, @JsonKey(name: 'serverNow')  int? serverNow, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'wordInfo')  WordInfoData? wordInfo, @JsonKey(name: 'lastResult')  RoundResultData? lastResult, @JsonKey(name: 'proposal')  SkipProposalData? proposal, @JsonKey(name: 'activeProposal')  SkipProposalData? activeProposal, @JsonKey(name: 'players')  List<RoomPlayerData>? players, @JsonKey(name: 'history')  List<HistoryItemData>? history, @JsonKey(name: 'myUid')  String? myUid, @JsonKey(name: 'winnerUid')  String? winnerUid, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'result')  Map<String, dynamic>? result, @JsonKey(name: 'wordsSummary')  List<Map<String, dynamic>>? wordsSummary, @JsonKey(name: 'rewardResults')  List<Map<String, dynamic>>? rewardResults, @JsonKey(name: 'currentWordIndex')  int? currentWordIndex, @JsonKey(name: 'finishReason')  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _GameStateData():
return $default(_that.sessionId,_that.protocolVersion,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.wordInfo,_that.lastResult,_that.proposal,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sessionId')  String? sessionId, @JsonKey(name: 'protocolVersion')  int? protocolVersion, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'currentRound')  int? currentRound, @JsonKey(name: 'totalRounds')  int? totalRounds, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'durationSeconds')  int? durationSeconds, @JsonKey(name: 'timeLeft')  int? timeLeft, @JsonKey(name: 'serverNow')  int? serverNow, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'wordInfo')  WordInfoData? wordInfo, @JsonKey(name: 'lastResult')  RoundResultData? lastResult, @JsonKey(name: 'proposal')  SkipProposalData? proposal, @JsonKey(name: 'activeProposal')  SkipProposalData? activeProposal, @JsonKey(name: 'players')  List<RoomPlayerData>? players, @JsonKey(name: 'history')  List<HistoryItemData>? history, @JsonKey(name: 'myUid')  String? myUid, @JsonKey(name: 'winnerUid')  String? winnerUid, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'result')  Map<String, dynamic>? result, @JsonKey(name: 'wordsSummary')  List<Map<String, dynamic>>? wordsSummary, @JsonKey(name: 'rewardResults')  List<Map<String, dynamic>>? rewardResults, @JsonKey(name: 'currentWordIndex')  int? currentWordIndex, @JsonKey(name: 'finishReason')  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.sessionId,_that.protocolVersion,_that.roomCode,_that.status,_that.currentRound,_that.totalRounds,_that.topicId,_that.durationSeconds,_that.timeLeft,_that.serverNow,_that.deadline,_that.wordInfo,_that.lastResult,_that.proposal,_that.activeProposal,_that.players,_that.history,_that.myUid,_that.winnerUid,_that.foundCount,_that.result,_that.wordsSummary,_that.rewardResults,_that.currentWordIndex,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameStateData extends GameStateData {
  const _GameStateData({@JsonKey(name: 'sessionId') this.sessionId, @JsonKey(name: 'protocolVersion') this.protocolVersion, @JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'status') this.status, @JsonKey(name: 'currentRound') this.currentRound, @JsonKey(name: 'totalRounds') this.totalRounds, @JsonKey(name: 'topicId') this.topicId, @JsonKey(name: 'durationSeconds') this.durationSeconds, @JsonKey(name: 'timeLeft') this.timeLeft, @JsonKey(name: 'serverNow') this.serverNow, @JsonKey(name: 'deadline') this.deadline, @JsonKey(name: 'wordInfo') this.wordInfo, @JsonKey(name: 'lastResult') this.lastResult, @JsonKey(name: 'proposal') this.proposal, @JsonKey(name: 'activeProposal') this.activeProposal, @JsonKey(name: 'players')  List<RoomPlayerData>? players, @JsonKey(name: 'history')  List<HistoryItemData>? history, @JsonKey(name: 'myUid') this.myUid, @JsonKey(name: 'winnerUid') this.winnerUid, @JsonKey(name: 'foundCount') this.foundCount, @JsonKey(name: 'result')  Map<String, dynamic>? result, @JsonKey(name: 'wordsSummary')  List<Map<String, dynamic>>? wordsSummary, @JsonKey(name: 'rewardResults')  List<Map<String, dynamic>>? rewardResults, @JsonKey(name: 'currentWordIndex') this.currentWordIndex, @JsonKey(name: 'finishReason') this.finishReason}): _players = players,_history = history,_result = result,_wordsSummary = wordsSummary,_rewardResults = rewardResults,super._();
  factory _GameStateData.fromJson(Map<String, dynamic> json) => _$GameStateDataFromJson(json);

@override@JsonKey(name: 'sessionId') final  String? sessionId;
@override@JsonKey(name: 'protocolVersion') final  int? protocolVersion;
@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'currentRound') final  int? currentRound;
@override@JsonKey(name: 'totalRounds') final  int? totalRounds;
@override@JsonKey(name: 'topicId') final  String? topicId;
@override@JsonKey(name: 'durationSeconds') final  int? durationSeconds;
@override@JsonKey(name: 'timeLeft') final  int? timeLeft;
@override@JsonKey(name: 'serverNow') final  int? serverNow;
@override@JsonKey(name: 'deadline') final  int? deadline;
@override@JsonKey(name: 'wordInfo') final  WordInfoData? wordInfo;
@override@JsonKey(name: 'lastResult') final  RoundResultData? lastResult;
@override@JsonKey(name: 'proposal') final  SkipProposalData? proposal;
@override@JsonKey(name: 'activeProposal') final  SkipProposalData? activeProposal;
 final  List<RoomPlayerData>? _players;
@override@JsonKey(name: 'players') List<RoomPlayerData>? get players {
  final value = _players;
  if (value == null) return null;
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<HistoryItemData>? _history;
@override@JsonKey(name: 'history') List<HistoryItemData>? get history {
  final value = _history;
  if (value == null) return null;
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'myUid') final  String? myUid;
@override@JsonKey(name: 'winnerUid') final  String? winnerUid;
@override@JsonKey(name: 'foundCount') final  int? foundCount;
 final  Map<String, dynamic>? _result;
@override@JsonKey(name: 'result') Map<String, dynamic>? get result {
  final value = _result;
  if (value == null) return null;
  if (_result is EqualUnmodifiableMapView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>>? _wordsSummary;
@override@JsonKey(name: 'wordsSummary') List<Map<String, dynamic>>? get wordsSummary {
  final value = _wordsSummary;
  if (value == null) return null;
  if (_wordsSummary is EqualUnmodifiableListView) return _wordsSummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Map<String, dynamic>>? _rewardResults;
@override@JsonKey(name: 'rewardResults') List<Map<String, dynamic>>? get rewardResults {
  final value = _rewardResults;
  if (value == null) return null;
  if (_rewardResults is EqualUnmodifiableListView) return _rewardResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'currentWordIndex') final  int? currentWordIndex;
@override@JsonKey(name: 'finishReason') final  String? finishReason;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateDataCopyWith<_GameStateData> get copyWith => __$GameStateDataCopyWithImpl<_GameStateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStateDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStateData&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentRound, currentRound) || other.currentRound == currentRound)&&(identical(other.totalRounds, totalRounds) || other.totalRounds == totalRounds)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.serverNow, serverNow) || other.serverNow == serverNow)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.wordInfo, wordInfo) || other.wordInfo == wordInfo)&&(identical(other.lastResult, lastResult) || other.lastResult == lastResult)&&(identical(other.proposal, proposal) || other.proposal == proposal)&&(identical(other.activeProposal, activeProposal) || other.activeProposal == activeProposal)&&const DeepCollectionEquality().equals(other.players, _players)&&const DeepCollectionEquality().equals(other.history, _history)&&(identical(other.myUid, myUid) || other.myUid == myUid)&&(identical(other.winnerUid, winnerUid) || other.winnerUid == winnerUid)&&(identical(other.foundCount, foundCount) || other.foundCount == foundCount)&&const DeepCollectionEquality().equals(other.result, _result)&&const DeepCollectionEquality().equals(other.wordsSummary, _wordsSummary)&&const DeepCollectionEquality().equals(other.rewardResults, _rewardResults)&&(identical(other.currentWordIndex, currentWordIndex) || other.currentWordIndex == currentWordIndex)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,sessionId,protocolVersion,roomCode,status,currentRound,totalRounds,topicId,durationSeconds,timeLeft,serverNow,deadline,wordInfo,lastResult,proposal,activeProposal,const DeepCollectionEquality().hash(_players),const DeepCollectionEquality().hash(_history),myUid,winnerUid,foundCount,const DeepCollectionEquality().hash(_result),const DeepCollectionEquality().hash(_wordsSummary),const DeepCollectionEquality().hash(_rewardResults),currentWordIndex,finishReason]);
}

@override
String toString() {
    return 'GameStateData(sessionId: $sessionId, protocolVersion: $protocolVersion, roomCode: $roomCode, status: $status, currentRound: $currentRound, totalRounds: $totalRounds, topicId: $topicId, durationSeconds: $durationSeconds, timeLeft: $timeLeft, serverNow: $serverNow, deadline: $deadline, wordInfo: $wordInfo, lastResult: $lastResult, proposal: $proposal, activeProposal: $activeProposal, players: $players, history: $history, myUid: $myUid, winnerUid: $winnerUid, foundCount: $foundCount, result: $result, wordsSummary: $wordsSummary, rewardResults: $rewardResults, currentWordIndex: $currentWordIndex, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$GameStateDataCopyWith<$Res> implements $GameStateDataCopyWith<$Res> {
  factory _$GameStateDataCopyWith(_GameStateData value, $Res Function(_GameStateData) _then) = __$GameStateDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sessionId') String? sessionId,@JsonKey(name: 'protocolVersion') int? protocolVersion,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'status') String? status,@JsonKey(name: 'currentRound') int? currentRound,@JsonKey(name: 'totalRounds') int? totalRounds,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'durationSeconds') int? durationSeconds,@JsonKey(name: 'timeLeft') int? timeLeft,@JsonKey(name: 'serverNow') int? serverNow,@JsonKey(name: 'deadline') int? deadline,@JsonKey(name: 'wordInfo') WordInfoData? wordInfo,@JsonKey(name: 'lastResult') RoundResultData? lastResult,@JsonKey(name: 'proposal') SkipProposalData? proposal,@JsonKey(name: 'activeProposal') SkipProposalData? activeProposal,@JsonKey(name: 'players') List<RoomPlayerData>? players,@JsonKey(name: 'history') List<HistoryItemData>? history,@JsonKey(name: 'myUid') String? myUid,@JsonKey(name: 'winnerUid') String? winnerUid,@JsonKey(name: 'foundCount') int? foundCount,@JsonKey(name: 'result') Map<String, dynamic>? result,@JsonKey(name: 'wordsSummary') List<Map<String, dynamic>>? wordsSummary,@JsonKey(name: 'rewardResults') List<Map<String, dynamic>>? rewardResults,@JsonKey(name: 'currentWordIndex') int? currentWordIndex,@JsonKey(name: 'finishReason') String? finishReason
});


@override $WordInfoDataCopyWith<$Res>? get wordInfo;@override $RoundResultDataCopyWith<$Res>? get lastResult;@override $SkipProposalDataCopyWith<$Res>? get proposal;@override $SkipProposalDataCopyWith<$Res>? get activeProposal;

}
/// @nodoc
class __$GameStateDataCopyWithImpl<$Res>
    implements _$GameStateDataCopyWith<$Res> {
  __$GameStateDataCopyWithImpl(this._self, this._then);

  final _GameStateData _self;
  final $Res Function(_GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? protocolVersion = freezed,Object? roomCode = freezed,Object? status = freezed,Object? currentRound = freezed,Object? totalRounds = freezed,Object? topicId = freezed,Object? durationSeconds = freezed,Object? timeLeft = freezed,Object? serverNow = freezed,Object? deadline = freezed,Object? wordInfo = freezed,Object? lastResult = freezed,Object? proposal = freezed,Object? activeProposal = freezed,Object? players = freezed,Object? history = freezed,Object? myUid = freezed,Object? winnerUid = freezed,Object? foundCount = freezed,Object? result = freezed,Object? wordsSummary = freezed,Object? rewardResults = freezed,Object? currentWordIndex = freezed,Object? finishReason = freezed,}) {
  return _then(_GameStateData(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as int?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,currentRound: freezed == currentRound ? _self.currentRound : currentRound // ignore: cast_nullable_to_non_nullable
as int?,totalRounds: freezed == totalRounds ? _self.totalRounds : totalRounds // ignore: cast_nullable_to_non_nullable
as int?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,timeLeft: freezed == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int?,serverNow: freezed == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,wordInfo: freezed == wordInfo ? _self.wordInfo : wordInfo // ignore: cast_nullable_to_non_nullable
as WordInfoData?,lastResult: freezed == lastResult ? _self.lastResult : lastResult // ignore: cast_nullable_to_non_nullable
as RoundResultData?,proposal: freezed == proposal ? _self.proposal : proposal // ignore: cast_nullable_to_non_nullable
as SkipProposalData?,activeProposal: freezed == activeProposal ? _self.activeProposal : activeProposal // ignore: cast_nullable_to_non_nullable
as SkipProposalData?,players: freezed == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerData>?,history: freezed == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<HistoryItemData>?,myUid: freezed == myUid ? _self.myUid : myUid // ignore: cast_nullable_to_non_nullable
as String?,winnerUid: freezed == winnerUid ? _self.winnerUid : winnerUid // ignore: cast_nullable_to_non_nullable
as String?,foundCount: freezed == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int?,result: freezed == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,wordsSummary: freezed == wordsSummary ? _self._wordsSummary : wordsSummary // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,rewardResults: freezed == rewardResults ? _self._rewardResults : rewardResults // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,currentWordIndex: freezed == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordInfoDataCopyWith<$Res>? get wordInfo {
    if (_self.wordInfo == null) {
    return null;
  }

  return $WordInfoDataCopyWith<$Res>(_self.wordInfo!, (value) {
    return _then(_self.copyWith(wordInfo: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoundResultDataCopyWith<$Res>? get lastResult {
    if (_self.lastResult == null) {
    return null;
  }

  return $RoundResultDataCopyWith<$Res>(_self.lastResult!, (value) {
    return _then(_self.copyWith(lastResult: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalDataCopyWith<$Res>? get proposal {
    if (_self.proposal == null) {
    return null;
  }

  return $SkipProposalDataCopyWith<$Res>(_self.proposal!, (value) {
    return _then(_self.copyWith(proposal: value));
  });
}/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkipProposalDataCopyWith<$Res>? get activeProposal {
    if (_self.activeProposal == null) {
    return null;
  }

  return $SkipProposalDataCopyWith<$Res>(_self.activeProposal!, (value) {
    return _then(_self.copyWith(activeProposal: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStateData _$GameStateDataFromJson(Map<String, dynamic> json) =>
    _GameStateData(
      sessionId: json['sessionId'] as String?,
      protocolVersion: (json['protocolVersion'] as num?)?.toInt(),
      roomCode: json['roomCode'] as String?,
      status: json['status'] as String?,
      currentRound: (json['currentRound'] as num?)?.toInt(),
      totalRounds: (json['totalRounds'] as num?)?.toInt(),
      topicId: json['topicId'] as String?,
      durationSeconds: (json['durationSeconds'] as num?)?.toInt(),
      timeLeft: (json['timeLeft'] as num?)?.toInt(),
      serverNow: (json['serverNow'] as num?)?.toInt(),
      deadline: (json['deadline'] as num?)?.toInt(),
      wordInfo: json['wordInfo'] == null
          ? null
          : WordInfoData.fromJson(json['wordInfo'] as Map<String, dynamic>),
      lastResult: json['lastResult'] == null
          ? null
          : RoundResultData.fromJson(
              json['lastResult'] as Map<String, dynamic>,
            ),
      proposal: json['proposal'] == null
          ? null
          : SkipProposalData.fromJson(json['proposal'] as Map<String, dynamic>),
      activeProposal: json['activeProposal'] == null
          ? null
          : SkipProposalData.fromJson(
              json['activeProposal'] as Map<String, dynamic>,
            ),
      players: (json['players'] as List<dynamic>?)
          ?.map((e) => RoomPlayerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => HistoryItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      myUid: json['myUid'] as String?,
      winnerUid: json['winnerUid'] as String?,
      foundCount: (json['foundCount'] as num?)?.toInt(),
      result: json['result'] as Map<String, dynamic>?,
      wordsSummary: (json['wordsSummary'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      rewardResults: (json['rewardResults'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      currentWordIndex: (json['currentWordIndex'] as num?)?.toInt(),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$GameStateDataToJson(_GameStateData instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'protocolVersion': instance.protocolVersion,
      'roomCode': instance.roomCode,
      'status': instance.status,
      'currentRound': instance.currentRound,
      'totalRounds': instance.totalRounds,
      'topicId': instance.topicId,
      'durationSeconds': instance.durationSeconds,
      'timeLeft': instance.timeLeft,
      'serverNow': instance.serverNow,
      'deadline': instance.deadline,
      'wordInfo': instance.wordInfo,
      'lastResult': instance.lastResult,
      'proposal': instance.proposal,
      'activeProposal': instance.activeProposal,
      'players': instance.players,
      'history': instance.history,
      'myUid': instance.myUid,
      'winnerUid': instance.winnerUid,
      'foundCount': instance.foundCount,
      'result': instance.result,
      'wordsSummary': instance.wordsSummary,
      'rewardResults': instance.rewardResults,
      'currentWordIndex': instance.currentWordIndex,
      'finishReason': instance.finishReason,
    };

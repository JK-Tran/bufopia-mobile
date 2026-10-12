// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStateData _$GameStateDataFromJson(Map<String, dynamic> json) =>
    _GameStateData(
      status: json['status'] as String?,
      turn: (json['turn'] as num?)?.toInt(),
      turnId: (json['turnId'] as num?)?.toInt(),
      turnStartedAt: (json['turnStartedAt'] as num?)?.toInt(),
      deadline: (json['deadline'] as num?)?.toInt(),
      relaxed: json['relaxed'] as bool?,
      lives: (json['lives'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toInt())
          .toList(),
      mistakes: (json['mistakes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      awayCounts: (json['awayCounts'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      requiredLetter: json['requiredLetter'] as String?,
      usedWords: (json['usedWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => TurnMessageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      winner: (json['winner'] as num?)?.toInt(),
      finishReason: json['finishReason'] as String?,
      revision: (json['revision'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GameStateDataToJson(_GameStateData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'turn': instance.turn,
      'turnId': instance.turnId,
      'turnStartedAt': instance.turnStartedAt,
      'deadline': instance.deadline,
      'relaxed': instance.relaxed,
      'lives': instance.lives,
      'mistakes': instance.mistakes,
      'awayCounts': instance.awayCounts,
      'requiredLetter': instance.requiredLetter,
      'usedWords': instance.usedWords,
      'messages': instance.messages,
      'winner': instance.winner,
      'finishReason': instance.finishReason,
      'revision': instance.revision,
    };

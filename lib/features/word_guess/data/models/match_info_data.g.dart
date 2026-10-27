// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchInfoData _$MatchInfoDataFromJson(Map<String, dynamic> json) =>
    _MatchInfoData(
      matchId: json['matchId'] as String?,
      roomCode: json['roomCode'] as String?,
      playerIndex: (json['playerIndex'] as num?)?.toInt(),
      rivalName: json['rivalName'] as String?,
      rivalAvatar: json['rivalAvatar'] as String?,
      topicId: json['topicId'] as String?,
      game: json['game'] as String?,
    );

Map<String, dynamic> _$MatchInfoDataToJson(_MatchInfoData instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'roomCode': instance.roomCode,
      'playerIndex': instance.playerIndex,
      'rivalName': instance.rivalName,
      'rivalAvatar': instance.rivalAvatar,
      'topicId': instance.topicId,
      'game': instance.game,
    };

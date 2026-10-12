// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_record_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchRecordData _$MatchRecordDataFromJson(Map<String, dynamic> json) =>
    _MatchRecordData(
      roomCode: json['roomCode'] as String?,
      playerIndex: (json['playerIndex'] as num?)?.toInt(),
      rivalName: json['rivalName'] as String?,
      rivalAvatar: json['rivalAvatar'] as String?,
      relaxed: json['relaxed'] as bool?,
      state: json['state'] == null
          ? null
          : GameStateData.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchRecordDataToJson(_MatchRecordData instance) =>
    <String, dynamic>{
      'roomCode': instance.roomCode,
      'playerIndex': instance.playerIndex,
      'rivalName': instance.rivalName,
      'rivalAvatar': instance.rivalAvatar,
      'relaxed': instance.relaxed,
      'state': instance.state,
    };

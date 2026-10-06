// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomInfoData _$RoomInfoDataFromJson(Map<String, dynamic> json) =>
    _RoomInfoData(
      roomCode: json['roomCode'] as String?,
      matchId: json['matchId'] as String?,
      hostUid: json['hostUid'] as String?,
      hostName: json['hostName'] as String?,
      topicId: json['topicId'] as String?,
      status: json['status'] as String?,
      players: (json['players'] as List<dynamic>?)
          ?.map((e) => RoomPlayerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomInfoDataToJson(_RoomInfoData instance) =>
    <String, dynamic>{
      'roomCode': instance.roomCode,
      'matchId': instance.matchId,
      'hostUid': instance.hostUid,
      'hostName': instance.hostName,
      'topicId': instance.topicId,
      'status': instance.status,
      'players': instance.players,
    };

_RoomPlayerData _$RoomPlayerDataFromJson(Map<String, dynamic> json) =>
    _RoomPlayerData(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$RoomPlayerDataToJson(_RoomPlayerData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
    };

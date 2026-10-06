// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomInfoModel _$RoomInfoModelFromJson(Map<String, dynamic> json) =>
    _RoomInfoModel(
      roomCode: json['roomCode'] as String?,
      matchId: json['matchId'] as String?,
      hostUid: json['hostUid'] as String?,
      hostName: json['hostName'] as String?,
      topicId: json['topicId'] as String?,
      status: json['status'] as String?,
      players: (json['players'] as List<dynamic>?)
          ?.map((e) => RoomPlayerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomInfoModelToJson(_RoomInfoModel instance) =>
    <String, dynamic>{
      'roomCode': instance.roomCode,
      'matchId': instance.matchId,
      'hostUid': instance.hostUid,
      'hostName': instance.hostName,
      'topicId': instance.topicId,
      'status': instance.status,
      'players': instance.players,
    };

_RoomPlayerModel _$RoomPlayerModelFromJson(Map<String, dynamic> json) =>
    _RoomPlayerModel(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$RoomPlayerModelToJson(_RoomPlayerModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
    };

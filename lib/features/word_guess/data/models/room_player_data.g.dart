// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomPlayerData _$RoomPlayerDataFromJson(Map<String, dynamic> json) =>
    _RoomPlayerData(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      score: (json['score'] as num?)?.toInt(),
      foundCount: (json['foundCount'] as num?)?.toInt(),
      isReady: json['isReady'] as bool?,
      isHost: json['isHost'] as bool?,
      ended: json['ended'] as bool?,
      playerIndex: (json['playerIndex'] as num?)?.toInt(),
      online: json['online'] as bool?,
    );

Map<String, dynamic> _$RoomPlayerDataToJson(_RoomPlayerData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
      'score': instance.score,
      'foundCount': instance.foundCount,
      'isReady': instance.isReady,
      'isHost': instance.isHost,
      'ended': instance.ended,
      'playerIndex': instance.playerIndex,
      'online': instance.online,
    };

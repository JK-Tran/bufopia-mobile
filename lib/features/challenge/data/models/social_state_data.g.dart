// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialStateData _$SocialStateDataFromJson(Map<String, dynamic> json) =>
    _SocialStateData(
      recent: (json['recent'] as List<dynamic>?)
          ?.map((e) => RivalData.fromJson(e as Map<String, dynamic>))
          .toList(),
      invitations: (json['invitations'] as List<dynamic>?)
          ?.map((e) => InvitationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SocialStateDataToJson(_SocialStateData instance) =>
    <String, dynamic>{
      'recent': instance.recent,
      'invitations': instance.invitations,
    };

_RivalData _$RivalDataFromJson(Map<String, dynamic> json) => _RivalData(
  uid: json['uid'] as String?,
  name: json['name'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$RivalDataToJson(_RivalData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_InvitationData _$InvitationDataFromJson(Map<String, dynamic> json) =>
    _InvitationData(
      id: json['id'] as String?,
      fromUid: json['fromUid'] as String?,
      fromName: json['fromName'] as String?,
      roomCode: json['roomCode'] as String?,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      topicId: json['topicId'] as String?,
    );

Map<String, dynamic> _$InvitationDataToJson(_InvitationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromUid': instance.fromUid,
      'fromName': instance.fromName,
      'roomCode': instance.roomCode,
      'expiresAt': instance.expiresAt,
      'topicId': instance.topicId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialStateModel _$SocialStateModelFromJson(Map<String, dynamic> json) =>
    _SocialStateModel(
      recent: (json['recent'] as List<dynamic>?)
          ?.map((e) => RivalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      invitations: (json['invitations'] as List<dynamic>?)
          ?.map((e) => InvitationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SocialStateModelToJson(_SocialStateModel instance) =>
    <String, dynamic>{
      'recent': instance.recent,
      'invitations': instance.invitations,
    };

_RivalModel _$RivalModelFromJson(Map<String, dynamic> json) => _RivalModel(
  uid: json['uid'] as String?,
  name: json['name'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$RivalModelToJson(_RivalModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_InvitationModel _$InvitationModelFromJson(Map<String, dynamic> json) =>
    _InvitationModel(
      id: json['id'] as String?,
      fromUid: json['fromUid'] as String?,
      fromName: json['fromName'] as String?,
      roomCode: json['roomCode'] as String?,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      topicId: json['topicId'] as String?,
    );

Map<String, dynamic> _$InvitationModelToJson(_InvitationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromUid': instance.fromUid,
      'fromName': instance.fromName,
      'roomCode': instance.roomCode,
      'expiresAt': instance.expiresAt,
      'topicId': instance.topicId,
    };

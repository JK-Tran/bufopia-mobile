// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_chain_social_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordChainSocialState _$WordChainSocialStateFromJson(
  Map<String, dynamic> json,
) => _WordChainSocialState(
  recent:
      (json['recent'] as List<dynamic>?)
          ?.map((e) => WordChainRival.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  invitations:
      (json['invitations'] as List<dynamic>?)
          ?.map((e) => WordChainInvitation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$WordChainSocialStateToJson(
  _WordChainSocialState instance,
) => <String, dynamic>{
  'recent': instance.recent,
  'invitations': instance.invitations,
};

_WordChainRival _$WordChainRivalFromJson(Map<String, dynamic> json) =>
    _WordChainRival(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? 'Người chơi',
      avatar: json['avatar'] as String?,
      playedAt: (json['playedAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WordChainRivalToJson(_WordChainRival instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatar': instance.avatar,
      'playedAt': instance.playedAt,
    };

_WordChainInvitation _$WordChainInvitationFromJson(Map<String, dynamic> json) =>
    _WordChainInvitation(
      id: json['id'] as String? ?? '',
      fromUid: json['fromUid'] as String? ?? '',
      fromName: json['fromName'] as String? ?? 'Bạn bè',
      roomCode: json['roomCode'] as String? ?? '',
      fromAvatar: json['fromAvatar'] as String?,
      activity: json['activity'] as String? ?? 'chain',
      language: json['language'] as String? ?? 'vi',
      expiresAt: (json['expiresAt'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$WordChainInvitationToJson(
  _WordChainInvitation instance,
) => <String, dynamic>{
  'id': instance.id,
  'fromUid': instance.fromUid,
  'fromName': instance.fromName,
  'roomCode': instance.roomCode,
  'fromAvatar': instance.fromAvatar,
  'activity': instance.activity,
  'language': instance.language,
  'expiresAt': instance.expiresAt,
};

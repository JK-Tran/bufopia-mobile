// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatData _$ChatDataFromJson(Map<String, dynamic> json) => _ChatData(
  id: json['id'] as String?,
  actor: (json['actor'] as num?)?.toInt(),
  text: json['text'] as String?,
  name: json['name'] as String?,
  avatar: json['avatar'] as String?,
  time: json['time'] as num?,
);

Map<String, dynamic> _$ChatDataToJson(_ChatData instance) => <String, dynamic>{
  'id': instance.id,
  'actor': instance.actor,
  'text': instance.text,
  'name': instance.name,
  'avatar': instance.avatar,
  'time': instance.time,
};

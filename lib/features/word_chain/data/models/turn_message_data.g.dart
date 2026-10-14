// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turn_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TurnMessageData _$TurnMessageDataFromJson(Map<String, dynamic> json) =>
    _TurnMessageData(
      actor: (json['actor'] as num).toInt(),
      entry: WordData.fromJson(json['entry'] as Map<String, dynamic>),
      time: (json['time'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TurnMessageDataToJson(_TurnMessageData instance) =>
    <String, dynamic>{
      'actor': instance.actor,
      'entry': instance.entry,
      'time': instance.time,
    };

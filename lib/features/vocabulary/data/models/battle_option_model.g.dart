// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleOptionModel _$BattleOptionModelFromJson(Map<String, dynamic> json) =>
    _BattleOptionModel(
      id: json['id'] as String,
      topic: json['topic'] as String?,
      en: json['en'] as String?,
      vi: json['vi'] as String?,
    );

Map<String, dynamic> _$BattleOptionModelToJson(_BattleOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'en': instance.en,
      'vi': instance.vi,
    };

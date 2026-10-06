// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleQuestionData _$BattleQuestionDataFromJson(Map<String, dynamic> json) =>
    _BattleQuestionData(
      id: json['id'] as String,
      topic: json['topic'] as String?,
      en: json['en'] as String?,
      vi: json['vi'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => BattleOptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BattleQuestionDataToJson(_BattleQuestionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'en': instance.en,
      'vi': instance.vi,
      'options': instance.options,
    };

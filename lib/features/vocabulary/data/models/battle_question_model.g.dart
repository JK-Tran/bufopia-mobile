// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleQuestionModel _$BattleQuestionModelFromJson(Map<String, dynamic> json) =>
    _BattleQuestionModel(
      id: json['id'] as String,
      topic: json['topic'] as String?,
      en: json['en'] as String?,
      vi: json['vi'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => BattleOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BattleQuestionModelToJson(
  _BattleQuestionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'topic': instance.topic,
  'en': instance.en,
  'vi': instance.vi,
  'options': instance.options,
};

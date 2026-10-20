// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordData _$WordDataFromJson(Map<String, dynamic> json) => _WordData(
  id: json['id'] as String,
  topic: json['topic'] as String?,
  en: json['en'] as String?,
  vi: json['vi'] as String?,
  phonetic: json['phonetic'] as String?,
  partOfSpeech: json['partOfSpeech'] as String?,
  example: json['example'] as String?,
  exampleVi: json['exampleVi'] as String?,
);

Map<String, dynamic> _$WordDataToJson(_WordData instance) => <String, dynamic>{
  'id': instance.id,
  'topic': instance.topic,
  'en': instance.en,
  'vi': instance.vi,
  'phonetic': instance.phonetic,
  'partOfSpeech': instance.partOfSpeech,
  'example': instance.example,
  'exampleVi': instance.exampleVi,
};

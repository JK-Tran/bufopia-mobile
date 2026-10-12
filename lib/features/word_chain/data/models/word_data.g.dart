// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordData _$WordDataFromJson(Map<String, dynamic> json) => _WordData(
  word: json['word'] as String,
  valid: json['valid'] as bool?,
  phonetic: json['phonetic'] as String?,
  partOfSpeech: json['partOfSpeech'] as String?,
  vi: json['vi'] as String?,
  definition: json['definition'] as String?,
  example: json['example'] as String?,
  audio: json['audio'] as String?,
);

Map<String, dynamic> _$WordDataToJson(_WordData instance) => <String, dynamic>{
  'word': instance.word,
  'valid': instance.valid,
  'phonetic': instance.phonetic,
  'partOfSpeech': instance.partOfSpeech,
  'vi': instance.vi,
  'definition': instance.definition,
  'example': instance.example,
  'audio': instance.audio,
};

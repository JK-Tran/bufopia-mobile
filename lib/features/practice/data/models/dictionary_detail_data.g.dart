// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DictionaryDetailData _$DictionaryDetailDataFromJson(
  Map<String, dynamic> json,
) => _DictionaryDetailData(
  valid: json['valid'] as bool?,
  word: json['word'] as String?,
  phonetic: json['phonetic'] as String?,
  partOfSpeech: json['partOfSpeech'] as String?,
  meaning: json['meaning'] as String?,
  example: json['example'] as String?,
  exampleTranslation: json['exampleTranslation'] as String?,
);

Map<String, dynamic> _$DictionaryDetailDataToJson(
  _DictionaryDetailData instance,
) => <String, dynamic>{
  'valid': instance.valid,
  'word': instance.word,
  'phonetic': instance.phonetic,
  'partOfSpeech': instance.partOfSpeech,
  'meaning': instance.meaning,
  'example': instance.example,
  'exampleTranslation': instance.exampleTranslation,
};

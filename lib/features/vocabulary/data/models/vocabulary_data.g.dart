// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VocabularyDataResponse _$VocabularyDataResponseFromJson(
  Map<String, dynamic> json,
) => _VocabularyDataResponse(
  version: json['version'] as String?,
  totalTopics: (json['totalTopics'] as num?)?.toInt(),
  totalWords: (json['totalWords'] as num?)?.toInt(),
  topics:
      (json['topics'] as List<dynamic>?)
          ?.map((e) => TopicData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  words:
      (json['words'] as List<dynamic>?)
          ?.map((e) => WordData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$VocabularyDataResponseToJson(
  _VocabularyDataResponse instance,
) => <String, dynamic>{
  'version': instance.version,
  'totalTopics': instance.totalTopics,
  'totalWords': instance.totalWords,
  'topics': instance.topics,
  'words': instance.words,
};

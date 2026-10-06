// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VocabularyResponseModel _$VocabularyResponseModelFromJson(
  Map<String, dynamic> json,
) => _VocabularyResponseModel(
  version: json['version'] as String?,
  totalTopics: (json['totalTopics'] as num?)?.toInt(),
  totalWords: (json['totalWords'] as num?)?.toInt(),
  topics:
      (json['topics'] as List<dynamic>?)
          ?.map((e) => TopicModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  words:
      (json['words'] as List<dynamic>?)
          ?.map((e) => WordModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$VocabularyResponseModelToJson(
  _VocabularyResponseModel instance,
) => <String, dynamic>{
  'version': instance.version,
  'totalTopics': instance.totalTopics,
  'totalWords': instance.totalWords,
  'topics': instance.topics,
  'words': instance.words,
};

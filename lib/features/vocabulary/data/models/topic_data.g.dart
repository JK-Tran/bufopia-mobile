// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopicData _$TopicDataFromJson(Map<String, dynamic> json) => _TopicData(
  id: json['id'] as String,
  name: json['name'] as String?,
  category: json['category'] as String?,
  difficulty: json['difficulty'] as String?,
  icon: json['icon'] as String?,
  wordCount: (json['word_count'] as num?)?.toInt(),
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$TopicDataToJson(_TopicData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'icon': instance.icon,
      'word_count': instance.wordCount,
      'updated_at': instance.updatedAt,
    };

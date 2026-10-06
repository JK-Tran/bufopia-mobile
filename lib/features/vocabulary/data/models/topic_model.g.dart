// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopicModel _$TopicModelFromJson(Map<String, dynamic> json) => _TopicModel(
  id: json['id'] as String,
  name: json['name'] as String?,
  category: json['category'] as String?,
  difficulty: json['difficulty'] as String?,
  icon: json['icon'] as String?,
  wordCount: (json['word_count'] as num?)?.toInt(),
  updatedAt: json['updated_at'],
);

Map<String, dynamic> _$TopicModelToJson(_TopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'icon': instance.icon,
      'word_count': instance.wordCount,
      'updated_at': instance.updatedAt,
    };

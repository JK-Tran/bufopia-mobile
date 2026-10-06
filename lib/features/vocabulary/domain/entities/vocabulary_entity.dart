import 'package:bufopia/features/vocabulary/domain/entities/topic_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary_entity.freezed.dart';

@freezed
abstract class VocabularyEntity with _$VocabularyEntity {
  const factory VocabularyEntity({
    @Default('') String version,
    @Default(0) int totalTopics,
    @Default(0) int totalWords,
    @Default([]) List<TopicEntity> topics,
    @Default([]) List<WordEntity> words,
  }) = _VocabularyEntity;
}

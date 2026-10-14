import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary.freezed.dart';

@freezed
abstract class Vocabulary with _$Vocabulary {
  const factory Vocabulary({
    @Default('') String version,
    @Default(0) int totalTopics,
    @Default(0) int totalWords,
    @Default([]) List<Topic> topics,
    @Default([]) List<Word> words,
  }) = _Vocabulary;
}

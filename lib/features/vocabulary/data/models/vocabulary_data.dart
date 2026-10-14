import 'package:bufopia/features/vocabulary/data/models/topic_data.dart';
import 'package:bufopia/features/vocabulary/data/models/word_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary_data.freezed.dart';
part 'vocabulary_data.g.dart';

@freezed
abstract class VocabularyDataResponse with _$VocabularyDataResponse {
  const factory VocabularyDataResponse({
    @JsonKey(name: 'version') String? version,
    @JsonKey(name: 'totalTopics') int? totalTopics,
    @JsonKey(name: 'totalWords') int? totalWords,
    @JsonKey(name: 'topics') @Default([]) List<TopicData> topics,
    @JsonKey(name: 'words') @Default([]) List<WordData> words,
  }) = _VocabularyDataResponse;

  const VocabularyDataResponse._();

  factory VocabularyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$VocabularyDataResponseFromJson(json);
}

import 'package:bufopia/features/vocabulary/data/models/topic_model.dart';
import 'package:bufopia/features/vocabulary/data/models/word_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary_response_model.freezed.dart';
part 'vocabulary_response_model.g.dart';

@freezed
abstract class VocabularyResponseModel with _$VocabularyResponseModel {
  const factory VocabularyResponseModel({
    @JsonKey(name: 'version') String? version,
    @JsonKey(name: 'totalTopics') int? totalTopics,
    @JsonKey(name: 'totalWords') int? totalWords,
    @JsonKey(name: 'topics') @Default([]) List<TopicModel> topics,
    @JsonKey(name: 'words') @Default([]) List<WordModel> words,
  }) = _VocabularyResponseModel;

  const VocabularyResponseModel._();

  factory VocabularyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VocabularyResponseModelFromJson(json);
}

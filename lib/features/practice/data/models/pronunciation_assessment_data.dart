import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation_assessment_data.freezed.dart';
part 'pronunciation_assessment_data.g.dart';

@freezed
abstract class PronunciationAssessmentData with _$PronunciationAssessmentData {
  const factory PronunciationAssessmentData({
    @JsonKey(name: 'provider') String? provider,
    @JsonKey(name: 'scores') PronunciationScoresData? scores,
    @JsonKey(name: 'words') List<PronunciationWordScoreData>? words,
  }) = _PronunciationAssessmentData;

  const PronunciationAssessmentData._();

  factory PronunciationAssessmentData.fromJson(Map<String, dynamic> json) =>
      _$PronunciationAssessmentDataFromJson(json);
}

@freezed
abstract class PronunciationScoresData with _$PronunciationScoresData {
  const factory PronunciationScoresData({
    @JsonKey(name: 'pronunciation') double? pronunciation,
    @JsonKey(name: 'accuracy') double? accuracy,
    @JsonKey(name: 'fluency') double? fluency,
    @JsonKey(name: 'completeness') double? completeness,
  }) = _PronunciationScoresData;

  const PronunciationScoresData._();

  factory PronunciationScoresData.fromJson(Map<String, dynamic> json) =>
      _$PronunciationScoresDataFromJson(json);
}

@freezed
abstract class PronunciationWordScoreData with _$PronunciationWordScoreData {
  const factory PronunciationWordScoreData({
    @JsonKey(name: 'word') String? word,
    @JsonKey(name: 'accuracy') double? accuracy,
    @JsonKey(name: 'errorType') String? errorType,
  }) = _PronunciationWordScoreData;

  const PronunciationWordScoreData._();

  factory PronunciationWordScoreData.fromJson(Map<String, dynamic> json) =>
      _$PronunciationWordScoreDataFromJson(json);
}

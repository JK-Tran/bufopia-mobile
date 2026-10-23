import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation_assessment.freezed.dart';

@freezed
abstract class PronunciationAssessment with _$PronunciationAssessment {
  const factory PronunciationAssessment({
    @Default('') String provider,
    @Default(0.0) double pronunciationScore,
    @Default(0.0) double accuracyScore,
    @Default(0.0) double fluencyScore,
    @Default(0.0) double completenessScore,
    @Default([]) List<PronunciationWordScore> words,
  }) = _PronunciationAssessment;
}

@freezed
abstract class PronunciationWordScore with _$PronunciationWordScore {
  const factory PronunciationWordScore({
    @Default('') String word,
    @Default(0.0) double accuracy,
    @Default('') String errorType,
  }) = _PronunciationWordScore;
}

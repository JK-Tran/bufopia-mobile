part of 'review_bloc.dart';

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(false) bool isSavingVault,
    @Default(false) bool isAssessingPronunciation,
    @Default([]) List<WordMemory> weakWords,
    @Default({}) Map<String, Word> vocabMap,
    @Default('') String uid,
    String? token,
    @Default(0) int currentWordIndex,
    PronunciationAssessment? pronunciationAssessment,
    String? errorMessage,
    String? successMessage,
  }) = _ReviewState;
}

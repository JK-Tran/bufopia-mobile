part of 'feedback_bloc.dart';

@freezed
abstract class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    @Default(FeedbackActiveTab.general) FeedbackActiveTab activeTab,
    @Default(true) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSubmittedSuccess,
    @Default(false) bool isFullDictionaryMode,
    String? submittedReportedWord,
    FeedbackWordEntry? selectedWordEntry,
    @Default([]) List<FeedbackWordEntry> historyWords,
    @Default([]) List<FeedbackWordEntry> allWords,
    String? errorMessage,
  }) = _FeedbackState;
}

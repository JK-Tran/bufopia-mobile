part of 'feedback_bloc.dart';

@freezed
abstract class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.initiated() = _Initiated;

  const factory FeedbackEvent.tabChanged(FeedbackActiveTab tab) = _TabChanged;

  const factory FeedbackEvent.wordEntrySelected(FeedbackWordEntry? entry) =
      _WordEntrySelected;

  const factory FeedbackEvent.toggleFullDictionaryMode() =
      _ToggleFullDictionaryMode;

  const factory FeedbackEvent.submitGeneralFeedback({
    required String category,
    required String message,
    String? contact,
  }) = _SubmitGeneralFeedback;

  const factory FeedbackEvent.submitWordReport({
    required String issueType,
    required String content,
    String? contact,
  }) = _SubmitWordReport;

  const factory FeedbackEvent.resetForm() = _ResetForm;
}

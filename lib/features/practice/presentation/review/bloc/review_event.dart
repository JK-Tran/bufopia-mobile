part of 'review_bloc.dart';

@freezed
abstract class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.init({
    String? uid,
    String? token,
  }) = _Init;

  const factory ReviewEvent.answerWord({
    required String uid,
    required String wordId,
    required bool correct,
    required double seconds,
    String? token,
  }) = _AnswerWord;

  const factory ReviewEvent.assessPronunciation({
    required String uid,
    required File audioFile,
    required String referenceText,
    @Default('en-US') String language,
    String? token,
  }) = _AssessPronunciation;

  const factory ReviewEvent.saveWordToVault({
    required String uid,
    required Word word,
    String? token,
  }) = _SaveWordToVault;

  const factory ReviewEvent.nextWord() = _NextWord;
}

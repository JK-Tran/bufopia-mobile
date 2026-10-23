part of 'contribution_bloc.dart';

@freezed
abstract class ContributionEvent with _$ContributionEvent {
  const factory ContributionEvent.loadContributions({
    String? uid,
    String? token,
  }) = _LoadContributions;

  const factory ContributionEvent.lookupWord({
    required String word,
  }) = _LookupWord;

  const factory ContributionEvent.submitContribution({
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  }) = _SubmitContribution;

  const factory ContributionEvent.updateContribution({
    required String id,
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  }) = _UpdateContribution;
}

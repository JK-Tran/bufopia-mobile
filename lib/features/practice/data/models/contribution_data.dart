import 'package:freezed_annotation/freezed_annotation.dart';

part 'contribution_data.freezed.dart';
part 'contribution_data.g.dart';

@freezed
abstract class ContributionData with _$ContributionData {
  const factory ContributionData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'word_en') String? wordEn,
    @JsonKey(name: 'meaning_vi') String? meaningVi,
    @JsonKey(name: 'topic_id') String? topicId,
    @JsonKey(name: 'part_of_speech') String? partOfSpeech,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'example_en') String? exampleEn,
    @JsonKey(name: 'example_vi') String? exampleVi,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'review_note') String? reviewNote,
    @JsonKey(name: 'ai_state') String? aiState,
    @JsonKey(name: 'created_at') int? createdAt,
  }) = _ContributionData;

  const ContributionData._();

  factory ContributionData.fromJson(Map<String, dynamic> json) =>
      _$ContributionDataFromJson(json);
}

@freezed
abstract class ContributionsResponseData with _$ContributionsResponseData {
  const factory ContributionsResponseData({
    @JsonKey(name: 'contributions') List<ContributionData>? contributions,
  }) = _ContributionsResponseData;

  const ContributionsResponseData._();

  factory ContributionsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ContributionsResponseDataFromJson(json);
}

@freezed
abstract class SubmitContributionResponseData
    with _$SubmitContributionResponseData {
  const factory SubmitContributionResponseData({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'contribution') ContributionData? contribution,
  }) = _SubmitContributionResponseData;

  const SubmitContributionResponseData._();

  factory SubmitContributionResponseData.fromJson(Map<String, dynamic> json) =>
      _$SubmitContributionResponseDataFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribution_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContributionData _$ContributionDataFromJson(Map<String, dynamic> json) =>
    _ContributionData(
      id: json['id'] as String?,
      wordEn: json['word_en'] as String?,
      meaningVi: json['meaning_vi'] as String?,
      topicId: json['topic_id'] as String?,
      partOfSpeech: json['part_of_speech'] as String?,
      phonetic: json['phonetic'] as String?,
      exampleEn: json['example_en'] as String?,
      exampleVi: json['example_vi'] as String?,
      status: json['status'] as String?,
      reviewNote: json['review_note'] as String?,
      aiState: json['ai_state'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContributionDataToJson(_ContributionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word_en': instance.wordEn,
      'meaning_vi': instance.meaningVi,
      'topic_id': instance.topicId,
      'part_of_speech': instance.partOfSpeech,
      'phonetic': instance.phonetic,
      'example_en': instance.exampleEn,
      'example_vi': instance.exampleVi,
      'status': instance.status,
      'review_note': instance.reviewNote,
      'ai_state': instance.aiState,
      'created_at': instance.createdAt,
    };

_ContributionsResponseData _$ContributionsResponseDataFromJson(
  Map<String, dynamic> json,
) => _ContributionsResponseData(
  contributions: (json['contributions'] as List<dynamic>?)
      ?.map((e) => ContributionData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ContributionsResponseDataToJson(
  _ContributionsResponseData instance,
) => <String, dynamic>{'contributions': instance.contributions};

_SubmitContributionResponseData _$SubmitContributionResponseDataFromJson(
  Map<String, dynamic> json,
) => _SubmitContributionResponseData(
  success: json['success'] as bool?,
  contribution: json['contribution'] == null
      ? null
      : ContributionData.fromJson(json['contribution'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubmitContributionResponseDataToJson(
  _SubmitContributionResponseData instance,
) => <String, dynamic>{
  'success': instance.success,
  'contribution': instance.contribution,
};

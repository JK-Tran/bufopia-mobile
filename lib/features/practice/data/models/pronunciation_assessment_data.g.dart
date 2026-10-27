// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pronunciation_assessment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PronunciationAssessmentData _$PronunciationAssessmentDataFromJson(
  Map<String, dynamic> json,
) => _PronunciationAssessmentData(
  provider: json['provider'] as String?,
  scores: json['scores'] == null
      ? null
      : PronunciationScoresData.fromJson(
          json['scores'] as Map<String, dynamic>,
        ),
  words: (json['words'] as List<dynamic>?)
      ?.map(
        (e) => PronunciationWordScoreData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$PronunciationAssessmentDataToJson(
  _PronunciationAssessmentData instance,
) => <String, dynamic>{
  'provider': instance.provider,
  'scores': instance.scores,
  'words': instance.words,
};

_PronunciationScoresData _$PronunciationScoresDataFromJson(
  Map<String, dynamic> json,
) => _PronunciationScoresData(
  pronunciation: (json['pronunciation'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  fluency: (json['fluency'] as num?)?.toDouble(),
  completeness: (json['completeness'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PronunciationScoresDataToJson(
  _PronunciationScoresData instance,
) => <String, dynamic>{
  'pronunciation': instance.pronunciation,
  'accuracy': instance.accuracy,
  'fluency': instance.fluency,
  'completeness': instance.completeness,
};

_PronunciationWordScoreData _$PronunciationWordScoreDataFromJson(
  Map<String, dynamic> json,
) => _PronunciationWordScoreData(
  word: json['word'] as String?,
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  errorType: json['errorType'] as String?,
);

Map<String, dynamic> _$PronunciationWordScoreDataToJson(
  _PronunciationWordScoreData instance,
) => <String, dynamic>{
  'word': instance.word,
  'accuracy': instance.accuracy,
  'errorType': instance.errorType,
};

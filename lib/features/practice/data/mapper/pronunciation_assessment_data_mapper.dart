import 'package:bufopia/features/practice/data/models/pronunciation_assessment_data.dart';
import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PronunciationAssessmentDataMapper
    extends
        BaseDataMapper<PronunciationAssessmentData, PronunciationAssessment> {
  const PronunciationAssessmentDataMapper();

  @override
  PronunciationAssessment mapToEntity(PronunciationAssessmentData? data) {
    return PronunciationAssessment(
      provider: data?.provider ?? 'azure',
      pronunciationScore: data?.scores?.pronunciation ?? 0.0,
      accuracyScore: data?.scores?.accuracy ?? 0.0,
      fluencyScore: data?.scores?.fluency ?? 0.0,
      completenessScore: data?.scores?.completeness ?? 0.0,
      words:
          data?.words
              ?.map(
                (w) => PronunciationWordScore(
                  word: w.word ?? '',
                  accuracy: w.accuracy ?? 0.0,
                  errorType: w.errorType ?? 'None',
                ),
              )
              .toList() ??
          const [],
    );
  }
}

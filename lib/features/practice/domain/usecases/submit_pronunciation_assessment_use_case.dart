import 'dart:io';

import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_pronunciation_assessment_use_case.freezed.dart';

@freezed
abstract class SubmitPronunciationAssessmentInput extends BaseInput
    with _$SubmitPronunciationAssessmentInput {
  const factory SubmitPronunciationAssessmentInput({
    required String uid,
    required File audioFile,
    required String referenceText,
    @Default('en-US') String language,
    String? token,
  }) = _SubmitPronunciationAssessmentInput;

  const SubmitPronunciationAssessmentInput._();
}

@freezed
abstract class SubmitPronunciationAssessmentOutput extends BaseOutput
    with _$SubmitPronunciationAssessmentOutput {
  const factory SubmitPronunciationAssessmentOutput({
    @Default(PronunciationAssessment()) PronunciationAssessment assessment,
  }) = _SubmitPronunciationAssessmentOutput;

  const SubmitPronunciationAssessmentOutput._();
}

@lazySingleton
class SubmitPronunciationAssessmentUseCase
    extends
        BaseFutureUseCase<
          SubmitPronunciationAssessmentInput,
          SubmitPronunciationAssessmentOutput
        > {
  const SubmitPronunciationAssessmentUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<SubmitPronunciationAssessmentOutput> buildUseCase(
    SubmitPronunciationAssessmentInput input,
  ) async {
    final assessment = await _repository.assessPronunciation(
      uid: input.uid,
      audioFile: input.audioFile,
      referenceText: input.referenceText,
      language: input.language,
      token: input.token,
    );
    return SubmitPronunciationAssessmentOutput(assessment: assessment);
  }
}

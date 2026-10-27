import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_contribution_use_case.freezed.dart';

@freezed
abstract class SubmitContributionInput extends BaseInput
    with _$SubmitContributionInput {
  const factory SubmitContributionInput({
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
  }) = _SubmitContributionInput;

  const SubmitContributionInput._();
}

@freezed
abstract class SubmitContributionOutput extends BaseOutput
    with _$SubmitContributionOutput {
  const factory SubmitContributionOutput({
    @Default(Contribution()) Contribution contribution,
  }) = _SubmitContributionOutput;

  const SubmitContributionOutput._();
}

@lazySingleton
class SubmitContributionUseCase
    extends
        BaseFutureUseCase<SubmitContributionInput, SubmitContributionOutput> {
  const SubmitContributionUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<SubmitContributionOutput> buildUseCase(
    SubmitContributionInput input,
  ) async {
    final contribution = await _repository.submitContribution(
      uid: input.uid,
      contributorName: input.contributorName,
      wordEn: input.wordEn,
      meaningVi: input.meaningVi,
      topicId: input.topicId,
      partOfSpeech: input.partOfSpeech,
      phonetic: input.phonetic,
      exampleEn: input.exampleEn,
      exampleVi: input.exampleVi,
      token: input.token,
    );
    return SubmitContributionOutput(contribution: contribution);
  }
}

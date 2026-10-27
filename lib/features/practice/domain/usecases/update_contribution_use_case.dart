import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_contribution_use_case.freezed.dart';

@freezed
abstract class UpdateContributionInput extends BaseInput
    with _$UpdateContributionInput {
  const factory UpdateContributionInput({
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
  }) = _UpdateContributionInput;

  const UpdateContributionInput._();
}

@freezed
abstract class UpdateContributionOutput extends BaseOutput
    with _$UpdateContributionOutput {
  const factory UpdateContributionOutput({
    @Default(Contribution()) Contribution contribution,
  }) = _UpdateContributionOutput;

  const UpdateContributionOutput._();
}

@lazySingleton
class UpdateContributionUseCase
    extends
        BaseFutureUseCase<UpdateContributionInput, UpdateContributionOutput> {
  const UpdateContributionUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<UpdateContributionOutput> buildUseCase(
    UpdateContributionInput input,
  ) async {
    final contribution = await _repository.updateContribution(
      id: input.id,
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
    return UpdateContributionOutput(contribution: contribution);
  }
}

import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_contributions_use_case.freezed.dart';

@freezed
abstract class GetContributionsInput extends BaseInput
    with _$GetContributionsInput {
  const factory GetContributionsInput({
    required String uid,
    String? token,
  }) = _GetContributionsInput;

  const GetContributionsInput._();
}

@freezed
abstract class GetContributionsOutput extends BaseOutput
    with _$GetContributionsOutput {
  const factory GetContributionsOutput({
    @Default([]) List<Contribution> contributions,
  }) = _GetContributionsOutput;

  const GetContributionsOutput._();
}

@lazySingleton
class GetContributionsUseCase
    extends BaseFutureUseCase<GetContributionsInput, GetContributionsOutput> {
  const GetContributionsUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<GetContributionsOutput> buildUseCase(
    GetContributionsInput input,
  ) async {
    final contributions = await _repository.getContributions(
      uid: input.uid,
      token: input.token,
    );
    return GetContributionsOutput(contributions: contributions);
  }
}

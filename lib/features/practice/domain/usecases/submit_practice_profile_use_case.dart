import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_practice_profile_use_case.freezed.dart';

@freezed
abstract class SubmitPracticeProfileInput extends BaseInput
    with _$SubmitPracticeProfileInput {
  const factory SubmitPracticeProfileInput({
    required String uid,
    required WordMemory memory,
    String? token,
  }) = _SubmitPracticeProfileInput;

  const SubmitPracticeProfileInput._();
}

@freezed
abstract class SubmitPracticeProfileOutput extends BaseOutput
    with _$SubmitPracticeProfileOutput {
  const factory SubmitPracticeProfileOutput({
    @Default(false) bool success,
  }) = _SubmitPracticeProfileOutput;

  const SubmitPracticeProfileOutput._();
}

@lazySingleton
class SubmitPracticeProfileUseCase
    extends
        BaseFutureUseCase<
          SubmitPracticeProfileInput,
          SubmitPracticeProfileOutput
        > {
  const SubmitPracticeProfileUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<SubmitPracticeProfileOutput> buildUseCase(
    SubmitPracticeProfileInput input,
  ) async {
    final success = await _repository.submitProfile(
      uid: input.uid,
      memory: input.memory,
      token: input.token,
    );
    return SubmitPracticeProfileOutput(success: success);
  }
}

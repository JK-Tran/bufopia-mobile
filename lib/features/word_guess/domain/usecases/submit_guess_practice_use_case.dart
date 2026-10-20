import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';
import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_guess_practice_use_case.freezed.dart';

@freezed
abstract class SubmitGuessPracticeInput extends BaseInput
    with _$SubmitGuessPracticeInput {
  const factory SubmitGuessPracticeInput({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
  }) = _SubmitGuessPracticeInput;

  const SubmitGuessPracticeInput._();
}

@freezed
abstract class SubmitGuessPracticeOutput extends BaseOutput
    with _$SubmitGuessPracticeOutput {
  const factory SubmitGuessPracticeOutput(PracticeResult result) =
      _SubmitGuessPracticeOutput;

  const SubmitGuessPracticeOutput._();
}

@lazySingleton
class SubmitGuessPracticeUseCase
    extends
        BaseFutureUseCase<SubmitGuessPracticeInput, SubmitGuessPracticeOutput> {
  const SubmitGuessPracticeUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<SubmitGuessPracticeOutput> buildUseCase(
    SubmitGuessPracticeInput input,
  ) async {
    final result = await _repository.verifyPracticeWord(
      uid: input.uid,
      sessionId: input.sessionId,
      index: input.index,
      answer: input.answer,
    );
    return SubmitGuessPracticeOutput(result);
  }
}

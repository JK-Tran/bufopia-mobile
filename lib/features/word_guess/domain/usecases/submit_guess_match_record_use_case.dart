import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_guess_match_record_use_case.freezed.dart';

@freezed
abstract class SubmitGuessMatchRecordInput extends BaseInput
    with _$SubmitGuessMatchRecordInput {
  const factory SubmitGuessMatchRecordInput({
    required Map<String, dynamic> matchPayload,
    String? token,
  }) = _SubmitGuessMatchRecordInput;

  const SubmitGuessMatchRecordInput._();
}

@freezed
abstract class SubmitGuessMatchRecordOutput extends BaseOutput
    with _$SubmitGuessMatchRecordOutput {
  const factory SubmitGuessMatchRecordOutput({
    @Default(false) bool success,
  }) = _SubmitGuessMatchRecordOutput;

  const SubmitGuessMatchRecordOutput._();
}

@lazySingleton
class SubmitGuessMatchRecordUseCase
    extends
        BaseFutureUseCase<
          SubmitGuessMatchRecordInput,
          SubmitGuessMatchRecordOutput
        > {
  const SubmitGuessMatchRecordUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<SubmitGuessMatchRecordOutput> buildUseCase(
    SubmitGuessMatchRecordInput input,
  ) async {
    final success = await _repository.saveMatch(
      matchPayload: input.matchPayload,
      token: input.token,
    );
    return SubmitGuessMatchRecordOutput(success: success);
  }
}

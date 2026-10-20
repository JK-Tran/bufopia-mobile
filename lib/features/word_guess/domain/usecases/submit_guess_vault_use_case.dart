import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_guess_vault_use_case.freezed.dart';

@freezed
abstract class SubmitGuessVaultInput extends BaseInput
    with _$SubmitGuessVaultInput {
  const factory SubmitGuessVaultInput({
    required String uid,
    required String title,
    required List<Map<String, dynamic>> words,
    String? description,
    String? token,
  }) = _SubmitGuessVaultInput;

  const SubmitGuessVaultInput._();
}

@freezed
abstract class SubmitGuessVaultOutput extends BaseOutput
    with _$SubmitGuessVaultOutput {
  const factory SubmitGuessVaultOutput({
    @Default(false) bool success,
  }) = _SubmitGuessVaultOutput;

  const SubmitGuessVaultOutput._();
}

@lazySingleton
class SubmitGuessVaultUseCase
    extends BaseFutureUseCase<SubmitGuessVaultInput, SubmitGuessVaultOutput> {
  const SubmitGuessVaultUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<SubmitGuessVaultOutput> buildUseCase(
    SubmitGuessVaultInput input,
  ) async {
    final success = await _repository.saveToVault(
      uid: input.uid,
      title: input.title,
      words: input.words,
      description: input.description,
      token: input.token,
    );
    return SubmitGuessVaultOutput(success: success);
  }
}

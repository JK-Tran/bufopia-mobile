import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessRestartInput extends BaseInput {
  const SubmitGuessRestartInput({required this.sessionId});

  final String sessionId;
}

@lazySingleton
class SubmitGuessRestartUseCase
    extends BaseFutureUseCase<SubmitGuessRestartInput, EmptyOutput> {
  const SubmitGuessRestartUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessRestartInput input) async {
    _repository.sendRestart(sessionId: input.sessionId);
    return const EmptyOutput();
  }
}

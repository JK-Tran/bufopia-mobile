import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessEndInput extends BaseInput {
  const SubmitGuessEndInput({required this.sessionId});

  final String sessionId;
}

@lazySingleton
class SubmitGuessEndUseCase
    extends BaseFutureUseCase<SubmitGuessEndInput, EmptyOutput> {
  const SubmitGuessEndUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessEndInput input) async {
    _repository.sendEnd(sessionId: input.sessionId);
    return const EmptyOutput();
  }
}

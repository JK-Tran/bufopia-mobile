import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessWordInput extends BaseInput {
  const SubmitGuessWordInput({
    required this.word,
    required this.sessionId,
    required this.roundIndex,
  });

  final String word;
  final String sessionId;
  final int roundIndex;
}

@lazySingleton
class SubmitGuessWordUseCase
    extends BaseFutureUseCase<SubmitGuessWordInput, EmptyOutput> {
  const SubmitGuessWordUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessWordInput input) async {
    _repository.sendGuess(
      word: input.word,
      sessionId: input.sessionId,
      roundIndex: input.roundIndex,
    );
    return const EmptyOutput();
  }
}

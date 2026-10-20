import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessSkipInput extends BaseInput {
  const SubmitGuessSkipInput({
    required this.sessionId,
    required this.roundIndex,
  });

  final String sessionId;
  final int roundIndex;
}

@lazySingleton
class SubmitGuessSkipUseCase
    extends BaseFutureUseCase<SubmitGuessSkipInput, EmptyOutput> {
  const SubmitGuessSkipUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessSkipInput input) async {
    _repository.sendSkip(
      sessionId: input.sessionId,
      roundIndex: input.roundIndex,
    );
    return const EmptyOutput();
  }
}

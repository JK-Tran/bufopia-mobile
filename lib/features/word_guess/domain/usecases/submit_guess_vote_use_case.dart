import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessVoteInput extends BaseInput {
  const SubmitGuessVoteInput({
    required this.proposalId,
    required this.agree,
    required this.sessionId,
    required this.roundIndex,
  });

  final String proposalId;
  final bool agree;
  final String sessionId;
  final int roundIndex;
}

@lazySingleton
class SubmitGuessVoteUseCase
    extends BaseFutureUseCase<SubmitGuessVoteInput, EmptyOutput> {
  const SubmitGuessVoteUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessVoteInput input) async {
    _repository.sendVote(
      proposalId: input.proposalId,
      agree: input.agree,
      sessionId: input.sessionId,
      roundIndex: input.roundIndex,
    );
    return const EmptyOutput();
  }
}

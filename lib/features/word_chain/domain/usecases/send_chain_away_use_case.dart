import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SendChainAwayInput extends BaseInput {
  const SendChainAwayInput({
    required this.sessionId,
    required this.awayId,
  });

  final String sessionId;
  final String awayId;
}

@lazySingleton
class SendChainAwayUseCase
    extends BaseFutureUseCase<SendChainAwayInput, EmptyOutput> {
  const SendChainAwayUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SendChainAwayInput input) async {
    _repository.sendAway(
      sessionId: input.sessionId,
      awayId: input.awayId,
    );
    return const EmptyOutput();
  }
}

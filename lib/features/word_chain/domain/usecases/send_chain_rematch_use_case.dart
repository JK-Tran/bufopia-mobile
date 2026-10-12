import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SendChainRematchInput extends BaseInput {
  const SendChainRematchInput(this.sessionId);

  final String sessionId;
}

@lazySingleton
class SendChainRematchUseCase
    extends BaseFutureUseCase<SendChainRematchInput, EmptyOutput> {
  const SendChainRematchUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SendChainRematchInput input) async {
    _repository.sendRematch(sessionId: input.sessionId);
    return const EmptyOutput();
  }
}

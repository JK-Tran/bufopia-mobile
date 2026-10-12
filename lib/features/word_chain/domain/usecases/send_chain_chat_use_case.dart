import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SendChainChatInput extends BaseInput {
  const SendChainChatInput(this.message);

  final String message;
}

@lazySingleton
class SendChainChatUseCase
    extends BaseFutureUseCase<SendChainChatInput, EmptyOutput> {
  const SendChainChatUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SendChainChatInput input) async {
    _repository.sendChat(input.message);
    return const EmptyOutput();
  }
}

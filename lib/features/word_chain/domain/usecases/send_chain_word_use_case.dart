import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SendChainWordInput extends BaseInput {
  const SendChainWordInput({
    required this.word,
    required this.turnId,
  });

  final String word;
  final int turnId;
}

@lazySingleton
class SendChainWordUseCase
    extends BaseFutureUseCase<SendChainWordInput, EmptyOutput> {
  const SendChainWordUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SendChainWordInput input) async {
    _repository.sendWord(word: input.word, turnId: input.turnId);
    return const EmptyOutput();
  }
}

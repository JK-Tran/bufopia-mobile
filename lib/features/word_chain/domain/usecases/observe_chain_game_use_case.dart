import 'package:bufopia/features/word_chain/domain/entities/chain_game_event.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ObserveChainGameUseCase
    extends BaseStreamUseCase<EmptyInput, ChainGameEvent> {
  const ObserveChainGameUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Stream<ChainGameEvent> buildUseCase(EmptyInput input) {
    return _repository.gameEventStream;
  }
}

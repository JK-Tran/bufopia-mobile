import 'package:bufopia/features/word_guess/domain/entities/game_event.dart';
import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ObserveGuessGameUseCase extends BaseStreamUseCase<EmptyInput, GameEvent> {
  const ObserveGuessGameUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Stream<GameEvent> buildUseCase(EmptyInput input) {
    return _repository.gameEventStream;
  }
}

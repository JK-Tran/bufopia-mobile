import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SubmitGuessReadyUseCase
    extends BaseFutureUseCase<EmptyInput, EmptyOutput> {
  const SubmitGuessReadyUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(EmptyInput input) async {
    _repository.sendToggleReady();
    return const EmptyOutput();
  }
}

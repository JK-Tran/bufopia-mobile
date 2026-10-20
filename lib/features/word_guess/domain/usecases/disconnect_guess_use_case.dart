import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DisconnectGuessUseCase
    extends BaseFutureUseCase<EmptyInput, EmptyOutput> {
  const DisconnectGuessUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(EmptyInput input) async {
    await _repository.disconnect();
    return const EmptyOutput();
  }
}

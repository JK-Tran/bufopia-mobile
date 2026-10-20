import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class SubmitGuessChatInput extends BaseInput {
  const SubmitGuessChatInput({required this.text});

  final String text;
}

@lazySingleton
class SubmitGuessChatUseCase
    extends BaseFutureUseCase<SubmitGuessChatInput, EmptyOutput> {
  const SubmitGuessChatUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(SubmitGuessChatInput input) async {
    _repository.sendChat(input.text);
    return const EmptyOutput();
  }
}

import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_practice_word_use_case.freezed.dart';

@freezed
abstract class SubmitPracticeWordInput extends BaseInput
    with _$SubmitPracticeWordInput {
  const factory SubmitPracticeWordInput({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
    String? bridgeWord,
  }) = _SubmitPracticeWordInput;

  const SubmitPracticeWordInput._();
}

@freezed
abstract class SubmitPracticeWordOutput extends BaseOutput
    with _$SubmitPracticeWordOutput {
  const factory SubmitPracticeWordOutput(Reward reward) =
      _SubmitPracticeWordOutput;

  const SubmitPracticeWordOutput._();
}

@lazySingleton
class SubmitPracticeWordUseCase
    extends
        BaseFutureUseCase<SubmitPracticeWordInput, SubmitPracticeWordOutput> {
  const SubmitPracticeWordUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<SubmitPracticeWordOutput> buildUseCase(
    SubmitPracticeWordInput input,
  ) async {
    final reward = await _repository.verifyPracticeWord(
      uid: input.uid,
      sessionId: input.sessionId,
      index: input.index,
      answer: input.answer,
      bridgeWord: input.bridgeWord,
    );
    return SubmitPracticeWordOutput(reward);
  }
}

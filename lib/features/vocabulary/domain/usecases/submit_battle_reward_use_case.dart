import 'package:bufopia/features/vocabulary/domain/entities/battle_reward.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_battle_reward_use_case.freezed.dart';

@freezed
abstract class SubmitBattleRewardInput extends BaseInput
    with _$SubmitBattleRewardInput {
  const factory SubmitBattleRewardInput({
    required String uid,
    required bool isWin,
    required int correctCount,
    required int points,
  }) = _SubmitBattleRewardInput;

  const SubmitBattleRewardInput._();
}

@freezed
abstract class SubmitBattleRewardOutput extends BaseOutput
    with _$SubmitBattleRewardOutput {
  const factory SubmitBattleRewardOutput({
    required BattleReward reward,
  }) = _SubmitBattleRewardOutput;

  const SubmitBattleRewardOutput._();
}

@lazySingleton
class SubmitBattleRewardUseCase
    extends
        BaseFutureUseCase<SubmitBattleRewardInput, SubmitBattleRewardOutput> {
  const SubmitBattleRewardUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<SubmitBattleRewardOutput> buildUseCase(
    SubmitBattleRewardInput input,
  ) async {
    final reward = await _repository.claimReward(
      uid: input.uid,
      isWin: input.isWin,
      correctCount: input.correctCount,
      points: input.points,
    );
    return SubmitBattleRewardOutput(reward: reward);
  }
}

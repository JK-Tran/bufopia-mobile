import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_reward_entity.freezed.dart';

@freezed
abstract class BattleRewardEntity with _$BattleRewardEntity {
  const factory BattleRewardEntity({
    @Default(true) bool success,
    @Default(0) int gainedXp,
    @Default(false) bool leveledUp,
    @Default(1) int oldLevel,
    @Default(1) int newLevel,
    @Default(false) bool streakIncreased,
    @Default(0) int streak,
    @Default(0) int winStreak,
    UserEntity? user,
  }) = _BattleRewardEntity;
}

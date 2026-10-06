import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_reward.freezed.dart';

@freezed
abstract class BattleReward with _$BattleReward {
  const factory BattleReward({
    @Default(true) bool success,
    @Default(0) int gainedXp,
    @Default(false) bool leveledUp,
    @Default(1) int oldLevel,
    @Default(1) int newLevel,
    @Default(false) bool streakIncreased,
    @Default(0) int streak,
    @Default(0) int winStreak,
    User? user,
  }) = _BattleReward;
}

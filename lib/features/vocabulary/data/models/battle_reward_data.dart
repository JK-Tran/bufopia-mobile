import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_reward_data.freezed.dart';
part 'battle_reward_data.g.dart';

@freezed
abstract class BattleRewardDataResponse with _$BattleRewardDataResponse {
  const factory BattleRewardDataResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'gainedXp') int? gainedXp,
    @JsonKey(name: 'leveledUp') bool? leveledUp,
    @JsonKey(name: 'oldLevel') int? oldLevel,
    @JsonKey(name: 'newLevel') int? newLevel,
    @JsonKey(name: 'streakIncreased') bool? streakIncreased,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'winStreak') int? winStreak,
    @JsonKey(name: 'user') UserData? user,
  }) = _BattleRewardDataResponse;

  const BattleRewardDataResponse._();

  factory BattleRewardDataResponse.fromJson(Map<String, dynamic> json) =>
      _$BattleRewardDataResponseFromJson(json);
}

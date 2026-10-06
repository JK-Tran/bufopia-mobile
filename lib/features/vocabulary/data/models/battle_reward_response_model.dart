import 'package:bufopia/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_reward_response_model.freezed.dart';
part 'battle_reward_response_model.g.dart';

@freezed
abstract class BattleRewardResponseModel with _$BattleRewardResponseModel {
  const factory BattleRewardResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'gainedXp') int? gainedXp,
    @JsonKey(name: 'leveledUp') bool? leveledUp,
    @JsonKey(name: 'oldLevel') int? oldLevel,
    @JsonKey(name: 'newLevel') int? newLevel,
    @JsonKey(name: 'streakIncreased') bool? streakIncreased,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'winStreak') int? winStreak,
    @JsonKey(name: 'user') UserModel? user,
  }) = _BattleRewardResponseModel;

  const BattleRewardResponseModel._();

  factory BattleRewardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BattleRewardResponseModelFromJson(json);
}

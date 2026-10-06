// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_reward_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleRewardResponseModel _$BattleRewardResponseModelFromJson(
  Map<String, dynamic> json,
) => _BattleRewardResponseModel(
  success: json['success'] as bool?,
  gainedXp: (json['gainedXp'] as num?)?.toInt(),
  leveledUp: json['leveledUp'] as bool?,
  oldLevel: (json['oldLevel'] as num?)?.toInt(),
  newLevel: (json['newLevel'] as num?)?.toInt(),
  streakIncreased: json['streakIncreased'] as bool?,
  streak: (json['streak'] as num?)?.toInt(),
  winStreak: (json['winStreak'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BattleRewardResponseModelToJson(
  _BattleRewardResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'gainedXp': instance.gainedXp,
  'leveledUp': instance.leveledUp,
  'oldLevel': instance.oldLevel,
  'newLevel': instance.newLevel,
  'streakIncreased': instance.streakIncreased,
  'streak': instance.streak,
  'winStreak': instance.winStreak,
  'user': instance.user,
};

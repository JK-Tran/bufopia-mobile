// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_reward_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleRewardDataResponse _$BattleRewardDataResponseFromJson(
  Map<String, dynamic> json,
) => _BattleRewardDataResponse(
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
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BattleRewardDataResponseToJson(
  _BattleRewardDataResponse instance,
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

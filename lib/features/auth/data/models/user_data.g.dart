// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  uid: json['uid'] as String,
  displayName: json['display_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  xp: (json['xp'] as num?)?.toInt(),
  level: (json['level'] as num?)?.toInt(),
  streak: (json['streak'] as num?)?.toInt(),
  winStreak: (json['win_streak'] as num?)?.toInt(),
  lastActiveDate: json['last_active_date'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  currentLevelXp: (json['currentLevelXp'] as num?)?.toInt(),
  neededForNext: (json['neededForNext'] as num?)?.toInt(),
  progressPercent: (json['progressPercent'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'uid': instance.uid,
  'display_name': instance.displayName,
  'avatar_url': instance.avatarUrl,
  'xp': instance.xp,
  'level': instance.level,
  'streak': instance.streak,
  'win_streak': instance.winStreak,
  'last_active_date': instance.lastActiveDate,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'currentLevelXp': instance.currentLevelXp,
  'neededForNext': instance.neededForNext,
  'progressPercent': instance.progressPercent,
};

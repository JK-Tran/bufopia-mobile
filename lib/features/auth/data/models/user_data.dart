import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'xp') int? xp,
    @JsonKey(name: 'level') int? level,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'win_streak') int? winStreak,
    @JsonKey(name: 'last_active_date') String? lastActiveDate,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'currentLevelXp') int? currentLevelXp,
    @JsonKey(name: 'neededForNext') int? neededForNext,
    @JsonKey(name: 'progressPercent') double? progressPercent,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
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
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

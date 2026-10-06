import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String avatarUrl,
    @Default(0) int xp,
    @Default(1) int level,
    @Default(0) int streak,
    @Default(0) int winStreak,
    @Default('') String lastActiveDate,
    @Default(0) int currentLevelXp,
    @Default(100) int neededForNext,
    @Default(0.0) double progressPercent,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
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
  }) = _UserEntity;
}

import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:bufopia/shared/utils/date_time_utils.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDataMapper extends BaseDataMapper<UserData, User> {
  const UserDataMapper();

  @override
  User mapToEntity(UserData? data) {
    return User(
      uid: data?.uid ?? '',
      displayName: data?.displayName ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      xp: data?.xp ?? 0,
      level: data?.level ?? 1,
      streak: data?.streak ?? 0,
      winStreak: data?.winStreak ?? 0,
      lastActiveDate: data?.lastActiveDate ?? '',
      currentLevelXp: data?.currentLevelXp ?? 0,
      neededForNext: data?.neededForNext ?? 100,
      progressPercent: data?.progressPercent ?? 0.0,
      createdAt: DateTimeUtils.parseOccurredAt(data?.createdAt),
      updatedAt: DateTimeUtils.parseOccurredAt(data?.updatedAt),
    );
  }

  UserData mapToData(User? entity) {
    return UserData(
      uid: entity?.uid ?? '',
      displayName: entity?.displayName,
      avatarUrl: entity?.avatarUrl,
      xp: entity?.xp,
      level: entity?.level,
      streak: entity?.streak,
      winStreak: entity?.winStreak,
      lastActiveDate: entity?.lastActiveDate,
      currentLevelXp: entity?.currentLevelXp,
      neededForNext: entity?.neededForNext,
      progressPercent: entity?.progressPercent,
      createdAt: entity?.createdAt?.toIso8601String(),
      updatedAt: entity?.updatedAt?.toIso8601String(),
    );
  }
}

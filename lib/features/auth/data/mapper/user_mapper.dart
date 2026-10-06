import 'package:bufopia/features/auth/data/models/user_model.dart';
import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:bufopia/shared/utils/date_time_utils.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserMapper extends BaseDataMapper<UserModel, UserEntity> {
  const UserMapper();

  @override
  UserEntity mapToEntity(UserModel? data) {
    return UserEntity(
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

  UserModel mapToData(UserEntity? entity) {
    return UserModel(
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

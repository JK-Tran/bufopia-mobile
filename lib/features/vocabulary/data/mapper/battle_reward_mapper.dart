import 'package:bufopia/features/auth/data/mapper/user_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_reward_response_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleRewardMapper
    extends BaseDataMapper<BattleRewardResponseModel, BattleRewardEntity> {
  const BattleRewardMapper(this._userMapper);

  final UserMapper _userMapper;

  @override
  BattleRewardEntity mapToEntity(BattleRewardResponseModel? data) {
    return BattleRewardEntity(
      success: data?.success ?? true,
      gainedXp: data?.gainedXp ?? 0,
      leveledUp: data?.leveledUp ?? false,
      oldLevel: data?.oldLevel ?? 1,
      newLevel: data?.newLevel ?? 1,
      streakIncreased: data?.streakIncreased ?? false,
      streak: data?.streak ?? 0,
      winStreak: data?.winStreak ?? 0,
      user: _userMapper.mapToEntity(data?.user),
    );
  }
}

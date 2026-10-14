import 'package:bufopia/features/auth/data/mapper/user_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/reward_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class RewardDataMapper extends BaseDataMapper<RewardData, Reward> {
  const RewardDataMapper(this._userMapper);

  final UserDataMapper _userMapper;

  @override
  Reward mapToEntity(RewardData? data) {
    return Reward(
      gainedXp: data?.gainedXp ?? 0,
      streak: data?.streak ?? 0,
      user: _userMapper.mapToEntity(data!.user),
    );
  }
}

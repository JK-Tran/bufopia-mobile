import 'package:bufopia/features/leaderboard/data/mapper/leaderboard_player_mapper.dart';
import 'package:bufopia/features/leaderboard/data/models/leaderboard_response_model.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class LeaderboardMapper
    extends BaseDataMapper<LeaderboardResponseModel, LeaderboardEntity> {
  const LeaderboardMapper(this._playerMapper);

  final LeaderboardPlayerMapper _playerMapper;

  @override
  LeaderboardEntity mapToEntity(LeaderboardResponseModel? data) {
    return LeaderboardEntity(
      metric: data?.metric ?? 'xp',
      players: _playerMapper.mapToListEntity(data?.players),
    );
  }
}

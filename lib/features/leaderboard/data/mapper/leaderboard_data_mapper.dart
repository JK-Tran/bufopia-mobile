import 'package:bufopia/features/leaderboard/data/mapper/leaderboard_player_data_mapper.dart';
import 'package:bufopia/features/leaderboard/data/models/leaderboard_data.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class LeaderboardDataMapper
    extends BaseDataMapper<LeaderboardDataResponse, Leaderboard> {
  const LeaderboardDataMapper(this._playerMapper);

  final LeaderboardPlayerDataMapper _playerMapper;

  @override
  Leaderboard mapToEntity(LeaderboardDataResponse? data) {
    return Leaderboard(
      metric: data?.metric ?? 'xp',
      players: _playerMapper.mapToListEntity(data?.players),
    );
  }
}

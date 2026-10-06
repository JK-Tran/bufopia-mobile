import 'package:bufopia/features/leaderboard/data/datasources/leaderboard_data_source.dart';
import 'package:bufopia/features/leaderboard/data/mapper/leaderboard_data_mapper.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/features/leaderboard/domain/repositories/leaderboard_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  LeaderboardRepositoryImpl(this._dataSource, this._leaderboardMapper);

  final LeaderboardDataSource _dataSource;
  final LeaderboardDataMapper _leaderboardMapper;

  @override
  Future<Leaderboard> getLeaderboard({
    String metric = 'xp',
    int limit = 50,
  }) async {
    final response = await _dataSource.getLeaderboard(
      metric: metric,
      limit: limit,
    );
    return _leaderboardMapper.mapToEntity(response);
  }
}

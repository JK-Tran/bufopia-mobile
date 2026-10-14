import 'package:bufopia/features/leaderboard/data/models/leaderboard_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LeaderboardDataSource {
  LeaderboardDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  Future<LeaderboardDataResponse?> getLeaderboard({
    String metric = 'xp',
    int limit = 50,
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/leaderboard',
      queryParameters: {
        'metric': metric,
        'limit': limit,
      },
      decoder: (data) => LeaderboardDataResponse.fromJson(data! as JSON),
    );
  }
}

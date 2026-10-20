import 'package:bufopia/features/word_guess/data/models/match_info_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/match_info.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class MatchInfoDataMapper extends BaseDataMapper<MatchInfoData, MatchInfo> {
  const MatchInfoDataMapper();

  @override
  MatchInfo mapToEntity(MatchInfoData? data) {
    return MatchInfo(
      matchId: data?.matchId ?? '',
      roomCode: data?.roomCode ?? '',
      playerIndex: data?.playerIndex ?? 0,
      rivalName: data?.rivalName ?? '',
      rivalAvatar: data?.rivalAvatar ?? '',
      topicId: data?.topicId ?? '',
      game: data?.game ?? 'guess',
    );
  }
}

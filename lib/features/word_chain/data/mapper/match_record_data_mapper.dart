import 'package:bufopia/features/word_chain/data/mapper/game_state_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/match_record_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/match_record.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class MatchRecordDataMapper
    extends BaseDataMapper<MatchRecordData, MatchRecord> {
  const MatchRecordDataMapper(this._gameStateMapper);

  final GameStateDataMapper _gameStateMapper;

  @override
  MatchRecord mapToEntity(MatchRecordData? data) {
    return MatchRecord(
      roomCode: data?.roomCode ?? '',
      playerIndex: data?.playerIndex ?? 0,
      rivalName: data?.rivalName ?? '',
      rivalAvatar: data?.rivalAvatar ?? '',
      relaxed: data?.relaxed ?? false,
      state: _gameStateMapper.mapToEntity(data!.state),
    );
  }
}

import 'package:bufopia/features/word_chain/data/mapper/turn_message_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/game_state_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/game_state.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class GameStateDataMapper extends BaseDataMapper<GameStateData, GameState> {
  const GameStateDataMapper(this._messageMapper);

  final TurnMessageDataMapper _messageMapper;

  @override
  GameState mapToEntity(GameStateData? data) {
    return GameState(
      status: data?.status ?? 'waiting',
      turn: data?.turn ?? 0,
      turnId: data?.turnId ?? 0,
      turnStartedAt: data?.turnStartedAt ?? 0,
      deadline: data?.deadline,
      relaxed: data?.relaxed ?? false,
      lives: data?.lives ?? const [3, 3],
      mistakes: data?.mistakes ?? const [0, 0],
      awayCounts: data?.awayCounts ?? const [0, 0],
      requiredLetter: data?.requiredLetter ?? '',
      usedWords: data?.usedWords ?? const [],
      messages: _messageMapper.mapToListEntity(data?.messages),
      winner: data?.winner,
      finishReason: data?.finishReason,
      revision: data?.revision ?? 0,
    );
  }
}

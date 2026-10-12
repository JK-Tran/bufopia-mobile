import 'package:bufopia/features/word_chain/domain/entities/game_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_state_update.freezed.dart';

@freezed
abstract class ChainStateUpdate with _$ChainStateUpdate {
  const factory ChainStateUpdate({
    required int playerIndex,
    required String roomCode,
    required GameState state,
    String? rivalName,
    String? rivalAvatar,
    int? serverNow,
    String? sessionId,
  }) = _ChainStateUpdate;
}

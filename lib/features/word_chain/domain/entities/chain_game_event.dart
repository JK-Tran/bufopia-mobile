import 'package:bufopia/features/word_chain/domain/entities/chain_state_update.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_game_event.freezed.dart';

@freezed
abstract class ChainGameEvent with _$ChainGameEvent {
  const factory ChainGameEvent.state(ChainStateUpdate update) =
      _ChainGameEventState;
  const factory ChainGameEvent.wordChecking({required bool isChecking}) =
      _ChainGameEventWordChecking;
  const factory ChainGameEvent.wordRejected({required int penalty}) =
      _ChainGameEventWordRejected;
  const factory ChainGameEvent.reward({
    @Default(Reward()) Reward reward,
    String? sessionId,
  }) = _ChainGameEventReward;
  const factory ChainGameEvent.rematchWaiting({
    @Default([]) List<bool> readyPlayers,
  }) = _ChainGameEventRematchWaiting;
  const factory ChainGameEvent.opponentLeft([String? message]) =
      _ChainGameEventOpponentLeft;
  const factory ChainGameEvent.connection(SocketConnectionState state) =
      _ChainGameEventConnection;
  const factory ChainGameEvent.error(String message) = _ChainGameEventError;
}

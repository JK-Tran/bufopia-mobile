import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_player.freezed.dart';

@freezed
abstract class RoomPlayer with _$RoomPlayer {
  const factory RoomPlayer({
    @Default('') String uid,
    @Default('') String name,
    @Default('') String avatar,
    @Default(0) int score,
    @Default(0) int foundCount,
    @Default(false) bool isReady,
    @Default(false) bool isHost,
    @Default(false) bool ended,
    @Default(0) int playerIndex,
    @Default(true) bool isOnline,
  }) = _RoomPlayer;

  const RoomPlayer._();

  int get effectiveScore => foundCount > 0 ? foundCount : score;
}

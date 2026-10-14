import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_info.freezed.dart';

@freezed
abstract class RoomInfo with _$RoomInfo {
  const factory RoomInfo({
    @Default('') String roomCode,
    @Default('') String matchId,
    @Default('') String hostUid,
    @Default('') String hostName,
    @Default('daily') String topicId,
    @Default('waiting') String status,
    @Default([]) List<RoomPlayer> players,
  }) = _RoomInfo;
}

@freezed
abstract class RoomPlayer with _$RoomPlayer {
  const factory RoomPlayer({
    @Default('') String uid,
    @Default('') String name,
    String? avatar,
  }) = _RoomPlayer;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_info_entity.freezed.dart';

@freezed
abstract class RoomInfoEntity with _$RoomInfoEntity {
  const factory RoomInfoEntity({
    @Default('') String roomCode,
    @Default('') String matchId,
    @Default('') String hostUid,
    @Default('') String hostName,
    @Default('daily') String topicId,
    @Default('waiting') String status,
    @Default([]) List<RoomPlayerEntity> players,
  }) = _RoomInfoEntity;
}

@freezed
abstract class RoomPlayerEntity with _$RoomPlayerEntity {
  const factory RoomPlayerEntity({
    @Default('') String uid,
    @Default('') String name,
    String? avatar,
  }) = _RoomPlayerEntity;
}

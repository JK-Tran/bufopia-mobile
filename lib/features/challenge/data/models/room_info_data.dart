import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_info_data.freezed.dart';
part 'room_info_data.g.dart';

@freezed
abstract class RoomInfoData with _$RoomInfoData {
  const factory RoomInfoData({
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'matchId') String? matchId,
    @JsonKey(name: 'hostUid') String? hostUid,
    @JsonKey(name: 'hostName') String? hostName,
    @JsonKey(name: 'topicId') String? topicId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'players') List<RoomPlayerData>? players,
  }) = _RoomInfoData;

  const RoomInfoData._();

  factory RoomInfoData.fromJson(Map<String, dynamic> json) =>
      _$RoomInfoDataFromJson(json);
}

@freezed
abstract class RoomPlayerData with _$RoomPlayerData {
  const factory RoomPlayerData({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _RoomPlayerData;

  const RoomPlayerData._();

  factory RoomPlayerData.fromJson(Map<String, dynamic> json) =>
      _$RoomPlayerDataFromJson(json);
}

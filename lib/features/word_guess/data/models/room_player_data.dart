import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_player_data.freezed.dart';
part 'room_player_data.g.dart';

@freezed
abstract class RoomPlayerData with _$RoomPlayerData {
  const factory RoomPlayerData({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'foundCount') int? foundCount,
    @JsonKey(name: 'isReady') bool? isReady,
    @JsonKey(name: 'isHost') bool? isHost,
    @JsonKey(name: 'ended') bool? ended,
    @JsonKey(name: 'playerIndex') int? playerIndex,
  }) = _RoomPlayerData;

  const RoomPlayerData._();

  factory RoomPlayerData.fromJson(Map<String, dynamic> json) =>
      _$RoomPlayerDataFromJson(json);
}

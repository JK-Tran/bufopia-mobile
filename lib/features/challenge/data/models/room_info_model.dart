import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_info_model.freezed.dart';
part 'room_info_model.g.dart';

@freezed
abstract class RoomInfoModel with _$RoomInfoModel {
  const factory RoomInfoModel({
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'matchId') String? matchId,
    @JsonKey(name: 'hostUid') String? hostUid,
    @JsonKey(name: 'hostName') String? hostName,
    @JsonKey(name: 'topicId') String? topicId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'players') List<RoomPlayerModel>? players,
  }) = _RoomInfoModel;

  const RoomInfoModel._();

  factory RoomInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RoomInfoModelFromJson(json);
}

@freezed
abstract class RoomPlayerModel with _$RoomPlayerModel {
  const factory RoomPlayerModel({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _RoomPlayerModel;

  const RoomPlayerModel._();

  factory RoomPlayerModel.fromJson(Map<String, dynamic> json) =>
      _$RoomPlayerModelFromJson(json);
}

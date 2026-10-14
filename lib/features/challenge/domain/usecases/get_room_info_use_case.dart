import 'package:bufopia/features/challenge/domain/entities/room_info.dart';
import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_room_info_use_case.freezed.dart';

@freezed
abstract class GetRoomInfoInput extends BaseInput with _$GetRoomInfoInput {
  const factory GetRoomInfoInput({
    required String roomCode,
  }) = _GetRoomInfoInput;

  const GetRoomInfoInput._();
}

@freezed
abstract class GetRoomInfoOutput extends BaseOutput with _$GetRoomInfoOutput {
  const factory GetRoomInfoOutput({
    RoomInfo? roomInfo,
  }) = _GetRoomInfoOutput;

  const GetRoomInfoOutput._();
}

@lazySingleton
class GetRoomInfoUseCase
    extends BaseFutureUseCase<GetRoomInfoInput, GetRoomInfoOutput> {
  const GetRoomInfoUseCase(this._repository);

  final ChallengeRoomRepository _repository;

  @override
  Future<GetRoomInfoOutput> buildUseCase(GetRoomInfoInput input) async {
    final roomInfo = await _repository.getRoomInfo(roomCode: input.roomCode);
    return GetRoomInfoOutput(roomInfo: roomInfo);
  }
}

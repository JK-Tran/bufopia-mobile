import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_guess_room_lookup_use_case.freezed.dart';

@freezed
abstract class GetGuessRoomLookupInput extends BaseInput
    with _$GetGuessRoomLookupInput {
  const factory GetGuessRoomLookupInput({
    required String roomCode,
    required String uid,
    String? token,
  }) = _GetGuessRoomLookupInput;

  const GetGuessRoomLookupInput._();
}

@freezed
abstract class GetGuessRoomLookupOutput extends BaseOutput
    with _$GetGuessRoomLookupOutput {
  const factory GetGuessRoomLookupOutput({
    @Default(false) bool isJoinable,
    String? reason,
    Map<String, dynamic>? rawResponse,
  }) = _GetGuessRoomLookupOutput;

  const GetGuessRoomLookupOutput._();
}

@lazySingleton
class GetGuessRoomLookupUseCase
    extends
        BaseFutureUseCase<GetGuessRoomLookupInput, GetGuessRoomLookupOutput> {
  const GetGuessRoomLookupUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<GetGuessRoomLookupOutput> buildUseCase(
    GetGuessRoomLookupInput input,
  ) async {
    final response = await _repository.lookupRoom(
      roomCode: input.roomCode,
      uid: input.uid,
      token: input.token,
    );

    if (response == null) {
      return const GetGuessRoomLookupOutput(
        reason: 'Không tìm thấy thông tin phòng.',
      );
    }

    final matches = response['matches'] as List<dynamic>?;
    if (matches != null && matches.isNotEmpty) {
      final firstMatch = matches.first as Map<String, dynamic>?;
      final joinable = firstMatch?['joinable'] as bool? ?? false;
      final reason = firstMatch?['reason'] as String?;
      return GetGuessRoomLookupOutput(
        isJoinable: joinable,
        reason: reason,
        rawResponse: response,
      );
    }

    return GetGuessRoomLookupOutput(
      isJoinable: true,
      rawResponse: response,
    );
  }
}

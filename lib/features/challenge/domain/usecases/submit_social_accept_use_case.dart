import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_social_accept_use_case.freezed.dart';

@freezed
abstract class SubmitSocialAcceptInput extends BaseInput
    with _$SubmitSocialAcceptInput {
  const factory SubmitSocialAcceptInput({
    required String uid,
    required String invitationId,
  }) = _SubmitSocialAcceptInput;

  const SubmitSocialAcceptInput._();
}

@freezed
abstract class SubmitSocialAcceptOutput extends BaseOutput
    with _$SubmitSocialAcceptOutput {
  const factory SubmitSocialAcceptOutput({
    String? roomCode,
  }) = _SubmitSocialAcceptOutput;

  const SubmitSocialAcceptOutput._();
}

@lazySingleton
class SubmitSocialAcceptUseCase
    extends
        BaseFutureUseCase<SubmitSocialAcceptInput, SubmitSocialAcceptOutput> {
  const SubmitSocialAcceptUseCase(this._repository);

  final ChallengeRoomRepository _repository;

  @override
  Future<SubmitSocialAcceptOutput> buildUseCase(
    SubmitSocialAcceptInput input,
  ) async {
    final roomCode = await _repository.submitSocialAccept(
      uid: input.uid,
      invitationId: input.invitationId,
    );
    return SubmitSocialAcceptOutput(roomCode: roomCode);
  }
}

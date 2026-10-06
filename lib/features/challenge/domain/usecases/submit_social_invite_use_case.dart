import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_social_invite_use_case.freezed.dart';

@freezed
abstract class SubmitSocialInviteInput extends BaseInput
    with _$SubmitSocialInviteInput {
  const factory SubmitSocialInviteInput({
    required String uid,
    required String targetUid,
    required String roomCode,
  }) = _SubmitSocialInviteInput;

  const SubmitSocialInviteInput._();
}

@freezed
abstract class SubmitSocialInviteOutput extends BaseOutput
    with _$SubmitSocialInviteOutput {
  const factory SubmitSocialInviteOutput({
    @Default(true) bool success,
  }) = _SubmitSocialInviteOutput;

  const SubmitSocialInviteOutput._();
}

@lazySingleton
class SubmitSocialInviteUseCase
    extends
        BaseFutureUseCase<SubmitSocialInviteInput, SubmitSocialInviteOutput> {
  const SubmitSocialInviteUseCase(this._repository);

  final ChallengeRoomRepository _repository;

  @override
  Future<SubmitSocialInviteOutput> buildUseCase(
    SubmitSocialInviteInput input,
  ) async {
    final success = await _repository.submitSocialInvite(
      uid: input.uid,
      targetUid: input.targetUid,
      roomCode: input.roomCode,
    );
    return SubmitSocialInviteOutput(success: success);
  }
}

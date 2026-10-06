import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_social_dismiss_use_case.freezed.dart';

@freezed
abstract class DeleteSocialDismissInput extends BaseInput
    with _$DeleteSocialDismissInput {
  const factory DeleteSocialDismissInput({
    required String uid,
    required String invitationId,
  }) = _DeleteSocialDismissInput;

  const DeleteSocialDismissInput._();
}

@freezed
abstract class DeleteSocialDismissOutput extends BaseOutput
    with _$DeleteSocialDismissOutput {
  const factory DeleteSocialDismissOutput({
    @Default(true) bool success,
  }) = _DeleteSocialDismissOutput;

  const DeleteSocialDismissOutput._();
}

@lazySingleton
class DeleteSocialDismissUseCase
    extends
        BaseFutureUseCase<DeleteSocialDismissInput, DeleteSocialDismissOutput> {
  const DeleteSocialDismissUseCase(this._repository);

  final ChallengeRoomRepository _repository;

  @override
  Future<DeleteSocialDismissOutput> buildUseCase(
    DeleteSocialDismissInput input,
  ) async {
    final success = await _repository.deleteSocialDismiss(
      uid: input.uid,
      invitationId: input.invitationId,
    );
    return DeleteSocialDismissOutput(success: success);
  }
}

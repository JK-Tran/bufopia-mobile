import 'package:bufopia/features/challenge/domain/entities/social_state.dart';
import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_social_state_use_case.freezed.dart';

@freezed
abstract class GetSocialStateInput extends BaseInput
    with _$GetSocialStateInput {
  const factory GetSocialStateInput({
    required String uid,
  }) = _GetSocialStateInput;

  const GetSocialStateInput._();
}

@freezed
abstract class GetSocialStateOutput extends BaseOutput
    with _$GetSocialStateOutput {
  const factory GetSocialStateOutput({
    required SocialState socialState,
  }) = _GetSocialStateOutput;

  const GetSocialStateOutput._();
}

@lazySingleton
class GetSocialStateUseCase
    extends BaseFutureUseCase<GetSocialStateInput, GetSocialStateOutput> {
  const GetSocialStateUseCase(this._repository);

  final ChallengeRoomRepository _repository;

  @override
  Future<GetSocialStateOutput> buildUseCase(GetSocialStateInput input) async {
    final socialState = await _repository.getSocialState(uid: input.uid);
    return GetSocialStateOutput(socialState: socialState);
  }
}

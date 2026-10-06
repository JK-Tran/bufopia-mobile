import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_user_profile_use_case.freezed.dart';

@freezed
abstract class UpdateUserProfileInput extends BaseInput
    with _$UpdateUserProfileInput {
  const factory UpdateUserProfileInput({
    required String uid,
    required String displayName,
    String? avatarUrl,
  }) = _UpdateUserProfileInput;

  const UpdateUserProfileInput._();
}

@freezed
abstract class UpdateUserProfileOutput extends BaseOutput
    with _$UpdateUserProfileOutput {
  const factory UpdateUserProfileOutput(User? user) = _UpdateUserProfileOutput;

  const UpdateUserProfileOutput._();
}

@lazySingleton
class UpdateUserProfileUseCase
    extends BaseFutureUseCase<UpdateUserProfileInput, UpdateUserProfileOutput> {
  const UpdateUserProfileUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<UpdateUserProfileOutput> buildUseCase(
    UpdateUserProfileInput input,
  ) async {
    final user = await _repository.updateUserProfile(
      uid: input.uid,
      displayName: input.displayName,
      avatarUrl: input.avatarUrl,
    );
    return UpdateUserProfileOutput(user);
  }
}

import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_info_use_case.freezed.dart';

// ─── Input ─────────────────────────────────────────────────────────

@freezed
abstract class GetUserInfoInput extends BaseInput with _$GetUserInfoInput {
  const factory GetUserInfoInput({
    required String uid,
  }) = _GetUserInfoInput;

  const GetUserInfoInput._();
}

// ─── Output ────────────────────────────────────────────────────────

@freezed
abstract class GetUserInfoOutput extends BaseOutput with _$GetUserInfoOutput {
  const factory GetUserInfoOutput(User? user) = _GetUserInfoOutput;

  const GetUserInfoOutput._();
}

// ─── UseCase ───────────────────────────────────────────────────────

@lazySingleton
class GetUserInfoUseCase
    extends BaseFutureUseCase<GetUserInfoInput, GetUserInfoOutput> {
  const GetUserInfoUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<GetUserInfoOutput> buildUseCase(GetUserInfoInput input) async {
    final user = await _repository.getUserInfo(uid: input.uid);
    return GetUserInfoOutput(user);
  }
}

import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'import_account_use_case.freezed.dart';

@freezed
abstract class ImportAccountInput extends BaseInput with _$ImportAccountInput {
  const factory ImportAccountInput({
    required String idToken,
    required String sourceUid,
    String? sourceToken,
    String? action,
    String? displayName,
    @Default(0) int xp,
    @Default([]) List<Map<String, dynamic>> profiles,
  }) = _ImportAccountInput;

  const ImportAccountInput._();
}

@freezed
abstract class ImportAccountOutput extends BaseOutput
    with _$ImportAccountOutput {
  const factory ImportAccountOutput(AccountImportResult? result) =
      _ImportAccountOutput;

  const ImportAccountOutput._();
}

@lazySingleton
class ImportAccountUseCase
    extends BaseFutureUseCase<ImportAccountInput, ImportAccountOutput> {
  const ImportAccountUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<ImportAccountOutput> buildUseCase(ImportAccountInput input) async {
    final result = await _repository.importAccount(
      idToken: input.idToken,
      sourceUid: input.sourceUid,
      sourceToken: input.sourceToken,
      action: input.action,
      displayName: input.displayName,
      xp: input.xp,
      profiles: input.profiles,
    );
    return ImportAccountOutput(result);
  }
}

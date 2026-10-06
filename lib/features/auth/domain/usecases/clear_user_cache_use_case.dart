import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClearUserCacheUseCase {
  const ClearUserCacheUseCase(this._repository);

  final AuthRepository _repository;

  Future<void> execute() => _repository.clearCurrentUserData();
}

import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveCurrentUserUseCase {
  const SaveCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  Future<bool> execute(UserEntity user) => _repository.saveCurrentUser(user);
}

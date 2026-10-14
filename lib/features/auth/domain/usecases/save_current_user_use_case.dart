import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveCurrentUserUseCase {
  const SaveCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  Future<bool> execute(User user) => _repository.saveCurrentUser(user);
}

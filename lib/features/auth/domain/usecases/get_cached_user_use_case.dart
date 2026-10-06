import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCachedUserUseCase {
  const GetCachedUserUseCase(this._repository);

  final AuthRepository _repository;

  User? execute() => _repository.getCurrentUser();
}

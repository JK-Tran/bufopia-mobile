import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCachedUserUseCase {
  const GetCachedUserUseCase(this._repository);

  final AuthRepository _repository;

  UserEntity? execute() => _repository.getCurrentUser();
}

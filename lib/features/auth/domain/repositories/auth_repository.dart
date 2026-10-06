import 'package:bufopia/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> getUserInfo({required String uid});
  Future<UserEntity> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
  });
  UserEntity? getCurrentUser();
  Future<bool> saveCurrentUser(UserEntity user);
  Future<void> clearCurrentUserData();
}

import 'package:bufopia/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> getUserInfo({required String uid});
  Future<User> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
  });
  User? getCurrentUser();
  Future<bool> saveCurrentUser(User user);
  Future<void> clearCurrentUserData();
}

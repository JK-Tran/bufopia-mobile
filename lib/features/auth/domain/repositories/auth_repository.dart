import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> getUserInfo({required String uid});
  Future<User> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
    bool termsAccepted = true,
  });
  User? getCurrentUser();
  Future<bool> saveCurrentUser(User user);
  Future<void> clearCurrentUserData();

  /// Lấy vé kết nối WebSocket tạm thời 30 giây
  Future<String?> getSocketTicket({
    required String uid,
    required String path,
    String? token,
  });

  /// Chuyển đổi / gộp tiến độ tài khoản khách lên Google (POST /api/account/import)
  Future<AccountImportResult?> importAccount({
    required String idToken,
    required String sourceUid,
    String? sourceToken,
    String? action,
    String? displayName,
    int xp = 0,
    List<Map<String, dynamic>> profiles = const [],
  });
}

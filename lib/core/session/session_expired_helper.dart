/// Khi 401 + refresh token thất bại, AuthInterceptor gọi [trigger].
abstract final class SessionExpiredHelper {
  /// Gắn callback (gọi từ nơi có GoRouter, thường trong buildRouter).
  static void Function()? navigateToLogin;

  /// AuthInterceptor gọi khi session hết hạn (đã clear auth, cần về login).
  static void trigger() {
    navigateToLogin?.call();
  }
}

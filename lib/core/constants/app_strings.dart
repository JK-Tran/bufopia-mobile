/// Chuỗi hiển thị dùng chung (chưa i18n). Sau có thể thay bằng l10n.
abstract final class AppStrings {
  AppStrings._();

  // Common
  static const String ok = 'OK';
  static const String cancel = 'Cancel';
  static const String retry = 'Retry';
  static const String save = 'Save';
  static const String delete = 'Delete';
  static const String loading = 'Loading...';
  static const String error = 'Error';
  static const String noData = 'No data';

  // Auth
  static const String login = 'Login';
  static const String register = 'Register';
  static const String logout = 'Logout';
  static const String forgotPassword = 'Forgot password?';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String confirmPassword = 'Confirm password';

  // Errors
  static const String networkError = 'Network error. Please try again.';
  static const String serverError = 'Server error. Please try again later.';
  static const String unknownError = 'Something went wrong.';
}

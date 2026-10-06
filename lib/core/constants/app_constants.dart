/// Hằng số dùng chung toàn app.
/// Quy tắc: file snake_case, class PascalCase.
abstract final class AppConstants {
  AppConstants._();

  static const String appName = 'LocLens';

  /// Breakpoints responsive (logical pixels)
  static const double breakpointPhone = 600;
  static const double breakpointTablet = 900;
  static const double breakpointDesktop = 1200;

  /// Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration connectTimeout = Duration(seconds: 15);
}

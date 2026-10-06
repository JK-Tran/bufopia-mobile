import 'package:bufopia/shared/constants/url_constants.dart';

/// REST paths (base URL: [UrlConstants.appApiBaseUrl]).
abstract final class ApiEndpoints {
  ApiEndpoints._();

  static String get baseApi => UrlConstants.appApiBaseUrl;

  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh-token';
  static const String forgotPassword = '/auth/forgot-password';
  static const String profile = '/auth/profile';

  /// Cloudflare R2 via Cloud Functions (URL tuyệt đối).
  static const String r2 =
      'https://us-central1-tanlu-ceab0.cloudfunctions.net/r2';
}

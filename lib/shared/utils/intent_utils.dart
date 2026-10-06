import 'dart:io';

import 'package:url_launcher/url_launcher_string.dart';

class IntentUtils {
  static Future<bool> openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    return await canLaunchUrlString(url) &&
        await launchUrlString(
          url,
          mode: inApp
              ? LaunchMode.inAppWebView
              : LaunchMode.externalApplication,
        );
  }

  static Future<bool> isAppInstalled({
    required String androidPackageName,
    required String iosUrlScheme,
  }) async {
    // Use url_launcher to check if app can be launched
    final urlScheme = Platform.isAndroid
        ? 'package:$androidPackageName'
        : iosUrlScheme;
    return canLaunchUrlString(urlScheme);
  }

  static Future<void> launchApp({
    required String androidPackageName,
    required String iosUrlScheme,
    required String appStoreLink,
    required String? link,
  }) async {
    // Try to launch the app
    final canLaunch = link != null && await canLaunchUrlString(link);

    if (canLaunch) {
      await launchUrlString(link);
    } else {
      // Open app store if app is not installed or link is null
      if (await canLaunchUrlString(appStoreLink)) {
        await launchUrlString(
          appStoreLink,
          mode: LaunchMode.externalApplication,
        );
      }
    }
  }
}

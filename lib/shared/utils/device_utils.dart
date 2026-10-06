import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:bufopia/core/constants/device_constants.dart';
import 'package:bufopia/shared/model/shared_enum.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceUtils {
  const DeviceUtils._();
  static final DeviceType deviceType = _getDeviceType();

  static Future<String> getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    const androidIdPlugin = AndroidId();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;

      return iosDeviceInfo.identifierForVendor ?? '';
    } else {
      final androidDeviceInfo = await androidIdPlugin.getId();

      return androidDeviceInfo ?? '';
    }
  }

  static Future<String> getDeviceModelName() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;

      return iosInfo.name;
    } else {
      final androidInfo = await deviceInfo.androidInfo;

      return '${androidInfo.brand} ${androidInfo.device}';
    }
  }

  static DeviceType _getDeviceType() {
    return MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.first,
            ).size.shortestSide <
            DeviceConstants.maxMobileWidthForDeviceType
        ? DeviceType.mobile
        : DeviceType.tablet;
  }
}

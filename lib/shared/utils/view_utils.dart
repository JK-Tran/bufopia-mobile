import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/shared/constants/duration_constants.dart';
import 'package:bufopia/shared/utils/object_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewUtils {
  const ViewUtils._();

  static void showAppToast(
    BuildContext context,
    String message, {
    AppToastType type = AppToastType.info,
    Duration? duration,
    Color? backgroundColor,
  }) {
    AppToast.show(
      context,
      message: message,
      type: type,
      duration: duration ?? DurationConstants.defaultSnackBarDuration,
    );
  }

  /// @deprecated Sử dụng [showAppToast] thay thế
  static void showAppSnackBar(
    BuildContext context,
    String message, {
    Duration? duration,
    Color? backgroundColor,
  }) {
    showAppToast(
      context,
      message,
      duration: duration,
      backgroundColor: backgroundColor,
    );
  }

  static void hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static Future<void> setPreferredOrientations(
    List<DeviceOrientation> orientations,
  ) {
    return SystemChrome.setPreferredOrientations(orientations);
  }

  /// set status bar color & navigation bar color
  static void setSystemUIOverlayStyle(
    SystemUiOverlayStyle systemUiOverlayStyle,
  ) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  static Offset? getWidgetPosition(GlobalKey globalKey) {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?).let(
      (it) => it.localToGlobal(Offset.zero),
    );
  }

  static Future<double?> getWidgetWidth(GlobalKey globalKey) async {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?).let(
      (it) => it.size.width,
    );
  }

  static double? getWidgetHeight(GlobalKey globalKey) {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?).let(
      (it) => it.size.height,
    );
  }
}

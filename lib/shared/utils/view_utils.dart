import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/shared/constants/duration_constants.dart';
import 'package:bufopia/shared/utils/object_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewUtils {
  const ViewUtils._();

  static void showAppSnackBar(
    BuildContext context,
    String message, {
    Duration? duration,
    Color? backgroundColor,
  }) {
    AppSnackBar.show(
      context,
      message: message,
      duration: duration ?? DurationConstants.defaultSnackBarDuration,
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

import 'package:bufopia/shared/constants/duration_constants.dart';
import 'package:bufopia/shared/helper/function/function.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:bufopia/shared/navigation/app_popup_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum SmoothMode { lottie, network, asset, svg }

enum DialogType { confirmation, error, inform }

class ButtonConfig {
  ButtonConfig({
    this.dialogDone,
    this.dialogCancel,
    this.buttonCancelColor,
    this.buttonDoneColor,
  });

  final String? dialogDone;

  final String? dialogCancel;

  Color? buttonCancelColor;

  Color? buttonDoneColor;

  Color? labelCancelColor;

  Color? labelDoneColor;
}

abstract class AppNavigator {
  const AppNavigator();

  GoRouter get router;

  bool get canPop;

  void go(String location, {Object? extra});

  void goNamed(
    String name, {
    QueryParams pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  });

  Future<T?> push<T extends Object?>(String location, {Object? extra});

  Future<T?> pushNamed<T extends Object?>(
    String name, {
    QueryParams pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  });

  void replace(String location, {Object? extra});

  void replaceNamed(
    String name, {
    QueryParams pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  });

  void pop<T extends Object?>(T? result, {bool rootNavigator = false});

  void refresh();
  String namedLocation(
    String name, {
    QueryParams pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
  });

  Future<T?> showAppDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    bool barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
  });

  Future<T?> showDefaultDialog<T extends Object?>({
    required Widget title,
    required Widget content,
    Widget? asset,
    List<Widget>? actions,
    double radius,
    CrossAxisAlignment crossAxisAlignment,
    MainAxisAlignment mainAxisAlignment,
    double? dialogWidth,
    bool useRootNavigator = true,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool isCloseIcon = true,
    bool centerAsset = false,
    MainAxisAlignment actionsAlignment = MainAxisAlignment.end,
    EdgeInsetsGeometry actionsPadding,
    Func0<void>? onDismiss,
    Color? backgroundColor,
    bool scrollable = true,
  });

  Future<T?> showGeneralDialog<T extends Object?>(
    AppPopupInfo appPopupInfo, {
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transitionBuilder,
    Duration transitionDuration =
        DurationConstants.defaultGeneralDialogTransitionDuration,
    bool barrierDismissible = true,
    Color barrierColor = const Color(0x80000000),
    bool useRootNavigator = true,
  });

  Future<T?> showModalBottomSheet<T extends Object?>({
    required String title,
    required Widget child,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    Color barrierColor = Colors.black54,
    Color? backgroundColor,
    double topRadius,
  });

  Future<T?> showSmoothDialog<T extends Object?>({
    required String path,
    required String title,
    required String content,
    bool barrierDismissible = true,
    bool useSafeArea = false,
    bool useRootNavigator = true,
    double? dialogHeight,
    double? dialogWidth,
    double imageHeight = 150,
    double imageWidth = 150,
    VoidCallback? submit,
    Function? cancel,
    Function? onDismiss,
    Color? backgroundcolor,
    ButtonConfig? buttonConfig,
    BorderRadius? borderRadius,
    BorderRadius? buttonBorderRadius,
    SmoothMode mode = SmoothMode.lottie,
    DialogType dialogType = DialogType.confirmation,
  });

  void showErrorSnackBar(String message, {Duration? duration});

  void showSuccessSnackBar(String message, {Duration? duration});
}

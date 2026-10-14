import 'package:flutter/services.dart';

class UiConstants {
  const UiConstants._();

  /// shimmer
  static const shimmerItemCount = 10;

  /// material app
  static const materialAppTitle = 'BuFoPia App';
  static const hotline = '0901 344 756';
  static const hotlineUI = '0901 344 756';
  // static const hotline = '0909636002';
  static const taskMenuMaterialAppColor = Color(0xFF14B24C);

  /// orientation
  static const List<DeviceOrientation> mobileOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const List<DeviceOrientation> tabletOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  /// status bar color
  static const systemUiOverlay = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Color(0xFF14B24C),
  );

  static const textFieldTextStyleHeight = 1.3;
}

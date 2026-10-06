import 'package:bufopia/core/themes/dark_theme.dart';
import 'package:bufopia/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  AppTheme._();

  static ThemeData light() => LightTheme.data;
  static ThemeData dark() => DarkTheme.data;
}

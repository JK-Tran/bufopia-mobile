import 'package:flutter/material.dart';

/// Dữ liệu cấu hình cho từng thẻ Menu chính ở Trang Chủ
class HomeMenuItemData {
  const HomeMenuItemData({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonExtrusionColor,
    required this.titleColor,
    required this.titleShadowColor,
    required this.imagePath,
    required this.backgroundImagePath,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final String buttonText;
  final Color buttonColor;
  final Color buttonExtrusionColor;
  final Color titleColor;
  final Color titleShadowColor;
  final String imagePath;
  final String backgroundImagePath;
  final VoidCallback? onTap;
}

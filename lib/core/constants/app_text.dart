import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

enum AppTextVariant {
  h1, // Headline 1 - 32px, Bold
  t1, // Tiêu đề lớn (Title 1) - 24px, Bold
  t2, // Tiêu đề vừa (Title 2) - 20px, Bold
  t3, // Tiêu đề nhỏ (Title 3) - 16px, SemiBold
  b1, // Body lớn (Body 1) - 16px, Normal
  b2, // Body vừa (Body 2) - 14px, Normal
  c1, // Chú thích (Caption 1) - 12px, Normal
}

class AppText extends StatelessWidget {
  factory AppText.h1(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.h1,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.c1(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.c1,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.b1(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.b1,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.t1(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.t1,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.t2(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.t2,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.t3(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.t3,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  factory AppText.b2(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    Key? key,
    FontWeight? fontWeight,
    double? fontSize,
    List<Shadow>? shadows,
    double? letterSpacing,
  }) {
    return AppText._(
      key: key,
      text: text,
      variant: AppTextVariant.b2,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontWeight: fontWeight,
      fontSize: fontSize,
      shadows: shadows,
      letterSpacing: letterSpacing,
    );
  }

  const AppText._({
    required this.text,
    required this.variant,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight,
    this.fontSize,
    this.shadows,
    this.letterSpacing,
    super.key,
  });

  final String text;
  final AppTextVariant variant;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;

  /// Tuỳ chỉnh cỡ chữ. Nếu null, sẽ dùng cỡ chữ mặc định của từng variant.
  final double? fontSize;

  /// Tuỳ chỉnh bóng đổ chữ (shadows).
  final List<Shadow>? shadows;

  /// Tuỳ chỉnh khoảng cách ký tự (letterSpacing).
  final double? letterSpacing;

  // ─── Default styles ────────────────────────────────────────────────────────
  static const TextStyle h1Style = TextStyle(
    fontSize: 32, // Headline 1
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle t1Style = TextStyle(
    fontSize: 24, // Title 1
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle t2Style = TextStyle(
    fontSize: 20, // Title 2
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle t3Style = TextStyle(
    fontSize: 16, // Title 3
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static const TextStyle b1Style = TextStyle(
    fontSize: 16, // Body 1
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle b2Style = TextStyle(
    fontSize: 14, // Body 2
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle c1Style = TextStyle(
    fontSize: 12, // Caption 1
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // ─── Style resolver ────────────────────────────────────────────────────────
  TextStyle _getStyle(BuildContext context) {
    final theme = Theme.of(context);
    final defaultColor = color ?? theme.colorScheme.onSurface;

    switch (variant) {
      case AppTextVariant.h1:
        return h1Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.t1:
        return t1Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.t2:
        return t2Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.t3:
        return t3Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.b1:
        return b1Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.b2:
        return b2Style.copyWith(
          color: defaultColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
      case AppTextVariant.c1:
        return c1Style.copyWith(
          color: color ?? AppColors.grayMedium,
          fontWeight: fontWeight,
          fontSize: fontSize,
          shadows: shadows,
          letterSpacing: letterSpacing,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyle(context),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

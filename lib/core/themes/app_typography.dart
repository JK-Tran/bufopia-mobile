import 'package:bufopia/core/dimensions/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTypography {
  AppTypography._();

  static TextTheme textTheme({
    required Color onBackground,
    required Color onSurface,
    required Color onSurfaceVariant,
  }) {
    final base = GoogleFonts.beVietnamProTextTheme();

    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontSize: AppDimens.fontDisplayLarge,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        color: onBackground,
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontSize: AppDimens.fontDisplayMedium,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.25,
        color: onBackground,
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontSize: AppDimens.fontDisplaySmall,
        fontWeight: FontWeight.w600,
        color: onBackground,
      ),
      headlineLarge: base.headlineLarge?.copyWith(
        fontSize: AppDimens.fontHeadlineLarge,
        fontWeight: FontWeight.w600,
        color: onBackground,
      ),
      headlineMedium: base.headlineMedium?.copyWith(
        fontSize: AppDimens.fontHeadlineMedium,
        fontWeight: FontWeight.w600,
        color: onBackground,
      ),
      headlineSmall: base.headlineSmall?.copyWith(
        fontSize: AppDimens.fontHeadlineSmall,
        fontWeight: FontWeight.w600,
        color: onBackground,
      ),
      titleLarge: base.titleLarge?.copyWith(
        fontSize: AppDimens.fontTitleLarge,
        fontWeight: FontWeight.w600,
        color: onSurface,
      ),
      titleMedium: base.titleMedium?.copyWith(
        fontSize: AppDimens.fontTitleMedium,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      titleSmall: base.titleSmall?.copyWith(
        fontSize: AppDimens.fontTitleSmall,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      bodyLarge: base.bodyLarge?.copyWith(
        fontSize: AppDimens.fontBodyLarge,
        fontWeight: FontWeight.w400,
        color: onSurface,
      ),
      bodyMedium: base.bodyMedium?.copyWith(
        fontSize: AppDimens.fontBodyMedium,
        fontWeight: FontWeight.w400,
        color: onSurface,
      ),
      bodySmall: base.bodySmall?.copyWith(
        fontSize: AppDimens.fontBodySmall,
        fontWeight: FontWeight.w400,
        color: onSurfaceVariant,
      ),
      labelLarge: base.labelLarge?.copyWith(
        fontSize: AppDimens.fontLabelLarge,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      labelMedium: base.labelMedium?.copyWith(
        fontSize: AppDimens.fontLabelMedium,
        fontWeight: FontWeight.w500,
        color: onSurfaceVariant,
      ),
      labelSmall: base.labelSmall?.copyWith(
        fontSize: AppDimens.fontLabelSmall,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: onSurfaceVariant,
      ),
    );
  }
}

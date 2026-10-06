import 'package:bufopia/core/constants/device_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Kích thước responsive: Phone vs Tablet dùng flutter_screenutil.
/// Mọi giá trị được scale tự động, không cần kiểm tra isTablet nữa.
class AppDimens {
  AppDimens._();

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= DeviceConstants.maxTabletWidth;
  }

  static bool isPhone(BuildContext context) {
    return MediaQuery.sizeOf(context).width <=
        DeviceConstants.maxMobileWidthForDeviceType;
  }

  /// Spacing (padding, margin) — 4pt grid system
  static double get spacingXs => 4.w;
  static double get spacingSm => 8.w;
  static double get spacingM => 12.w;
  static double get spacingMd => 16.w;
  static double get spacingLg => 20.w;
  static double get spacingXl => 28.w;
  static double get spacingXxl => 40.w;

  /// Radius
  static double get radiusSm => 8.r;
  static double get radiusMd => 12.r;
  static double get radiusLg => 16.r;
  static double get radiusXl => 20.r;

  /// Font sizes — compact iOS SaaS style, nhỏ gọn vừa phải
  static double get fontDisplayLarge => 34.sp;
  static double get fontDisplayMedium => 28.sp;
  static double get fontDisplaySmall => 24.sp;
  static double get fontHeadlineLarge => 22.sp;
  static double get fontHeadlineMedium => 20.sp;
  static double get fontHeadlineSmall => 17.sp;
  static double get fontTitleLarge => 16.sp;
  static double get fontTitleMedium => 14.sp;
  static double get fontTitleSmall => 13.sp;
  static double get fontBodyLarge => 14.sp;
  static double get fontBodyMedium => 13.sp;
  static double get fontBodySmall => 11.5.sp;
  static double get fontLabelLarge => 13.sp;
  static double get fontLabelMedium => 11.sp;
  static double get fontLabelSmall => 10.sp;

  /// Icon sizes
  static double get iconXs => 14.w;
  static double get iconSm => 18.w;
  static double get iconMd => 22.w;
  static double get iconLg => 28.w;

  /// Button
  static double get buttonHeightSm => 32.h;
  static double get buttonHeightMd => 44.h;
  static double get buttonHeightLg => 52.h;
  static double get buttonMinWidth => 80.w;

  /// App bar
  static double get appBarHeight => 52.h;
  static double get appBarHeightTablet => 60.h;

  /// Max content width (tablet/desktop)
  static const double maxContentWidth = 600;
  static const double maxContentWidthTablet = 840;
}

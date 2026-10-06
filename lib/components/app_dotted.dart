import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Đường kẻ chấm ngang có thể tái sử dụng ở bất kỳ đâu trong app.
///
/// Ví dụ:
/// ```dart
/// const AppDotted()
/// AppDotted(color: AppColors.classicBorder, dashWidth: 4, dashGap: 4)
/// ```
class AppDotted extends StatelessWidget {
  const AppDotted({
    super.key,
    this.color = AppColors.paperDottedLine,
    this.height = 1.0,
    this.dashWidth = 3.0,
    this.dashGap = 3.0,
  });

  /// Màu của các chấm (mặc định theo token paper)
  final Color color;

  /// Chiều dày của đường kẻ
  final double height;

  /// Chiều rộng mỗi dash
  final double dashWidth;

  /// Khoảng cách giữa các dash
  final double dashGap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final count = (constraints.maxWidth / (dashWidth + dashGap)).floor();
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              count,
              (_) => SizedBox(
                width: dashWidth,
                height: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

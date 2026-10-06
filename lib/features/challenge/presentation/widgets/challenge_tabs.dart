import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/challenge/presentation/bloc/challenge_room_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh chuyển tab (NHẬP MÃ / TẠO PHÒNG) dạng pill 3D
/// Sử dụng con trượt AnimatedAlign di chuyển mượt mà, không nhấp nháy border/shadow
class ChallengeTabs extends StatelessWidget {
  const ChallengeTabs({
    required this.currentTab,
    required this.onTabChanged,
    super.key,
  });

  final ChallengeRoomTab currentTab;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isJoin = currentTab == ChallengeRoomTab.join;

    final activeColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final inactiveColor = isPaper
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;

    return Container(
      height: 22.h,
      padding: EdgeInsets.all(2.r),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(6.r),
        border: isPaper ? Border.all(color: AppColors.paperBorder) : null,
      ),
      child: Stack(
        children: [
          // 1. Con trượt màu trắng lướt êm ái giữa 2 tab (không bị chớp nháy)
          AnimatedAlign(
            alignment: isJoin ? Alignment.centerLeft : Alignment.centerRight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: isPaper ? AppColors.paperCardBg : AppColors.white,
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.blueLight,
                  ),
                  boxShadow: isPaper
                      ? [
                          BoxShadow(
                            color: AppColors.paperExtrusion,
                            offset: Offset(0, 1.h),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: AppColors.blue.withValues(alpha: 0.08),
                            blurRadius: 2.r,
                            offset: Offset(0, 1.h),
                          ),
                        ],
                ),
              ),
            ),
          ),

          // 2. Nội dung chữ & icon của 2 tab (nhận click mượt)
          Row(
            children: [
              // Tab 0: Nhập Mã
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTabChanged(0),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.rotate(
                          angle: 0.25,
                          child: Icon(
                            Icons.colorize_rounded,
                            size: 10.r,
                            color: isJoin ? activeColor : inactiveColor,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        AppText.b2(
                          'NHẬP MÃ',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: isJoin ? activeColor : inactiveColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Tab 1: Tạo Phòng
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTabChanged(1),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sensors_rounded,
                          size: 10.r,
                          color: !isJoin ? activeColor : inactiveColor,
                        ),
                        SizedBox(width: 4.w),
                        AppText.b2(
                          'TẠO PHÒNG',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: !isJoin ? activeColor : inactiveColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

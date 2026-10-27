import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh chuyển tab (Tạo phòng / Vào phòng) mượt mà dạng trượt 3D
/// Sử dụng AnimatedAlign giúp con trượt lướt êm ái,
/// hoàn toàn không bị giật nhấp nháy
class WordGuessRoomTabs extends StatelessWidget {
  const WordGuessRoomTabs({
    required this.currentTabIndex,
    required this.onTabChanged,
    super.key,
  });

  final int currentTabIndex;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final isCreate = currentTabIndex == 0;
    final barBg = isPaper ? const Color(0xFFEFE9DF) : AppColors.grayLight;
    final activeBg = isPaper ? AppColors.white : AppColors.white;
    final activeText = isPaper ? const Color(0xFF2E6532) : AppColors.green;
    final inactiveText = isPaper ? const Color(0xFF5D5447) : AppColors.grayDark;

    final tabHeight = isLandscape ? 40.0 : 42.h;
    final fontSize = isLandscape ? 12.0 : 12.sp;
    final iconSize = isLandscape ? 16.0 : 16.r;
    final l10n = context.l10n;

    return Container(
      height: tabHeight,
      padding: EdgeInsets.all(isLandscape ? 3.0 : 3.r),
      decoration: BoxDecoration(
        color: barBg,
        borderRadius: BorderRadius.circular(12.r),
        border: isPaper ? Border.all(color: const Color(0xFFE2D8C7)) : null,
      ),
      child: Stack(
        children: [
          // 1. Con trượt màu trắng lướt êm ái giữa 2 tab (không bị chớp nháy)
          AnimatedAlign(
            alignment: isCreate ? Alignment.centerLeft : Alignment.centerRight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: activeBg,
                  borderRadius: BorderRadius.circular(9.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.08),
                      blurRadius: 4.r,
                      offset: Offset(0, 1.h),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 2. Nội dung text & icon của 2 Tab
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (!isCreate) {
                      context.read<AppBloc>().add(
                        const AppEvent.clickSoundPlayed(),
                      );
                      onTabChanged(0);
                    }
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sensors_rounded,
                          size: iconSize,
                          color: isCreate ? activeText : inactiveText,
                        ),
                        SizedBox(width: 6.w),
                        AppText.b2(
                          l10n.createRoomTab,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                          color: isCreate ? activeText : inactiveText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (isCreate) {
                      context.read<AppBloc>().add(
                        const AppEvent.clickSoundPlayed(),
                      );
                      onTabChanged(1);
                    }
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail_outline_rounded,
                          size: iconSize,
                          color: !isCreate ? activeText : inactiveText,
                        ),
                        SizedBox(width: 6.w),
                        AppText.b2(
                          l10n.enterCodeTab,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                          color: !isCreate ? activeText : inactiveText,
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

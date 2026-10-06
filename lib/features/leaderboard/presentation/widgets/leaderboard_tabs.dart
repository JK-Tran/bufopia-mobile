import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Row 3 nút tab chọn tiêu chí bảng xếp hạng (XP / Chuỗi thắng / Chuỗi học).
/// Dùng [AppButton.custom] chuẩn 3D game và thích ứng Paper / Classic theme.
class LeaderboardTabs extends StatelessWidget {
  const LeaderboardTabs({
    required this.onMetricSelected,
    super.key,
  });

  final void Function(String metric) onMetricSelected;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      buildWhen: (prev, curr) => prev.selectedMetric != curr.selectedMetric,
      builder: (context, state) {
        final selected = state.selectedMetric;
        return Row(
          children: [
            Expanded(
              child: _LeaderboardTabButton(
                metric: 'xp',
                label: 'Tổng XP',
                icon: Icons.bolt_rounded,
                iconColor: AppColors.purple,
                isSelected: selected == 'xp',
                isPaper: isPaper,
                onTap: onMetricSelected,
              ),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: _LeaderboardTabButton(
                metric: 'win_streak',
                label: 'Chuỗi thắng',
                icon: Icons.emoji_events_rounded,
                iconColor: AppColors.gold,
                isSelected: selected == 'win_streak',
                isPaper: isPaper,
                onTap: onMetricSelected,
              ),
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: _LeaderboardTabButton(
                metric: 'streak',
                label: 'Chuỗi học',
                icon: Icons.local_fire_department_rounded,
                iconColor: AppColors.red,
                isSelected: selected == 'streak',
                isPaper: isPaper,
                onTap: onMetricSelected,
              ),
            ),
          ],
        );
      },
    );
  }
}

/// Nút tab đơn lẻ — dùng [AppButton.custom] 3D game.
class _LeaderboardTabButton extends StatelessWidget {
  const _LeaderboardTabButton({
    required this.metric,
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.isSelected,
    required this.isPaper,
    required this.onTap,
  });

  final String metric;
  final String label;
  final IconData icon;
  final Color iconColor;
  final bool isSelected;
  final bool isPaper;
  final void Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return AppButton.custom(
      extrusionColor: isSelected
          ? (isPaper ? AppColors.greenDark : AppColors.blueDeep)
          : (isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion),
      backgroundColor: isSelected
          ? (isPaper ? AppColors.leaderboardTabSelectedBg : AppColors.skyLight)
          : (isPaper ? AppColors.paperBadgeBg : AppColors.lightBackground),
      borderColor: isSelected
          ? (isPaper ? AppColors.paperGreenDark : AppColors.blueLight)
          : (isPaper ? AppColors.paperBorder : AppColors.grayLight),
      extrusionHeight: isSelected ? 2 : 1.5,
      borderRadius: BorderRadius.circular(10.r),
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
      onPressed: () => onTap(metric),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16.r, color: iconColor),
          SizedBox(width: 4.w),
          Flexible(
            child: AppText.c1(
              label,
              fontSize: 12.sp,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
              color: isSelected
                  ? (isPaper ? AppColors.paperGreenDark : AppColors.blueDark)
                  : (isPaper ? AppColors.paperTextMuted : AppColors.grayMedium),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

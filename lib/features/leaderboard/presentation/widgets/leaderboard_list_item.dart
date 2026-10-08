import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/shared/utils/number_format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hàng hiển thị một người chơi từ hạng #4 trở xuống trong bảng xếp hạng.
class LeaderboardListItem extends StatelessWidget {
  const LeaderboardListItem({
    required this.player,
    required this.isPaper,
    super.key,
  });

  final LeaderboardPlayer player;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    final rowBg = isPaper ? AppColors.leaderboardRowBg : AppColors.lightSurface;
    final rowBorder = isPaper ? AppColors.paperBorder : AppColors.classicBorder;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: rowBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: rowBorder, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          // Hạng
          SizedBox(
            width: 44.w,
            child: Row(
              children: [
                Icon(
                  Icons.workspace_premium_outlined,
                  size: 14.r,
                  color: AppColors.purple,
                ),
                SizedBox(width: 2.w),
                AppText.c1(
                  '#${player.rank}',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.purpleShadow,
                ),
              ],
            ),
          ),

          // Avatar
          AppAvatar(avatarUrl: player.avatarUrl, size: 30.r),
          SizedBox(width: 8.w),

          // Tên + Cấp
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.c1(
                  player.displayName.isNotEmpty
                      ? player.displayName
                      : 'Ẩn danh',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AppText.c1(
                  'Cấp ${player.level}',
                  fontSize: 10.sp,
                  color: isPaper
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                ),
              ],
            ),
          ),

          // Điểm số
          AppText.c1(
            NumberFormatUtils.formatNumber(player.value),
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.indigo,
          ),
        ],
      ),
    );
  }
}

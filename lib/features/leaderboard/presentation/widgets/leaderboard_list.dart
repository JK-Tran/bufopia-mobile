import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/features/leaderboard/presentation/widgets/leaderboard_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Danh sach nguoi choi tu hang #4 tro xuong, bao gom header cot.
class LeaderboardList extends StatelessWidget {
  const LeaderboardList({
    required this.players,
    required this.metric,
    required this.isPaper,
    super.key,
  });

  final List<LeaderboardPlayer> players;
  final String metric;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Header cot
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          child: Row(
            children: [
              SizedBox(
                width: 44.w,
                child: AppText.c1(
                  'HẠNG',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.grayMedium,
                ),
              ),
              Expanded(
                child: AppText.c1(
                  'NGƯỜI CHƠI',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.grayMedium,
                ),
              ),
              AppText.c1(
                _metricColumnLabel(metric),
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.grayMedium,
              ),
            ],
          ),
        ),

        SizedBox(height: 2.h),

        // Danh sach #4+
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: players.length,
          separatorBuilder: (_, _) => SizedBox(height: 4.h),
          itemBuilder: (_, i) => LeaderboardListItem(
            player: players[i],
            isPaper: isPaper,
          ),
        ),
      ],
    );
  }

  /// Nhan cot gia tri theo tieu chi dang chon.
  static String _metricColumnLabel(String metric) {
    switch (metric) {
      case 'win_streak':
        return 'CHUỖI';
      case 'streak':
        return 'NGÀY';
      default:
        return 'XP';
    }
  }
}

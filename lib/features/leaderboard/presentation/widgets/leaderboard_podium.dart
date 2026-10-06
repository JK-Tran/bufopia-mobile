import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class LeaderboardPodium extends StatelessWidget {
  const LeaderboardPodium({
    required this.rank1,
    required this.rank2,
    required this.rank3,
    required this.metric,
    required this.fmt,
    super.key,
  });

  final LeaderboardPlayer? rank1;
  final LeaderboardPlayer? rank2;
  final LeaderboardPlayer? rank3;
  final String metric;
  final NumberFormat fmt;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // #2 — Bạc (trái)
          Expanded(
            child: LeaderboardPodiumCard(
              player: rank2,
              rank: 2,
              metric: metric,
              isCenter: false,
              fmt: fmt,
            ),
          ),
          SizedBox(width: 6.w),
          // #1 — Vàng (giữa, cao hơn, có vương miện)
          Expanded(
            child: LeaderboardPodiumCard(
              player: rank1,
              rank: 1,
              metric: metric,
              isCenter: true,
              fmt: fmt,
            ),
          ),
          SizedBox(width: 6.w),
          // #3 — Đồng (phải)
          Expanded(
            child: LeaderboardPodiumCard(
              player: rank3,
              rank: 3,
              metric: metric,
              isCenter: false,
              fmt: fmt,
            ),
          ),
        ],
      ),
    );
  }
}

class LeaderboardPodiumCard extends StatelessWidget {
  const LeaderboardPodiumCard({
    required this.player,
    required this.rank,
    required this.metric,
    required this.isCenter,
    required this.fmt,
    this.gradientColors,
    this.borderColor,
    super.key,
  });

  final LeaderboardPlayer? player;
  final int rank;
  final String metric;
  final bool isCenter;
  final NumberFormat fmt;
  final List<Color>? gradientColors;
  final Color? borderColor;

  static String _unit(String metric) {
    switch (metric) {
      case 'win_streak':
        return 'trận';
      case 'streak':
        return 'ngày';
      default:
        return 'XP';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (player == null) return const SizedBox.shrink();

    // Kích thước avatar thu gọn hợp lý, không chiếm nhiều chiều cao
    final avatarSize = isCenter ? 34.r : 26.r;

    // Màu nền, viền và thanh nẹp đỉnh thẻ theo chuẩn web
    final Color cardBg;
    final Color cardBorder;
    final Color extrusionColor;
    final Color? topStripeColor;

    if (isCenter) {
      // Hạng #1: Thẻ giấy vàng kim ấm áp, vương miện trên đầu
      cardBg = const Color(0xFFF7F0D8);
      cardBorder = const Color(0xFFC7A868);
      extrusionColor = const Color(0xFFB89B58);
      topStripeColor = null;
    } else if (rank == 2) {
      // Hạng #2: Thẻ giấy trắng ngà, thanh nẹp màu xám chì (bạc)
      cardBg = const Color(0xFFFAF7F0);
      cardBorder = const Color(0xFFCCC5B7);
      extrusionColor = const Color(0xFFB5ADA0);
      topStripeColor = const Color(0xFF64748B); // Slate gray
    } else {
      // Hạng #3: Thẻ giấy trắng ngà, thanh nẹp màu nâu đồng
      cardBg = const Color(0xFFFAF7F0);
      cardBorder = const Color(0xFFCCC5B7);
      extrusionColor = const Color(0xFFB5ADA0);
      topStripeColor = const Color(0xFF8D6E63); // Bronze brown
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: isCenter ? 0 : 8.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: cardBorder, width: 1.2.w),
        boxShadow: [
          BoxShadow(
            color: extrusionColor.withValues(alpha: 0.5),
            offset: Offset(0, 2.5.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 3.r,
            offset: Offset(0, 1.5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Thanh nẹp trên cùng của thẻ sổ tay (cho #2 và #3)
          if (topStripeColor != null)
            Container(
              width: double.infinity,
              height: 3.h,
              decoration: BoxDecoration(
                color: topStripeColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(6.r),
                ),
              ),
            )
          else
            SizedBox(height: 3.h),

          // Khoảng đệm nội dung bên trong được rút gọn để thẻ không bị trống
          Padding(
            padding: EdgeInsets.fromLTRB(
              4.w,
              isCenter ? 10.h : 5.h,
              4.w,
              5.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Avatar + badge số thứ hạng (thiết kế chuẩn web)
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    // Vành trắng dày xung quanh avatar
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.white,
                          width: 1.8.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withValues(alpha: 0.1),
                            blurRadius: 3.r,
                            offset: Offset(0, 1.h),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: AppAvatar(
                          avatarUrl: player!.avatarUrl,
                          size: avatarSize,
                          borderColor: Colors.transparent,
                        ),
                      ),
                    ),
                    // Vương miện trên đầu avatar (chỉ dành cho hạng #1)
                    if (isCenter)
                      Positioned(
                        top: -11.h,
                        child: Image.asset(
                          'assets/icons/crown.png',
                          width: 20.w,
                          height: 15.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    Positioned(
                      right: -2.w,
                      bottom: -1.h,
                      child: Container(
                        width: 14.r,
                        height: 14.r,
                        decoration: BoxDecoration(
                          color: const Color(0xFF334155),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.white,
                            width: 1.5.w,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withValues(alpha: 0.2),
                              blurRadius: 2.r,
                              offset: Offset(0, 1.h),
                            ),
                          ],
                        ),
                        child: Center(
                          child: AppText.c1(
                            '$rank',
                            fontSize: 8.5.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),

                // Tên người chơi + Cấp độ (nằm chung 1 dòng như mẫu web)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AppText.c1(
                        player!.displayName.isNotEmpty
                            ? player!.displayName
                            : 'Ẩn danh',
                        fontSize: isCenter ? 11.sp : 10.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF2D3748),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 3.w),
                    AppText.c1(
                      'Cấp ${player!.level}',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF718096),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),

                // Điểm số + Đơn vị (chữ to đậm)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    AppText.b2(
                      fmt.format(player!.value),
                      fontSize: isCenter ? 12.sp : 11.sp,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF1A202C),
                    ),
                    SizedBox(width: 2.w),
                    AppText.c1(
                      _unit(metric),
                      fontSize: 8.5.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF4A5568),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),

                // Gạch chân màu xanh mint highlighter chuẩn web
                Container(
                  width: isCenter ? 40.w : 32.w,
                  height: 1.8.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF86EFAC),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung hiển thị toàn cảnh kết quả đối đầu (Player 1 VS Player 2)
class AppResultCard extends StatelessWidget {
  const AppResultCard({
    required this.player1Card,
    required this.player2Card,
    super.key,
    this.isPaper = false,
    this.isVertical,
  });

  final AppResultPlayerCard player1Card;
  final AppResultPlayerCard player2Card;
  final bool isPaper;
  final bool? isVertical;

  Widget _buildVsBadge({required bool isCompact}) {
    final size = isCompact ? 28.r : 38.r;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : const Color(0xFFE0E0E0),
          width: isCompact ? 1.5.w : 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.12),
            offset: Offset(0, 2.h),
            blurRadius: 4.r,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: AppText.t3(
        'VS',
        color: AppColors.grayMedium,
        fontWeight: FontWeight.w700,
        fontSize: isCompact ? 10.sp : 12.sp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final useVertical = isVertical ?? (constraints.maxWidth < 520);
        final isCompact = constraints.maxWidth < 560;

        if (useVertical) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              player1Card,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.h,
                        color: isPaper
                            ? AppColors.paperBorder.withValues(alpha: 0.6)
                            : const Color(0xFFE0E0E0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: _buildVsBadge(isCompact: true),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.h,
                        color: isPaper
                            ? AppColors.paperBorder.withValues(alpha: 0.6)
                            : const Color(0xFFE0E0E0),
                      ),
                    ),
                  ],
                ),
              ),
              player2Card,
            ],
          );
        }

        return Row(
          children: [
            Expanded(child: player1Card),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isCompact ? 4.w : 8.w,
              ),
              child: _buildVsBadge(isCompact: isCompact),
            ),
            Expanded(child: player2Card),
          ],
        );
      },
    );
  }
}

/// Thẻ thống kê kết quả thi đấu của 1 người chơi
class AppResultPlayerCard extends StatelessWidget {
  const AppResultPlayerCard({
    required this.name,
    super.key,
    this.avatarUrl,
    this.nameColor = const Color(0xFFE53935),
    this.isLeader = false,
    this.scoreText,
    this.lives = 3,
    this.maxLives = 3,
    this.correctCount = '0 từ',
    this.fastestTime = '—',
    this.accuracy = '0%',
    this.streak = '0',
    this.badges = const [],
    this.isPaper = false,
    this.width,
  });

  final String name;
  final String? avatarUrl;
  final Color nameColor;
  final bool isLeader;
  final String? scoreText;
  final int lives;
  final int maxLives;
  final String correctCount;
  final String fastestTime;
  final String accuracy;
  final String streak;
  final List<Widget> badges;
  final bool isPaper;
  final double? width;

  Widget _buildStatPill({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
    required bool isCompact,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isCompact ? 6.w : 8.w,
        vertical: isCompact ? 3.h : 4.h,
      ),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(isCompact ? 10.r : 12.r),
        border: Border.all(
          color: isPaper
              ? AppColors.paperBorder.withValues(alpha: 0.6)
              : const Color(0xFFE0E0E0),
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: isCompact ? 12.r : 14.r),
          SizedBox(width: 3.w),
          AppText.c1(
            label,
            color: isPaper
                ? AppColors.paperTextMedium
                : const Color(0xFF616161),
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          AppText.c1(
            value,
            color: isPaper ? AppColors.paperTextDark : const Color(0xFF212121),
            fontSize: isCompact ? 10.sp : 12.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cardBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final cardBorder = isPaper
        ? AppColors.paperBorder
        : const Color(0xFFE0E0E0);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 210;

        final cardContent = Container(
          width: width,
          padding: EdgeInsets.symmetric(
            horizontal: isCompact ? 8.w : 12.w,
            vertical: isCompact ? 8.h : 10.h,
          ),
          decoration: BoxDecoration(
            color: cardBg,
            borderRadius: BorderRadius.circular(isCompact ? 14.r : 18.r),
            border: Border.all(color: cardBorder, width: 1.5.w),
            boxShadow: [
              BoxShadow(
                color: isPaper
                    ? AppColors.paperExtrusion.withValues(alpha: 0.3)
                    : AppColors.black.withValues(alpha: 0.08),
                offset: Offset(0, 3.h),
                blurRadius: 8.r,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1. Header: Avatar + Tên + (Điểm số hoặc Tim)
              Row(
                children: [
                  AppAvatar(
                    avatarUrl: avatarUrl,
                    size: isCompact ? 30.r : 38.r,
                    borderWidth: 1.5.w,
                    borderColor: nameColor,
                  ),
                  SizedBox(width: isCompact ? 6.w : 8.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppText.t3(
                          name.toUpperCase(),
                          color: nameColor,
                          fontSize: isCompact ? 12.sp : 14.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 1.h),
                        if (scoreText != null && scoreText!.isNotEmpty)
                          AppText.t2(
                            scoreText!,
                            color: AppColors.grayDark,
                            fontSize: isCompact ? 14.sp : 16.sp,
                            fontWeight: FontWeight.w700,
                          )
                        else ...[
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  maxLives,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(right: 2.w),
                                    child: Icon(
                                      Icons.favorite_rounded,
                                      color: index < lives
                                          ? const Color(0xFFD32F2F)
                                          : const Color(0xFFE0E0E0),
                                      size: isCompact ? 13.r : 16.r,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 3.w),
                              AppText.c1(
                                context.l10n.remainingHearts(lives),
                                color: isPaper
                                    ? AppColors.paperTextMedium
                                    : AppColors.grayMedium,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: isCompact ? 6.h : 8.h),

              // 2. Khung 4 chỉ số
              if (isCompact) ...[
                // Trên màn hình hẹp (mobile): 4 hàng pill xếp dọc (1 cột),
                // vừa vặn 1 màn hình
                _buildStatPill(
                  icon: Icons.gps_fixed_rounded,
                  iconColor: const Color(0xFF0288D1),
                  label: context.l10n.correct,
                  value: correctCount,
                  isCompact: true,
                ),
                SizedBox(height: 3.h),
                _buildStatPill(
                  icon: Icons.bolt_rounded,
                  iconColor: const Color(0xFFF57C00),
                  label: context.l10n.fastest,
                  value: fastestTime,
                  isCompact: true,
                ),
                SizedBox(height: 3.h),
                _buildStatPill(
                  icon: Icons.military_tech_rounded,
                  iconColor: const Color(0xFF388E3C),
                  label: context.l10n.accuracy,
                  value: accuracy,
                  isCompact: true,
                ),
                SizedBox(height: 3.h),
                _buildStatPill(
                  icon: Icons.local_fire_department_rounded,
                  iconColor: const Color(0xFFE64A19),
                  label: context.l10n.streak,
                  value: streak,
                  isCompact: true,
                ),
              ] else ...[
                // Trên màn hình rộng (tablet/web/landscape): 2x2 grid
                Row(
                  children: [
                    Expanded(
                      child: _buildStatPill(
                        icon: Icons.gps_fixed_rounded,
                        iconColor: const Color(0xFF0288D1),
                        label: context.l10n.correct,
                        value: correctCount,
                        isCompact: false,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: _buildStatPill(
                        icon: Icons.bolt_rounded,
                        iconColor: const Color(0xFFF57C00),
                        label: context.l10n.fastest,
                        value: fastestTime,
                        isCompact: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Expanded(
                      child: _buildStatPill(
                        icon: Icons.military_tech_rounded,
                        iconColor: const Color(0xFF388E3C),
                        label: context.l10n.accuracy,
                        value: accuracy,
                        isCompact: false,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: _buildStatPill(
                        icon: Icons.local_fire_department_rounded,
                        iconColor: const Color(0xFFE64A19),
                        label: context.l10n.streak,
                        value: streak,
                        isCompact: false,
                      ),
                    ),
                  ],
                ),
              ],

              // 3. Đường kẻ phân cách nét đứt (Dotted Divider)
              SizedBox(height: isCompact ? 6.h : 10.h),
              AppDotted(
                color: isPaper
                    ? AppColors.paperDottedLine
                    : const Color(0xFFE0E0E0),
              ),
              SizedBox(height: isCompact ? 6.h : 8.h),

              // 4. Danh sách huy hiệu chân thẻ (Badges)
              if (badges.isNotEmpty)
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4.w,
                    runSpacing: 4.h,
                    children: badges,
                  ),
                ),
            ],
          ),
        );

        if (isLeader) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              cardContent,
              Positioned(
                top: isCompact ? -7.h : -9.h,
                right: isCompact ? 6.w : 10.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isCompact ? 6.w : 8.w,
                    vertical: isCompact ? 2.h : 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E7D32),
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(
                          0xFF2E7D32,
                        ).withValues(alpha: 0.35),
                        offset: Offset(0, 1.5.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.emoji_events_rounded,
                        color: AppColors.white,
                        size: isCompact ? 10.r : 12.r,
                      ),
                      SizedBox(width: 2.w),
                      AppText.c1(
                        context.l10n.leaderBadge,
                        color: AppColors.white,
                        fontSize: isCompact ? 8.sp : 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        return cardContent;
      },
    );
  }
}

/// Huy hiệu nhãn (Chip) ở chân thẻ kết quả (XP, Streak, Bạn cùng luyện)
class AppResultBadgeChip extends StatelessWidget {
  const AppResultBadgeChip({
    required this.label,
    super.key,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.shadowColor,
  });

  /// Chip hiển thị XP nhận được (+25 XP) - Tone vàng kim ấm áp, rực rỡ
  factory AppResultBadgeChip.xp(int xp) {
    return AppResultBadgeChip(
      icon: Icons.star_rounded,
      iconColor: const Color(0xFFFFA000),
      label: '+$xp XP',
      backgroundColor: const Color(0xFFFFF8E1),
      textColor: const Color(0xFFE65100),
      borderColor: const Color(0xFFFFD54F),
      shadowColor: const Color(0xFFFFD54F).withValues(alpha: 0.25),
    );
  }

  /// Chip hiển thị Chuỗi ngày - Tone cam lửa nhiệt huyết
  factory AppResultBadgeChip.streak(int days) {
    return AppResultBadgeChip(
      icon: Icons.local_fire_department_rounded,
      iconColor: const Color(0xFFFF5722),
      label: 'Chuỗi: $days ngày',
      backgroundColor: const Color(0xFFFBE9E7),
      textColor: const Color(0xFFD84315),
      borderColor: const Color(0xFFFFCCBC),
      shadowColor: const Color(0xFFFF5722).withValues(alpha: 0.2),
    );
  }

  /// Chip hiển thị Chuỗi dẫn đầu / chuỗi thắng - Tone ngọc cúp chiến thắng
  factory AppResultBadgeChip.winStreak(int winStreak) {
    return AppResultBadgeChip(
      icon: Icons.emoji_events_rounded,
      iconColor: const Color(0xFF2E7D32),
      label: 'Chuỗi dẫn đầu: $winStreak',
      backgroundColor: const Color(0xFFE8F5E9),
      textColor: const Color(0xFF1B5E20),
      borderColor: const Color(0xFFA5D6A7),
      shadowColor: const Color(0xFF4CAF50).withValues(alpha: 0.2),
    );
  }

  /// Chip hiển thị bạn cùng luyện online / đối thủ - Tone xanh biển hài hoà
  factory AppResultBadgeChip.rival({String text = 'Bạn cùng luyện online'}) {
    return AppResultBadgeChip(
      icon: Icons.military_tech_rounded,
      iconColor: const Color(0xFF1976D2),
      label: text,
      backgroundColor: const Color(0xFFE3F2FD),
      textColor: const Color(0xFF0D47A1),
      borderColor: const Color(0xFFBBDEFB),
      shadowColor: const Color(0xFF2196F3).withValues(alpha: 0.15),
    );
  }

  final String label;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.5.h),
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: borderColor ?? const Color(0xFFE0E0E0),
          width: 1.w,
        ),
        boxShadow: [
          if (shadowColor != null)
            BoxShadow(
              color: shadowColor!,
              offset: Offset(0, 1.h),
              blurRadius: 3.r,
            ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 13.r,
              color: iconColor ?? const Color(0xFFFFA000),
            ),
            SizedBox(width: 3.5.w),
          ],
          AppText.c1(
            label,
            color: textColor ?? AppColors.grayDark,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.1,
          ),
        ],
      ),
    );
  }
}

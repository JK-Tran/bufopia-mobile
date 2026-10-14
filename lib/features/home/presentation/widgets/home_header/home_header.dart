import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/home_player_info.dart';
import 'package:bufopia/features/leaderboard/presentation/widgets/dialog/leaderboard_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    this.userName = 'Alex',
    this.userLevel = 1,
    this.userXp = 0,
    this.xpProgress = 0.0,
    this.userStreak = 0,
    this.currentLevelXp = 0,
    this.neededForNext = 100,
    this.avatarUrl,
    this.isMusicEnabled,
    this.onSoundPressed,
    this.onSettingsPressed,
    this.onProfilePressed,
  });

  final String userName;
  final int userLevel;
  final int userXp;
  final double xpProgress;
  final int userStreak;
  final int currentLevelXp;
  final int neededForNext;
  final String? avatarUrl;
  final bool? isMusicEnabled;
  final VoidCallback? onSoundPressed;
  final VoidCallback? onSettingsPressed;
  final VoidCallback? onProfilePressed;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>(
      (bloc) => bloc.state.isPaperTheme,
    );

    final logoAsset = isPaper
        ? 'assets/images/background_switch/logo_app.webp'
        : 'assets/images/logo_app.png';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 1. Hàng trên: Thông tin người chơi (trái) & Nút hành động (phải)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Cánh trái: Thông tin người chơi
            Flexible(
              child: HomePlayerInfo(
                name: userName,
                level: userLevel,
                xp: userXp,
                progress: xpProgress,
                streak: userStreak,
                currentLevelXp: currentLevelXp,
                neededForNext: neededForNext,
                avatarUrl: avatarUrl,
                onTap: onProfilePressed,
                isPaperTheme: isPaper,
              ),
            ),

            SizedBox(width: 8.w),

            // Cánh phải: Nút Bảng xếp hạng + Cài đặt
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Nút bảng xếp hạng (trophy vàng)
                AppIconButton(
                  icon: Icons.emoji_events_rounded,
                  tooltip: 'Bảng xếp hạng',
                  backgroundColor: isPaper
                      ? AppColors.paperAmberBadgeBg
                      : const Color(0xFFFEF9C3),
                  borderColor: isPaper
                      ? AppColors.paperAmberBadgeBorder
                      : const Color(0xFFFDE68A),
                  extrusionColor: isPaper
                      ? AppColors.paperExtrusion
                      : const Color(0xFFF59E0B),
                  iconColor: AppColors.orangeDark,
                  size: 40.r,
                  iconSize: 24.r,
                  onPressed: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    LeaderboardDialog.show(context);
                  },
                ),
                SizedBox(width: 6.w),
                // Nút Cài đặt
                AppIconButton(
                  icon: Icons.settings_rounded,
                  tooltip: 'Settings',
                  backgroundColor: isPaper
                      ? AppColors.paperCardBg
                      : AppColors.white,
                  borderColor: isPaper
                      ? AppColors.paperBorder
                      : AppColors.white,
                  extrusionColor: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.grayExtrusion,
                  iconColor: isPaper
                      ? AppColors.paperHeaderIcon
                      : AppColors.indigo,
                  size: 40.r,
                  iconSize: 24.r,
                  onPressed:
                      onSettingsPressed ??
                      () => HomeSettingsDialog.show(context),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 10.h),

        // 2. Biển hiệu Logo app ở trung tâm
        // Tự scale phóng to tối đa theo khung
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 280.w,
              maxHeight: 120.h,
            ),
            child: Image.asset(
              logoAsset,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

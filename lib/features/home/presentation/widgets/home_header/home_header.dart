import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Cánh trái: Thông tin người chơi
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 4.h),
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
          ),
        ),

        // 2. Logo app ở trung tâm
        Image.asset(
          logoAsset,
          height: 80.h,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => AppText.h1(
            'Word Duel',
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.orangeDeep,
            textAlign: TextAlign.center,
          ),
        ),

        // 3. Cánh phải: Nút Bảng xếp hạng + Cài đặt
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Row(
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
                    size: 38.r,
                    iconSize: 20.r,
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
                    size: 38.r,
                    iconSize: 20.r,
                    onPressed:
                        onSettingsPressed ??
                        () => HomeSettingsDialog.show(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

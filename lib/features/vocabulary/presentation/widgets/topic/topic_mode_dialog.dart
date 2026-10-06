import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_mode_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại chọn chế độ thi đấu (Bot, PvP, Ghép cặp, Thách đấu ID)
/// Thiết kế chuẩn 3D Game & thích ứng cả Paper Theme và Classic Theme
class TopicModeDialog extends StatelessWidget {
  const TopicModeDialog({
    super.key,
    this.isPaperTheme,
    this.onBotBattle,
    this.onPvPBattle,
    this.onOnlineMatch,
    this.onIdChallenge,
  });

  final bool? isPaperTheme;
  final VoidCallback? onBotBattle;
  final VoidCallback? onPvPBattle;
  final VoidCallback? onOnlineMatch;
  final VoidCallback? onIdChallenge;

  static Future<void> show(
    BuildContext context, {
    VoidCallback? onBotBattle,
    VoidCallback? onPvPBattle,
    VoidCallback? onOnlineMatch,
    VoidCallback? onIdChallenge,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return AppGameDialog.show(
      context: context,
      title: 'CHỌN CHẾ ĐỘ CHƠI',
      icon: Icons.sports_esports_rounded,
      maxWidth: 520.w,
      maxHeight: 255.h,
      footerText: '⭐ Chọn chế độ để bắt đầu so tài từ vựng ⭐',
      padding: EdgeInsets.fromLTRB(8.w, 6.h, 8.w, 6.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [
              AppColors.paperGreen,
              AppColors.paperGreenDark,
            ]
          : const [
              AppColors.blueLight,
              AppColors.blueDark,
            ],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: TopicModeDialog(
        isPaperTheme: isPaper,
        onBotBattle: onBotBattle,
        onPvPBattle: onPvPBattle,
        onOnlineMatch: onOnlineMatch,
        onIdChallenge: onIdChallenge,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Row(
      children: [
        // Mode 1: Bot
        Expanded(
          child: TopicModeItem(
            badgeText: '1 NGƯỜI',
            badgeIcon: Icons.person_rounded,
            badgeColor: isPaper
                ? AppColors.paperGreen
                : AppColors.modeBotButton,
            imagePath: 'assets/images/webp/mode-bot.webp',
            title: 'Đấu với Bot',
            buttonText: 'CHƠI NGAY',
            buttonIcon: Icons.play_arrow_rounded,
            buttonGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isPaper
                  ? const [
                      AppColors.paperGreenLight,
                      AppColors.paperGreen,
                    ]
                  : const [
                      AppColors.modeBotButton,
                      AppColors.modeBotButtonDark,
                    ],
            ),
            buttonExtrusionColor: isPaper
                ? AppColors.paperGreenExtrusion
                : AppColors.modeBotButtonExtrusion,
            cardBorderColor: AppColors.modeBotBorder,
            cardShadowColor: isPaper
                ? AppColors.paperGreenExtrusion
                : AppColors.modeBotShadow,
            isPaperTheme: isPaper,
            onTap: () {
              Navigator.of(context).pop();
              onBotBattle?.call();
            },
          ),
        ),
        SizedBox(width: 6.w),

        // Mode 2: PvP
        Expanded(
          child: TopicModeItem(
            badgeText: '2 NGƯỜI',
            badgeIcon: Icons.people_rounded,
            badgeColor: isPaper
                ? AppColors.paperAmberBadgeText
                : AppColors.modePvpButton,
            imagePath: 'assets/images/webp/mode-pvp.webp',
            title: 'Đấu 2 Người',
            buttonText: 'CHƠI NGAY',
            buttonIcon: Icons.people_rounded,
            buttonGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isPaper
                  ? const [
                      AppColors.menuReviewPurple,
                      AppColors.menuReviewPurpleExtrusion,
                    ]
                  : const [
                      AppColors.modePvpButton,
                      AppColors.modePvpButtonDark,
                    ],
            ),
            buttonExtrusionColor: isPaper
                ? AppColors.menuReviewPurpleExtrusion
                : AppColors.modePvpButtonExtrusion,
            cardBorderColor: AppColors.modePvpBorder,
            cardShadowColor: isPaper
                ? AppColors.menuReviewPurpleExtrusion
                : AppColors.modePvpShadow,
            isPaperTheme: isPaper,
            onTap: () {
              Navigator.of(context).pop();
              onPvPBattle?.call();
            },
          ),
        ),
        SizedBox(width: 6.w),

        // Mode 3: Online
        Expanded(
          child: TopicModeItem(
            badgeText: 'GHÉP CẶP',
            badgeIcon: Icons.sensors_rounded,
            badgeColor: isPaper
                ? AppColors.paperStreakFlame
                : AppColors.modeOnlineButton,
            imagePath: 'assets/images/webp/mode-online.webp',
            title: 'Ghép Online',
            buttonText: 'TÌM TRẬN',
            buttonIcon: Icons.sensors_rounded,
            buttonGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isPaper
                  ? const [
                      AppColors.orange,
                      AppColors.paperStreakFlame,
                    ]
                  : const [
                      AppColors.modeOnlineButton,
                      AppColors.modeOnlineButtonDark,
                    ],
            ),
            buttonExtrusionColor: isPaper
                ? AppColors.paperStreakText
                : AppColors.modeOnlineButtonExtrusion,
            cardBorderColor: AppColors.modeOnlineBorder,
            cardShadowColor: isPaper
                ? AppColors.paperStreakText
                : AppColors.modeOnlineShadow,
            isPaperTheme: isPaper,
            onTap: () {
              Navigator.of(context).pop();
              onOnlineMatch?.call();
            },
          ),
        ),
        SizedBox(width: 6.w),

        // Mode 4: ID
        Expanded(
          child: TopicModeItem(
            badgeText: '1 VS 1',
            badgeIcon: Icons.tag_rounded,
            badgeColor: isPaper
                ? AppColors.paperGreenDark
                : AppColors.modeIdButton,
            imagePath: 'assets/images/webp/mode-id.webp',
            title: 'Thách Đấu',
            buttonText: 'TẠO PHÒNG',
            buttonIcon: Icons.sports_kabaddi_rounded,
            buttonGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isPaper
                  ? const [
                      AppColors.modeIdButton,
                      AppColors.classicButtonBlue,
                    ]
                  : const [
                      AppColors.modeIdButton,
                      AppColors.modeIdButtonDark,
                    ],
            ),
            buttonExtrusionColor: isPaper
                ? AppColors.classicButtonBlueExtrusion
                : AppColors.modeIdButtonExtrusion,
            cardBorderColor: AppColors.modeIdBorder,
            cardShadowColor: isPaper
                ? AppColors.classicButtonBlueExtrusion
                : AppColors.modeIdShadow,
            isPaperTheme: isPaper,
            onTap: () {
              Navigator.of(context).pop();
              onIdChallenge?.call();
            },
          ),
        ),
      ],
    );
  }
}

/// Alias để tương thích ngược
typedef HomeModeDialog = TopicModeDialog;

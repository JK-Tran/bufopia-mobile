import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/app_login_prompt_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/mode/word_guess_mode_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại chọn chế độ chơi Word Guess
/// Ô thẻ rộng rãi, thoáng đãng, không bị cắt chữ ở nút và phụ đề
/// Paper Theme: 3 nút đồng bộ màu xanh lá paperGreen giống Vocabulary
/// Classic Theme: 3 nút chia 3 màu đặc trưng (Xanh Bot, Cam Online, Xanh ID)
class WordGuessModeDialog extends StatelessWidget {
  const WordGuessModeDialog({
    required this.topicId,
    super.key,
    this.isPaperTheme,
    this.onChangeTopic,
    this.onSoloPractice,
    this.onOnlineMatch,
    this.onCustomRoom,
  });

  final String topicId;
  final bool? isPaperTheme;
  final VoidCallback? onChangeTopic;
  final VoidCallback? onSoloPractice;
  final VoidCallback? onOnlineMatch;
  final VoidCallback? onCustomRoom;

  static Future<void> show(
    BuildContext context, {
    required String topicId,
    VoidCallback? onChangeTopic,
    VoidCallback? onSoloPractice,
    VoidCallback? onOnlineMatch,
    VoidCallback? onCustomRoom,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return AppGameDialog.show(
      context: context,
      title: 'CHỌN CHẾ ĐỘ CHƠI',
      icon: Icons.sports_esports_rounded,
      maxWidth: 365.w,
      footerText: '⭐ Chọn chế độ để bắt đầu đoán từ vựng ⭐',
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
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
      child: WordGuessModeDialog(
        topicId: topicId,
        isPaperTheme: isPaper,
        onChangeTopic: onChangeTopic,
        onSoloPractice: onSoloPractice,
        onOnlineMatch: onOnlineMatch,
        onCustomRoom: onCustomRoom,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isGuest = context.select<AuthBloc, bool>((b) => b.state.isGuest);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ── Mode 1: Tự luyện tập (Đấu với Bot / Solo) ─────────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: false,
          badgeText: '1 NGƯỜI',
          badgeIcon: Icons.person_rounded,
          badgeColor: isPaper ? AppColors.paperGreen : AppColors.modeBotButton,
          imagePath: 'assets/images/webp/mode-bot.webp',
          title: 'Tự luyện tập',
          subtitle: 'Luyện đoán từ cùng Bot thông minh',
          buttonText: 'CHƠI NGAY',
          buttonIcon: Icons.play_arrow_rounded,
          classicButtonGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.modeBotButton,
              AppColors.modeBotButtonDark,
            ],
          ),
          classicButtonExtrusion: AppColors.modeBotButtonExtrusion,
          classicBorderColor: AppColors.modeBotBorder,
          classicShadowColor: AppColors.modeBotShadow,
          onTap: () {
            Navigator.of(context).pop();
            onSoloPractice?.call();
          },
        ),

        SizedBox(height: 10.h),

        // ── Mode 2: Ghép Online ───────────────────────────────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: isGuest,
          badgeText: 'GHÉP CẶP',
          badgeIcon: Icons.sensors_rounded,
          badgeColor: isPaper
              ? AppColors.paperStreakFlame
              : AppColors.modeOnlineButton,
          imagePath: 'assets/images/webp/mode-online.webp',
          title: 'Ghép Online',
          subtitle: 'Ghép ngẫu nhiên so tài trực tuyến',
          buttonText: 'TÌM TRẬN',
          buttonIcon: Icons.sensors_rounded,
          classicButtonGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.modeOnlineButton,
              AppColors.modeOnlineButtonDark,
            ],
          ),
          classicButtonExtrusion: AppColors.modeOnlineButtonExtrusion,
          classicBorderColor: AppColors.modeOnlineBorder,
          classicShadowColor: AppColors.modeOnlineShadow,
          onTap: () {
            if (isGuest) {
              AppLoginPromptDialog.show(
                context,
                featureName: 'chế độ Ghép Online',
              );
              return;
            }
            Navigator.of(context).pop();
            onOnlineMatch?.call();
          },
        ),

        SizedBox(height: 10.h),

        // ── Mode 3: Thách Đấu (Phòng riêng) ───────────────────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: isGuest,
          badgeText: '1 VS 1',
          badgeIcon: Icons.tag_rounded,
          badgeColor: isPaper
              ? AppColors.paperGreenDark
              : AppColors.modeIdButton,
          imagePath: 'assets/images/webp/mode-id.webp',
          title: 'Thách Đấu',
          subtitle: 'Tạo phòng so tài cùng bạn bè',
          buttonText: 'VÀO PHÒNG',
          buttonIcon: Icons.sports_kabaddi_rounded,
          classicButtonGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.modeIdButton,
              AppColors.modeIdButtonDark,
            ],
          ),
          classicButtonExtrusion: AppColors.modeIdButtonExtrusion,
          classicBorderColor: AppColors.modeIdBorder,
          classicShadowColor: AppColors.modeIdShadow,
          onTap: () {
            if (isGuest) {
              AppLoginPromptDialog.show(
                context,
                featureName: 'chế độ Thách Đấu Phòng Riêng',
              );
              return;
            }
            Navigator.of(context).pop();
            onCustomRoom?.call();
          },
        ),
      ],
    );
  }
}

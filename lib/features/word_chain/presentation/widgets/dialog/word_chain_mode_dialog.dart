import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/app_login_prompt_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_mode_item.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại "CHỌN CÁCH LUYỆN NỐI TỪ"
/// Thiết kế chuẩn UI/UX 3D Game, tối ưu hoàn hảo cho màn hình dọc điện thoại.
class WordChainModeDialog extends StatelessWidget {
  const WordChainModeDialog({
    super.key,
    this.isPaperTheme,
    this.onBotTimed,
    this.onBotRelax,
    this.onOnlineTimed,
    this.onOnlineRelax,
    this.onInviteTimed,
    this.onInviteRelax,
  });

  final bool? isPaperTheme;
  final VoidCallback? onBotTimed;
  final VoidCallback? onBotRelax;
  final VoidCallback? onOnlineTimed;
  final VoidCallback? onOnlineRelax;
  final VoidCallback? onInviteTimed;
  final VoidCallback? onInviteRelax;

  static Future<void> show(
    BuildContext context, {
    VoidCallback? onBotTimed,
    VoidCallback? onBotRelax,
    VoidCallback? onOnlineTimed,
    VoidCallback? onOnlineRelax,
    VoidCallback? onInviteTimed,
    VoidCallback? onInviteRelax,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (ctx) => WordChainModeDialog(
        isPaperTheme: isPaper,
        onBotTimed: onBotTimed,
        onBotRelax: onBotRelax,
        onOnlineTimed: onOnlineTimed,
        onOnlineRelax: onOnlineRelax,
        onInviteTimed: onInviteTimed,
        onInviteRelax: onInviteRelax,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isGuest = context.select<AuthBloc, bool>((b) => b.state.isGuest);
    final l10n = context.l10n;

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // Màu nền và viền theo theme
    final dialogBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final dialogBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final titleCol = isPaper
        ? AppColors.paperTextDark
        : AppColors.paperSectionTitle;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: isLandscape ? 32.w : 14.w,
        vertical: 16.h,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isLandscape ? 480.w : 355.w,
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(14.w, 14.h, 14.w, 14.h),
            decoration: BoxDecoration(
              color: dialogBg,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: dialogBorder,
                width: 2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.black.withValues(alpha: 0.12),
                  offset: Offset(0, 4.h),
                ),
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.16),
                  blurRadius: 18.r,
                  offset: Offset(0, 8.h),
                ),
              ],
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ── 1. Header Bar: Tiêu đề, Badge, Nút Đóng ─────────
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Cột bên trái: Tiêu đề & Subtitle
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.t2(
                              l10n.wordChainModeTitle,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: titleCol,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 8.w),

                      // Cột bên phải: Badge "3 CÁCH LUYỆN" + Nút đóng tròn
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 3.5.h,
                            ),
                            decoration: BoxDecoration(
                              color: isPaper
                                  ? AppColors.paperBadgeBg.withValues(
                                      alpha: 0.7,
                                    )
                                  : AppColors.lightBackground,
                              borderRadius: BorderRadius.circular(14.r),
                              border: Border.all(
                                color: isPaper
                                    ? AppColors.paperBadgeBorder
                                    : AppColors.grayExtrusion,
                                width: 1.w,
                              ),
                            ),
                            child: AppText.c1(
                              l10n.threeModesBadge,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: isPaper
                                  ? AppColors.paperBadgeText
                                  : AppColors.grayDark,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          AppButton.close(
                            onPressed: () {
                              context.read<AppBloc>().add(
                                const AppEvent.clickSoundPlayed(),
                              );
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 14.h),

                  // ── 2. Danh sách 3 Thẻ Chế Độ (Xếp Dọc Thoải Mái) ──────
                  // Card 1: Luyện với máy
                  WordChainModeItem(
                    badgeText: l10n.onePlayerBadge,
                    imagePath: 'assets/images/webp/mode-bot.webp',
                    title: l10n.practiceBot,
                    description: l10n.practiceBotDesc,
                    isPaperTheme: isPaper,
                    onTimedPressed: () {
                      Navigator.of(context).pop();
                      onBotTimed?.call();
                    },
                    onRelaxPressed: () {
                      Navigator.of(context).pop();
                      onBotRelax?.call();
                    },
                  ),

                  SizedBox(height: 10.h),

                  // Card 2: Luyện cùng online
                  WordChainModeItem(
                    badgeText: l10n.findFriendBadge,
                    imagePath: 'assets/images/webp/mode-online.webp',
                    title: l10n.practiceOnline,
                    description: l10n.practiceOnlineDesc,
                    isPaperTheme: isPaper,
                    isLocked: isGuest,
                    onLockedTap: () => AppLoginPromptDialog.show(
                      context,
                      featureName: 'chế độ Nối Từ Online',
                    ),
                    onTimedPressed: () {
                      Navigator.of(context).pop();
                      onOnlineTimed?.call();
                    },
                    onRelaxPressed: () {
                      Navigator.of(context).pop();
                      onOnlineRelax?.call();
                    },
                  ),

                  SizedBox(height: 10.h),

                  // Card 3: Mời bạn
                  WordChainModeItem(
                    badgeText: l10n.twoPlayersBadge,
                    imagePath: 'assets/images/webp/mode-id.webp',
                    title: l10n.inviteFriends,
                    description: l10n.inviteFriendsDesc,
                    isPaperTheme: isPaper,
                    isLocked: isGuest,
                    onLockedTap: () => AppLoginPromptDialog.show(
                      context,
                      featureName: 'chế độ Mời Bạn Phòng Riêng',
                    ),
                    onTimedPressed: () {
                      Navigator.of(context).pop();
                      onInviteTimed?.call();
                    },
                    onRelaxPressed: () {
                      Navigator.of(context).pop();
                      onInviteRelax?.call();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

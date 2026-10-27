import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Modal sảnh chuẩn bị ván mới (Rematch Lobby Card)
/// Thiết kế đồng bộ chuẩn 3D Game:
/// - Khi tìm trận (matchmaking): chỉ hiển thị tiêu đề, spinner loading,
///   và thông điệp chuẩn bị
/// - Khi trong phòng tùy chỉnh: hiển thị danh sách người chơi và nút Sẵn sàng
class WordGuessRematchLobbyCard extends StatelessWidget {
  const WordGuessRematchLobbyCard({
    required this.state,
    required this.isPaper,
    this.onLeave,
    super.key,
  });

  final WordGuessState state;
  final bool isPaper;
  final VoidCallback? onLeave;

  @override
  Widget build(BuildContext context) {
    final isMatchmaking = state.mode == WordGuessGameMode.matchmake;
    final players = state.gameState.players;
    final myUid = state.myUid;
    final me = players.where((p) => p.uid == myUid).firstOrNull;
    final isHost = me?.isHost ?? false;
    final isMyReady = me?.isReady ?? false;
    final otherGuests = players.where((p) => !p.isHost).toList();
    final allGuestsReady =
        otherGuests.isNotEmpty && otherGuests.every((p) => p.isReady);

    final cardBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final cardBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final dividerColor = isPaper
        ? AppColors.paperDottedLine
        : AppColors.grayLight;

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
        decoration: BoxDecoration(
          color: cardBg,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: cardBorder,
            width: 1.5.w,
          ),
          boxShadow: [
            BoxShadow(
              color: isPaper
                  ? AppColors.paperExtrusion
                  : AppColors.grayExtrusion,
              offset: Offset(0, 4.h),
            ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.06),
              blurRadius: 10.r,
              offset: Offset(0, 3.h),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── 1. Tiêu đề: PHÒNG ĐOÁN TỪ (nút X nếu không phải matchmake) ──
            Row(
              children: [
                Icon(
                  Icons.mail_outline_rounded,
                  size: 20.r,
                  color: isPaper ? AppColors.paperGreen : AppColors.green,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: AppText.b1(
                    context.l10n.wordGuessRoomTitle,
                    color: isPaper
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (onLeave != null && !isMatchmaking)
                  InkWell(
                    onTap: onLeave,
                    borderRadius: BorderRadius.circular(16.r),
                    child: Container(
                      padding: EdgeInsets.all(4.r),
                      decoration: BoxDecoration(
                        color: AppColors.red.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        size: 16.r,
                        color: AppColors.red,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 12.h),

            // Đường nét đứt phân cách
            AppDotted(
              color: dividerColor,
              height: 1.2,
              dashWidth: 4,
            ),
            SizedBox(height: 20.h),

            // ── 2. Vòng xoay loading & thông điệp chuẩn bị ván ─────────
            Center(
              child: SizedBox(
                width: 38.r,
                height: 38.r,
                child: CircularProgressIndicator(
                  strokeWidth: 3.2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isPaper ? AppColors.paperGreen : AppColors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h),

            AppText.b1(
              context.l10n.preparingMatch,
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 6.h),

            AppText.c1(
              context.l10n.preparingMatchDesc,
              color: isPaper ? AppColors.paperTextMedium : AppColors.grayMedium,
              fontSize: 12.sp,
              textAlign: TextAlign.center,
            ),

            // ── 3. Danh sách người chơi (Chỉ hiển thị khi có phòng custom) ──
            if (!isMatchmaking && players.isNotEmpty) ...[
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperSurfaceWarm
                      : AppColors.lightBackground,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.classicBorder,
                    width: 1.w,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: players.map((p) {
                    final isCurrent = p.uid == myUid;
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Row(
                        children: [
                          AppAvatar(avatarUrl: p.avatar, size: 24.r),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: AppText.c1(
                                    p.name,
                                    color: isPaper
                                        ? AppColors.paperTextDark
                                        : AppColors.grayDark,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (p.isHost) ...[
                                  SizedBox(width: 4.w),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 1.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.gold,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: AppText.c1(
                                      context.l10n.roomHost,
                                      color: AppColors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                                if (isCurrent && !p.isHost) ...[
                                  SizedBox(width: 4.w),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 1.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isPaper
                                          ? AppColors.paperGreen
                                          : AppColors.green,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: AppText.c1(
                                      context.l10n.you,
                                      color: AppColors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                p.isReady
                                    ? Icons.check_circle_rounded
                                    : Icons.hourglass_top_rounded,
                                size: 12.r,
                                color: p.isReady
                                    ? (isPaper
                                          ? AppColors.paperGreen
                                          : AppColors.green)
                                    : AppColors.orange,
                              ),
                              SizedBox(width: 3.w),
                              AppText.c1(
                                p.isReady
                                    ? context.l10n.readyBtn
                                    : context.l10n.waiting,
                                color: p.isReady
                                    ? (isPaper
                                          ? AppColors.paperGreenDark
                                          : AppColors.greenDark)
                                    : AppColors.orangeDark,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],

            // ── 4. Nút hành động (Chỉ có ở phòng custom, bỏ khi matchmake) ──
            if (!isMatchmaking) ...[
              SizedBox(height: 16.h),
              if (isHost && allGuestsReady) ...[
                AppButton(
                  text: context.l10n.startGame,
                  height: 40.h,
                  fontSize: 12.sp,
                  backgroundColor: isPaper
                      ? AppColors.paperGreen
                      : AppColors.green,
                  borderColor: isPaper
                      ? AppColors.paperGreenBorder
                      : AppColors.white.withValues(alpha: 0.3),
                  extrusionColor: isPaper
                      ? AppColors.paperGreenExtrusion
                      : AppColors.greenDark,
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    size: 18.r,
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    context.read<WordGuessBloc>().add(
                      const WordGuessEvent.startGame(),
                    );
                  },
                ),
                SizedBox(height: 8.h),
              ] else if (!isHost && !isMyReady) ...[
                AppButton(
                  text: context.l10n.readyBtn,
                  height: 40.h,
                  fontSize: 12.sp,
                  backgroundColor: isPaper
                      ? AppColors.paperGreen
                      : AppColors.green,
                  borderColor: isPaper
                      ? AppColors.paperGreenBorder
                      : AppColors.white.withValues(alpha: 0.3),
                  extrusionColor: isPaper
                      ? AppColors.paperGreenExtrusion
                      : AppColors.greenDark,
                  icon: Icon(
                    Icons.check_rounded,
                    size: 16.r,
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    context.read<WordGuessBloc>().add(
                      const WordGuessEvent.toggleReady(),
                    );
                  },
                ),
                SizedBox(height: 8.h),
              ],

              if (onLeave != null)
                AppButton(
                  text: context.l10n.leaveRoom,
                  height: 38.h,
                  fontSize: 12.sp,
                  backgroundColor: isPaper
                      ? AppColors.modeOnlineButtonDark
                      : AppColors.orangeDark,
                  borderColor: isPaper
                      ? AppColors.modeOnlineBorder
                      : AppColors.white.withValues(alpha: 0.3),
                  extrusionColor: isPaper
                      ? AppColors.modeOnlineButtonExtrusion
                      : AppColors.orangeDeep,
                  onPressed: onLeave,
                ),
            ],
          ],
        ),
      ),
    );
  }
}

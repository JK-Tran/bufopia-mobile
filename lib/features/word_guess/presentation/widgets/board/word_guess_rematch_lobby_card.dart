import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Card sảnh chờ khi chơi lại ván mới (Rematch Lobby Card)
/// Xuất hiện khi Host bấm "LUYỆN LẠI", server chuyển status sang 'lobby'.
/// Hiển thị danh sách người chơi, trạng thái SẴN SÀNG và nút BẮT ĐẦU/SẴN SÀNG 3D.
class WordGuessRematchLobbyCard extends StatelessWidget {
  const WordGuessRematchLobbyCard({
    required this.state,
    required this.isPaper,
    super.key,
  });

  final WordGuessState state;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    final players = state.gameState.players;
    final myUid = state.myUid;
    final me = players.where((p) => p.uid == myUid).firstOrNull;
    final isHost = me?.isHost ?? false;
    final isMyReady = me?.isReady ?? false;
    final otherGuests = players.where((p) => !p.isHost).toList();
    final allGuestsReady = otherGuests.isNotEmpty &&
        otherGuests.every((p) => p.isReady);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 3.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 6.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Tiêu đề sảnh
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperGreen.withValues(alpha: 0.15)
                      : AppColors.greenLight,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.sports_esports_rounded,
                  size: 20.r,
                  color: isPaper ? AppColors.paperGreen : AppColors.green,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.b1(
                      'SẴN SÀNG CHO VÁN MỚI',
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    if (state.gameState.roomCode.isNotEmpty)
                      AppText.c1(
                        'Phòng thi đấu: ${state.gameState.roomCode}',
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : AppColors.grayMedium,
                        fontSize: 12.sp,
                      ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),

          // Danh sách người chơi & trạng thái Ready
          ...players.map((p) {
            final isCurrent = p.uid == myUid;
            return Container(
              margin: EdgeInsets.only(bottom: 6.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isCurrent
                    ? (isPaper
                          ? AppColors.paperSurfaceWarm
                          : const Color(0xFFF1F5F9))
                    : (isPaper
                          ? AppColors.paperCardBg
                          : AppColors.lightBackground),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: isCurrent
                      ? (isPaper
                            ? AppColors.paperGreenBorder
                            : AppColors.green)
                      : (isPaper
                            ? AppColors.paperBorder
                            : AppColors.classicBorder),
                  width: 1.2.w,
                ),
              ),
              child: Row(
                children: [
                  AppAvatar(avatarUrl: p.avatar, size: 28.r),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: AppText.b2(
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
                              horizontal: 5.w,
                              vertical: 1.h,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF59E0B),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: AppText.c1(
                              'Chủ phòng',
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
                              horizontal: 5.w,
                              vertical: 1.h,
                            ),
                            decoration: BoxDecoration(
                              color: isPaper
                                  ? AppColors.paperGreen
                                  : AppColors.green,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: AppText.c1(
                              'Bạn',
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

                  // Chip trạng thái Ready
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: p.isReady
                          ? (isPaper
                                ? AppColors.paperGreen.withValues(alpha: 0.15)
                                : AppColors.green.withValues(alpha: 0.12))
                          : (isPaper
                                ? const Color(0xFFFEF3C7)
                                : const Color(0xFFFFFBEB)),
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: p.isReady
                            ? (isPaper
                                  ? AppColors.paperGreenBorder
                                  : AppColors.green)
                            : const Color(0xFFF59E0B),
                        width: 1.w,
                      ),
                    ),
                    child: Row(
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
                              : const Color(0xFFD97706),
                        ),
                        SizedBox(width: 3.w),
                        AppText.c1(
                          p.isReady ? 'SẴN SÀNG' : 'CHƯA SẴN SÀNG',
                          color: p.isReady
                              ? (isPaper
                                    ? AppColors.paperGreenDark
                                    : AppColors.greenDark)
                              : const Color(0xFFB45309),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          SizedBox(height: 10.h),

          // Nút bấm hành động (Host: BẮT ĐẦU / Guest: SẴN SÀNG)
          if (isHost) ...[
            if (isPaper)
              AppButton(
                text: 'BẮT ĐẦU VÁN ĐẤU',
                height: 42.h,
                fontSize: 12.sp,
                backgroundColor: AppColors.paperGreen,
                borderColor: AppColors.paperGreenBorder,
                extrusionColor: AppColors.paperGreenExtrusion,
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 18.r,
                  color: AppColors.white,
                ),
                onPressed: allGuestsReady
                    ? () {
                        context.read<AppBloc>().add(
                              const AppEvent.clickSoundPlayed(),
                            );
                        context.read<WordGuessBloc>().add(
                              const WordGuessEvent.startGame(),
                            );
                      }
                    : null,
              )
            else
              AppButton.success(
                text: 'BẮT ĐẦU VÁN ĐẤU',
                height: 42.h,
                fontSize: 12.sp,
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 18.r,
                  color: AppColors.white,
                ),
                onPressed: allGuestsReady
                    ? () {
                        context.read<AppBloc>().add(
                              const AppEvent.clickSoundPlayed(),
                            );
                        context.read<WordGuessBloc>().add(
                              const WordGuessEvent.startGame(),
                            );
                      }
                    : null,
              ),
            if (!allGuestsReady) ...[
              SizedBox(height: 4.h),
              AppText.c1(
                'Đang chờ tất cả người chơi sẵn sàng...',
                color: isPaper
                    ? AppColors.paperTextMuted
                    : AppColors.grayMedium,
                textAlign: TextAlign.center,
                fontSize: 10.sp,
              ),
            ],
          ] else ...[
            if (isPaper)
              AppButton(
                text: isMyReady ? 'HỦY SẴN SÀNG' : 'SẴN SÀNG',
                height: 42.h,
                fontSize: 12.sp,
                backgroundColor: isMyReady
                    ? AppColors.paperCardBg
                    : AppColors.paperGreen,
                borderColor: isMyReady
                    ? AppColors.paperBorder
                    : AppColors.paperGreenBorder,
                extrusionColor: isMyReady
                    ? AppColors.paperExtrusion
                    : AppColors.paperGreenExtrusion,
                textColor: isMyReady
                    ? AppColors.paperTextDark
                    : AppColors.white,
                icon: Icon(
                  isMyReady ? Icons.close_rounded : Icons.check_rounded,
                  size: 16.r,
                  color: isMyReady
                      ? AppColors.paperTextDark
                      : AppColors.white,
                ),
                onPressed: () {
                  context.read<AppBloc>().add(
                        const AppEvent.clickSoundPlayed(),
                      );
                  context.read<WordGuessBloc>().add(
                        const WordGuessEvent.toggleReady(),
                      );
                },
              )
            else
              AppButton(
                text: isMyReady ? 'HỦY SẴN SÀNG' : 'SẴN SÀNG',
                height: 42.h,
                fontSize: 12.sp,
                backgroundColor: isMyReady
                    ? AppColors.lightBackground
                    : AppColors.green,
                borderColor: isMyReady
                    ? AppColors.classicBorder
                    : AppColors.green,
                extrusionColor: isMyReady
                    ? AppColors.grayExtrusion
                    : AppColors.greenDark,
                textColor: isMyReady ? AppColors.grayDark : AppColors.white,
                icon: Icon(
                  isMyReady ? Icons.close_rounded : Icons.check_rounded,
                  size: 16.r,
                  color: isMyReady ? AppColors.grayDark : AppColors.white,
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
          ],
        ],
      ),
    );
  }
}

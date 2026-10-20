import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_guess/domain/entities/room_player.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_timer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Bảng điểm đấu trường Word Guess tối ưu cho Mobile (Score Board)
/// Thiết kế 3D đối xứng, không bao giờ bị cắt chữ trên màn hình hẹp:
/// - Chơi đơn: [Avatar Bạn] --- [Từ X · Đã tìm Y] --- [Đồng hồ 3D]
/// - Đối kháng: [P1 Avatar + Điểm] --- [Từ X · Đồng hồ] --- [Điểm + P2 Avatar]
class WordGuessScoreBoard extends StatelessWidget {
  const WordGuessScoreBoard({
    required this.currentRound,
    required this.foundCount,
    required this.secondsLeft,
    required this.isPaperTheme,
    super.key,
    this.players = const [],
    this.myUid = '',
    this.isSolo = false,
    this.myName = 'Bạn',
    this.myAvatar,
    this.hasTimer,
  });

  final int currentRound;
  final int foundCount;
  final int secondsLeft;
  final bool isPaperTheme;
  final List<RoomPlayer> players;
  final String myUid;
  final bool isSolo;
  final String myName;
  final String? myAvatar;
  final bool? hasTimer;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final showTimer = hasTimer ?? (!isSolo && secondsLeft > 0);

    if (isSolo || players.isEmpty) {
      // ── HUD Solo Practice ──────────────────────────────────────────
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                AppAvatar(avatarUrl: myAvatar, size: 28.r),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.b2(
                        myName.isNotEmpty ? myName : 'Bạn',
                        color: isPaper
                            ? AppColors.paperTextDark
                            : AppColors.grayDark,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AppText.c1(
                        'Từ $currentRound · $foundCount từ đã tìm',
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : AppColors.grayMedium,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (showTimer) ...[
            SizedBox(width: 8.w),
            WordGuessTimerItem(
              secondsLeft: secondsLeft,
              isPaperTheme: isPaperTheme,
            ),
          ],
        ],
      );
    }

    // ── HUD Multiplayer Đối Kháng (2 Người chơi) ─────────────────────
    final myPlayer =
        players.where((p) => p.uid == myUid).firstOrNull ?? players.first;
    final rivalPlayer =
        players.where((p) => p.uid != myUid).firstOrNull ??
        (players.length > 1 ? players[1] : null);

    final myScore = myPlayer.effectiveScore;
    final rivalScore = rivalPlayer?.effectiveScore ?? 0;
    final rivalName = rivalPlayer?.name.isNotEmpty == true
        ? rivalPlayer!.name
        : 'Đối thủ';
    final rivalAvatar = rivalPlayer?.avatar;

    return Row(
      children: [
        // Người chơi (Bạn)
        Expanded(
          child: _PlayerScorePill(
            avatarUrl: myAvatar,
            name: myName.isNotEmpty ? myName : 'Bạn',
            score: myScore,
            isMe: true,
            isPaper: isPaper,
          ),
        ),

        // Cột trung tâm: Vòng đấu & Đồng hồ (chỉ hiện khi có tính giờ)
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText.c1(
                'Từ $currentRound',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              if (showTimer) ...[
                SizedBox(height: 3.h),
                WordGuessTimerItem(
                  secondsLeft: secondsLeft,
                  isPaperTheme: isPaperTheme,
                ),
              ],
            ],
          ),
        ),

        // Đối thủ
        Expanded(
          child: _PlayerScorePill(
            avatarUrl: rivalAvatar,
            name: rivalName,
            score: rivalScore,
            isMe: false,
            isPaper: isPaper,
          ),
        ),
      ],
    );
  }
}

/// Capsule hiển thị điểm người chơi đối kháng
class _PlayerScorePill extends StatelessWidget {
  const _PlayerScorePill({
    required this.name,
    required this.score,
    required this.isMe,
    required this.isPaper,
    this.avatarUrl,
  });

  final String name;
  final int score;
  final bool isMe;
  final bool isPaper;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    final borderColor = isMe
        ? (isPaper ? AppColors.paperGreenBorder : AppColors.primary)
        : (isPaper ? AppColors.paperAmberBadgeBorder : AppColors.orange);

    final scoreBadgeBg = isMe
        ? (isPaper ? AppColors.paperGreen : AppColors.primary)
        : (isPaper ? AppColors.paperStreakFlame : AppColors.orange);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: borderColor,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper
                ? AppColors.paperExtrusion.withValues(alpha: 0.35)
                : AppColors.black.withValues(alpha: 0.05),
            offset: Offset(0, 2.h),
            blurRadius: isPaper ? 0 : 4.r,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppAvatar(avatarUrl: avatarUrl, size: 24.r),
          SizedBox(width: 6.w),
          Expanded(
            child: AppText.c1(
              name,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            ),
          ),
          SizedBox(width: 6.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: scoreBadgeBg,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: AppText.c1(
              '$score',
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

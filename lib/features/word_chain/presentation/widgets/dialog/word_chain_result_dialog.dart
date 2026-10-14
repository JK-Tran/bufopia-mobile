import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/duel_versus_result_card.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại kết quả ván đấu nối từ theo chuẩn giao diện Web
class WordChainResultDialog extends StatelessWidget {
  const WordChainResultDialog({
    required this.isWinner,
    required this.finishReason,
    required this.onRematch,
    required this.onBackHome,
    super.key,
    this.reward,
    this.player1Name = 'Bạn',
    this.player1Avatar,
    this.player1Lives = 3,
    this.player2Name = 'Đối thủ',
    this.player2Avatar,
    this.player2Lives = 3,
    this.p1CorrectCount = 0,
    this.p2CorrectCount = 0,
    this.p1FastestTime = '—',
    this.p2FastestTime = '—',
    this.p1Accuracy = '0%',
    this.p2Accuracy = '0%',
    this.p1Streak = '0',
    this.p2Streak = '0',
  });

  final bool isWinner;
  final String? finishReason;
  final Reward? reward;
  final String player1Name;
  final String? player1Avatar;
  final int player1Lives;
  final String player2Name;
  final String? player2Avatar;
  final int player2Lives;
  final int p1CorrectCount;
  final int p2CorrectCount;
  final String p1FastestTime;
  final String p2FastestTime;
  final String p1Accuracy;
  final String p2Accuracy;
  final String p1Streak;
  final String p2Streak;
  final VoidCallback onRematch;
  final VoidCallback onBackHome;

  static Future<void> show(
    BuildContext context, {
    required bool isWinner,
    required VoidCallback onRematch,
    required VoidCallback onBackHome,
    WordChainBloc? bloc,
    String? finishReason,
    Reward? reward,
    String player1Name = 'Bạn',
    String? player1Avatar,
    int player1Lives = 3,
    String player2Name = 'Đối thủ',
    String? player2Avatar,
    int player2Lives = 3,
    int p1CorrectCount = 0,
    int p2CorrectCount = 0,
    String p1FastestTime = '—',
    String p2FastestTime = '—',
    String p1Accuracy = '0%',
    String p2Accuracy = '0%',
    String p1Streak = '0',
    String p2Streak = '0',
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.black.withValues(alpha: 0.6),
      builder: (_) {
        final dialog = WordChainResultDialog(
          isWinner: isWinner,
          finishReason: finishReason,
          reward: reward,
          player1Name: player1Name,
          player1Avatar: player1Avatar,
          player1Lives: player1Lives,
          player2Name: player2Name,
          player2Avatar: player2Avatar,
          player2Lives: player2Lives,
          p1CorrectCount: p1CorrectCount,
          p2CorrectCount: p2CorrectCount,
          p1FastestTime: p1FastestTime,
          p2FastestTime: p2FastestTime,
          p1Accuracy: p1Accuracy,
          p2Accuracy: p2Accuracy,
          p1Streak: p1Streak,
          p2Streak: p2Streak,
          onRematch: onRematch,
          onBackHome: onBackHome,
        );
        if (bloc != null) {
          return BlocProvider.value(value: bloc, child: dialog);
        }
        return dialog;
      },
    );
  }

  String _getReasonText() {
    switch (finishReason) {
      case 'lives_depleted':
        return isWinner ? 'Đối thủ đã hết số mạng!' : 'Bạn đã hết số mạng!';
      case 'timeout':
        return isWinner ? 'Đối thủ đã hết thời gian!' : 'Bạn đã hết thời gian!';
      case 'surrender':
        return isWinner
            ? 'Đối thủ đã đầu hàng!'
            : 'Bạn đã kết thúc sớm ván đấu!';
      case 'left':
      case 'abandoned':
        return 'Đối thủ đã thoát khỏi trận đấu!';
      default:
        return isWinner
            ? 'Chiến thắng thuộc về bạn!'
            : 'Chúc bạn may mắn lần sau!';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    // Xây dựng danh sách badges cho Player 1
    final gainedXp = reward != null
        ? reward!.gainedXp
        : (p1CorrectCount > 0 ? (isWinner ? 45 : 15) : 0);
    final streakDays = (reward != null && reward!.streak > 0)
        ? reward!.streak
        : 2;

    final p1Badges = <Widget>[
      DuelBadgeChip.xp(gainedXp),
      DuelBadgeChip.streak(streakDays),
    ];
    if (isWinner && p1CorrectCount > 0) {
      p1Badges.add(DuelBadgeChip.winStreak(1));
    }

    // Xây dựng danh sách badges cho Player 2
    final p2Badges = <Widget>[
      DuelBadgeChip.rival(),
      if (!isWinner)
        DuelBadgeChip.rival(text: 'Dẫn đầu lượt luyện'),
    ];

    final p1Card = DuelPlayerSummaryCard(
      name: player1Name,
      avatarUrl: player1Avatar,
      isLeader: isWinner,
      lives: player1Lives.clamp(0, 3),
      correctCount: '$p1CorrectCount từ',
      fastestTime: p1FastestTime,
      accuracy: p1Accuracy,
      streak: p1Streak,
      badges: p1Badges,
      isPaper: isPaper,
    );

    final p2Card = DuelPlayerSummaryCard(
      name: player2Name,
      avatarUrl: player2Avatar,
      nameColor: const Color(0xFF1E88E5),
      isLeader: !isWinner,
      lives: player2Lives.clamp(0, 3),
      correctCount: '$p2CorrectCount từ',
      fastestTime: p2FastestTime,
      accuracy: p2Accuracy,
      streak: p2Streak,
      badges: p2Badges,
      isPaper: isPaper,
    );

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        Navigator.of(context).pop();
        onBackHome();
      },
      child: Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: isPaper ? AppColors.paperCardBg : Colors.white,
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: isPaper
                      ? AppColors.paperBorder
                      : const Color(0xFFE0E0E0),
                  width: 2.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.18),
                    offset: Offset(0, 6.h),
                    blurRadius: 16.r,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Tiêu đề trận đấu
                    AppText.h1(
                      isWinner ? '🎉 CHIẾN THẮNG!' : '😢 KẾT THÚC VÁN ĐẤU',
                      color: isWinner
                          ? (isPaper
                              ? AppColors.paperGreenDark
                              : AppColors.green)
                          : AppColors.red,
                      fontWeight: FontWeight.w800,
                      fontSize: 18.sp,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      _getReasonText(),
                      style: TextStyle(
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : const Color(0xFF757575),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12.h),

                    // Khối đối đầu VS bố cục dọc chuẩn mobile
                    DuelVersusResultView(
                      player1Card: p1Card,
                      player2Card: p2Card,
                      isPaper: isPaper,
                      isVertical: true,
                    ),

                    SizedBox(height: 16.h),

                    // Hàng nút: Về trang chủ & Chơi lại
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton.secondary(
                          text: 'VỀ TRANG CHỦ',
                          icon: const Icon(
                            Icons.home_rounded,
                            size: 16,
                            color: Color(0xFF616161),
                          ),
                          width: 130.w,
                          height: 38.h,
                          fontSize: 12.sp,
                          onPressed: () {
                            Navigator.of(context).pop();
                            onBackHome();
                          },
                        ),
                        SizedBox(width: 12.w),
                        _buildRematchButton(context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRematchButton(BuildContext context) {
    WordChainState? chainState;
    try {
      chainState = context.watch<WordChainBloc>().state;
    } on Object catch (_) {
      chainState = null;
    }

    final isRematchPending = chainState?.isRematchPending ?? false;
    final isRivalReady = chainState?.isRivalRematchReady ?? false;

    final String btnText;
    final Widget btnIcon;
    if (isRematchPending) {
      btnText = 'ĐANG CHỜ ĐỐI PHƯƠNG...';
      btnIcon = const SizedBox(
        width: 14,
        height: 14,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      );
    } else if (isRivalReady) {
      btnText = 'ĐỐI THỦ ĐÃ SẴN SÀNG!';
      btnIcon = const Icon(
        Icons.replay_rounded,
        size: 16,
        color: Colors.white,
      );
    } else {
      btnText = 'CHƠI LẠI';
      btnIcon = const Icon(
        Icons.replay_rounded,
        size: 16,
        color: Colors.white,
      );
    }

    return AppButton.success(
      text: btnText,
      icon: btnIcon,
      width: (isRematchPending || isRivalReady) ? 180.w : 130.w,
      height: 38.h,
      fontSize: (isRematchPending || isRivalReady) ? 10.sp : 12.sp,
      onPressed: isRematchPending ? null : onRematch,
    );
  }
}

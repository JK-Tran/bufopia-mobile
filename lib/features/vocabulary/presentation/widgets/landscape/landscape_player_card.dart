import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Thẻ thông tin người chơi (Capsule) màn hình ngang cho Player 1 hoặc Player 2
class LandscapePlayerCard extends StatelessWidget {
  const LandscapePlayerCard({
    required this.isPlayer1,
    required this.name,
    required this.avatarPath,
    required this.score,
    required this.isPaper,
    super.key,
  });

  final bool isPlayer1;
  final String name;
  final String avatarPath;
  final int score;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    final avatarBorderColor = isPaper
        ? (isPlayer1 ? AppColors.playerPinkBorder : AppColors.playerBlueBorder)
        : AppColors.white;

    final avatar = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: avatarBorderColor, width: 2),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: isPaper ? 0.05 : 0.2),
                offset: const Offset(0, 2),
                blurRadius: 3,
              ),
            ],
          ),
          child: ClipOval(
            child: AppAvatar(
              avatarUrl: avatarPath,
              size: 36,
            ),
          ),
        ),
        const Positioned(
          top: -5,
          left: 9,
          child: Icon(
            Icons.military_tech_rounded,
            size: 14,
            color: AppColors.gold,
          ),
        ),
      ],
    );

    final containerDecoration = isPaper
        ? BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 1.5,
            ),
            boxShadow: [
              const BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 2.5),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.05),
                offset: const Offset(0, 3),
                blurRadius: 4,
              ),
            ],
          )
        : BoxDecoration(
            gradient: LinearGradient(
              colors: isPlayer1
                  ? const [AppColors.playerPinkLight, AppColors.playerPinkDark]
                  : const [AppColors.playerBlueLight, AppColors.playerBlueDark],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: isPlayer1
                  ? AppColors.playerPinkBorder
                  : AppColors.playerBlueBorder,
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.16),
                offset: const Offset(0, 2.5),
                blurRadius: 3,
              ),
            ],
          );

    final nameColor = isPaper ? AppColors.paperTextMedium : AppColors.white;
    final scoreColor = isPaper
        ? (isPlayer1 ? AppColors.playerPinkDark : AppColors.playerBlueDark)
        : AppColors.white;

    final infoColumn = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: isPlayer1
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        AppText.t2(
          '$score',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: scoreColor,
        ),
        AppText.c1(
          name,
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: nameColor,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );

    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: containerDecoration,
      child: Row(
        children: isPlayer1
            ? [
                avatar,
                const SizedBox(width: 8),
                Expanded(child: infoColumn),
              ]
            : [
                Expanded(child: infoColumn),
                const SizedBox(width: 8),
                avatar,
              ],
      ),
    );
  }
}

import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/app_login_prompt_dialog.dart';
import 'package:bufopia/features/word_guess/data/datasources/word_guess_preferences.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_guess_difficulty.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/mode/word_guess_mode_item.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại chọn chế độ chơi và trình độ (Level / Difficulty) Word Guess.
/// - Phía trên: Bộ chọn Trình độ (Easy, Medium, Hard) 3D Game CEFR.
/// - Phía dưới: 3 Chế độ chơi (Solo Practice, Online Matchmaking, Custom Room).
/// Tuân thủ nghiêm ngặt Clean Architecture và UI/UX 3D Game Guidelines.
class WordGuessModeDialog extends StatefulWidget {
  const WordGuessModeDialog({
    required this.topicId,
    super.key,
    this.isPaperTheme,
    this.initialDifficulty = WordGuessDifficulty.medium,
    this.onChangeTopic,
    this.onSoloPractice,
    this.onOnlineMatch,
    this.onCustomRoom,
  });

  final String topicId;
  final bool? isPaperTheme;
  final WordGuessDifficulty initialDifficulty;
  final VoidCallback? onChangeTopic;
  final void Function(WordGuessDifficulty difficulty)? onSoloPractice;
  final void Function(WordGuessDifficulty difficulty)? onOnlineMatch;
  final void Function(WordGuessDifficulty difficulty)? onCustomRoom;

  static Future<void> show(
    BuildContext context, {
    required String topicId,
    VoidCallback? onChangeTopic,
    void Function(WordGuessDifficulty difficulty)? onSoloPractice,
    void Function(WordGuessDifficulty difficulty)? onOnlineMatch,
    void Function(WordGuessDifficulty difficulty)? onCustomRoom,
  }) async {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;
    final l10n = context.l10n;
    final savedDifficulty = await WordGuessPreferences.getDifficulty();

    if (!context.mounted) return;

    return AppGameDialog.show(
      context: context,
      title: l10n.chooseGameMode,
      icon: Icons.sports_esports_rounded,
      maxWidth: 365.w,
      footerText: l10n.modeFooterGuess,
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
        initialDifficulty: savedDifficulty,
        onChangeTopic: onChangeTopic,
        onSoloPractice: onSoloPractice,
        onOnlineMatch: onOnlineMatch,
        onCustomRoom: onCustomRoom,
      ),
    );
  }

  @override
  State<WordGuessModeDialog> createState() => _WordGuessModeDialogState();
}

class _WordGuessModeDialogState extends State<WordGuessModeDialog> {
  late WordGuessDifficulty _selectedDifficulty;

  @override
  void initState() {
    super.initState();
    _selectedDifficulty = widget.initialDifficulty;
  }

  void _onSelectDifficulty(WordGuessDifficulty difficulty) {
    if (_selectedDifficulty == difficulty) return;

    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    setState(() {
      _selectedDifficulty = difficulty;
    });

    WordGuessPreferences.saveDifficulty(difficulty);
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = widget.isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isGuest = context.select<AuthBloc, bool>((b) => b.state.isGuest);
    final l10n = context.l10n;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // ── 0. BỘ CHỌN TRÌNH ĐỘ (Level / Difficulty Selector 3D) ─────
        _WordGuessDifficultySelector(
          selectedDifficulty: _selectedDifficulty,
          isPaper: isPaper,
          onSelected: _onSelectDifficulty,
        ),

        SizedBox(height: 10.h),

        // ── Mode 1: Tự luyện tập (Đấu với Bot / Solo) ─────────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: false,
          badgeText: l10n.onePlayerBadge,
          badgeIcon: Icons.person_rounded,
          badgeColor: isPaper ? AppColors.paperGreen : AppColors.modeBotButton,
          imagePath: 'assets/images/webp/mode-bot.webp',
          title: l10n.soloPractice,
          subtitle: l10n.soloPracticeDesc,
          buttonText: l10n.playNow,
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
            widget.onSoloPractice?.call(_selectedDifficulty);
          },
        ),

        SizedBox(height: 10.h),

        // ── Mode 2: Ghép Online (Luyện trực tuyến) ────────────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: isGuest,
          badgeText: l10n.findFriendBadge,
          badgeIcon: Icons.sensors_rounded,
          badgeColor: isPaper
              ? AppColors.paperStreakFlame
              : AppColors.modeOnlineButton,
          imagePath: 'assets/images/webp/mode-online.webp',
          title: l10n.onlineMatch,
          subtitle: l10n.onlineMatchDesc,
          buttonText: l10n.findFriendBadge,
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
                featureName: l10n.onlineMatch,
              );
              return;
            }
            Navigator.of(context).pop();
            widget.onOnlineMatch?.call(_selectedDifficulty);
          },
        ),

        SizedBox(height: 10.h),

        // ── Mode 3: Thách Đấu (Phòng bạn bè / Custom Room) ────────────
        WordGuessModeItem(
          isPaper: isPaper,
          isLocked: isGuest,
          badgeText: '1 VS 1',
          badgeIcon: Icons.tag_rounded,
          badgeColor: isPaper
              ? AppColors.paperGreenDark
              : AppColors.modeIdButton,
          imagePath: 'assets/images/webp/mode-id.webp',
          title: l10n.customRoom,
          subtitle: l10n.customRoomDesc,
          buttonText: l10n.joinRoom,
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
                featureName: l10n.customRoom,
              );
              return;
            }
            Navigator.of(context).pop();
            widget.onCustomRoom?.call(_selectedDifficulty);
          },
        ),
      ],
    );
  }
}

/// Khung Segmented chọn Trình độ (Level / Difficulty) 3D Game
/// Chuẩn Co-location theo VGV Guidelines - Tối ưu 2 theme Paper & Classic
class _WordGuessDifficultySelector extends StatelessWidget {
  const _WordGuessDifficultySelector({
    required this.selectedDifficulty,
    required this.isPaper,
    required this.onSelected,
  });

  final WordGuessDifficulty selectedDifficulty;
  final bool isPaper;
  final ValueChanged<WordGuessDifficulty> onSelected;

  IconData _getLevelIcon(WordGuessDifficulty d) {
    switch (d) {
      case WordGuessDifficulty.easy:
        return Icons.eco_rounded;
      case WordGuessDifficulty.medium:
        return Icons.bolt_rounded;
      case WordGuessDifficulty.hard:
        return Icons.local_fire_department_rounded;
    }
  }

  String _getLevelDetailedDesc(WordGuessDifficulty d) {
    switch (d) {
      case WordGuessDifficulty.easy:
        return 'Từ vựng cơ bản, ngắn, thông dụng hàng ngày';
      case WordGuessDifficulty.medium:
        return 'Từ vựng trung cấp thông dụng, phản xạ cân bằng';
      case WordGuessDifficulty.hard:
        return 'Từ vựng nâng cao, học thuật, nhiều từ dài thử thách';
    }
  }

  @override
  Widget build(BuildContext context) {
    final containerBg =
        isPaper ? AppColors.paperSurfaceWarm : const Color(0xFFF8FAFC);
    final containerBorder =
        isPaper ? AppColors.paperBorder : const Color(0xFFE2E8F0);
    final shadowColor = isPaper
        ? AppColors.paperExtrusion
        : const Color(0xFFCBD5E1);

    // Màu header capsule
    Color headerTagBg;
    Color headerTagBorder;
    Color headerTagText;
    if (isPaper) {
      headerTagBg = AppColors.paperGreen.withValues(alpha: 0.12);
      headerTagBorder = AppColors.paperGreenBorder;
      headerTagText = AppColors.paperGreenDark;
    } else {
      switch (selectedDifficulty) {
        case WordGuessDifficulty.easy:
          headerTagBg = const Color(0xFFECFDF5);
          headerTagBorder = const Color(0xFFA7F3D0);
          headerTagText = const Color(0xFF059669);
        case WordGuessDifficulty.medium:
          headerTagBg = const Color(0xFFFFFBEB);
          headerTagBorder = const Color(0xFFFDE68A);
          headerTagText = const Color(0xFFD97706);
        case WordGuessDifficulty.hard:
          headerTagBg = const Color(0xFFF5F3FF);
          headerTagBorder = const Color(0xFFDDD6FE);
          headerTagText = const Color(0xFF7C3AED);
      }
    }

    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: containerBg,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: containerBorder,
          width: 1.2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 2.5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Tiêu đề + Capsule huy hiệu trình độ hiện tại
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.r),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperBadgeBg
                      : const Color(0xFFEEF2F6),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Icon(
                  Icons.tune_rounded,
                  size: 13.r,
                  color: isPaper
                      ? AppColors.paperHeaderIcon
                      : AppColors.grayDark,
                ),
              ),
              SizedBox(width: 6.w),
              AppText.b2(
                'TRÌNH ĐỘ TỪ VỰNG',
                color: isPaper
                    ? AppColors.paperTextDark
                    : AppColors.grayDark,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
              const Spacer(),
              // Badge hiện tại - Vừa vặn không bao giờ tràn chữ
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.5.h),
                decoration: BoxDecoration(
                  color: headerTagBg,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: headerTagBorder, width: 1.w),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _getLevelIcon(selectedDifficulty),
                      size: 11.r,
                      color: headerTagText,
                    ),
                    SizedBox(width: 3.w),
                    AppText.c1(
                      selectedDifficulty.label,
                      color: headerTagText,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h),

          // 2. 3 Nút Tab cấp độ (Easy, Medium, Hard) 3D Game Chunky
          Row(
            children: WordGuessDifficulty.values.map((diff) {
              final isSelected = diff == selectedDifficulty;
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                  child: _WordGuessDifficultyTabItem(
                    difficulty: diff,
                    isSelected: isSelected,
                    isPaper: isPaper,
                    onTap: () => onSelected(diff),
                  ),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 8.h),

          // 3. Banner mô tả chi tiết toàn chiều rộng (không bị cắt chữ)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.5.h),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperBadgeBg.withValues(alpha: 0.6)
                  : headerTagBg.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: isPaper
                    ? AppColors.paperGreenBorder.withValues(alpha: 0.45)
                    : headerTagBorder.withValues(alpha: 0.8),
                width: 1.w,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  size: 12.r,
                  color: isPaper ? AppColors.paperGreenDark : headerTagText,
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: AppText.c1(
                    _getLevelDetailedDesc(selectedDifficulty),
                    color: isPaper ? AppColors.paperGreenDark : headerTagText,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Nút Tab chọn cấp độ đơn lẻ với hiệu ứng 3D Game Extrusion
class _WordGuessDifficultyTabItem extends StatelessWidget {
  const _WordGuessDifficultyTabItem({
    required this.difficulty,
    required this.isSelected,
    required this.isPaper,
    required this.onTap,
  });

  final WordGuessDifficulty difficulty;
  final bool isSelected;
  final bool isPaper;
  final VoidCallback onTap;

  IconData _getLevelIcon(WordGuessDifficulty d) {
    switch (d) {
      case WordGuessDifficulty.easy:
        return Icons.eco_rounded;
      case WordGuessDifficulty.medium:
        return Icons.bolt_rounded;
      case WordGuessDifficulty.hard:
        return Icons.local_fire_department_rounded;
    }
  }

  String _getLevelShortName(WordGuessDifficulty d) {
    switch (d) {
      case WordGuessDifficulty.easy:
        return 'DỄ';
      case WordGuessDifficulty.medium:
        return 'VỪA';
      case WordGuessDifficulty.hard:
        return 'KHÓ';
    }
  }

  String _getLevelCefr(WordGuessDifficulty d) {
    switch (d) {
      case WordGuessDifficulty.easy:
        return 'A1 - A2';
      case WordGuessDifficulty.medium:
        return 'A2 - B1';
      case WordGuessDifficulty.hard:
        return 'B2 - C1';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Cấu hình màu sắc đặc trưng cho từng cấp độ (Dễ: Xanh, Vừa: Cam, Khó: Tím)
    Color activeBg;
    Color activeBorder;
    Color activeExtrusion;
    Gradient? activeGradient;

    if (isPaper) {
      activeBg = AppColors.paperGreen;
      activeBorder = AppColors.paperGreenBorder;
      activeExtrusion = AppColors.paperGreenExtrusion;
      activeGradient = null;
    } else {
      switch (difficulty) {
        case WordGuessDifficulty.easy:
          activeBg = const Color(0xFF10B981);
          activeBorder = const Color(0xFF6EE7B7);
          activeExtrusion = const Color(0xFF047857);
          activeGradient = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF10B981), Color(0xFF059669)],
          );
        case WordGuessDifficulty.medium:
          activeBg = const Color(0xFFF59E0B);
          activeBorder = const Color(0xFFFDE68A);
          activeExtrusion = const Color(0xFFB45309);
          activeGradient = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF59E0B), Color(0xFFD97706)],
          );
        case WordGuessDifficulty.hard:
          activeBg = const Color(0xFF8B5CF6);
          activeBorder = const Color(0xFFDDD6FE);
          activeExtrusion = const Color(0xFF5B21B6);
          activeGradient = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8B5CF6), Color(0xFF6D28D9)],
          );
      }
    }

    // Inactive styling
    final inactiveBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final inactiveBorder =
        isPaper ? AppColors.paperBorder : const Color(0xFFE2E8F0);
    final inactiveExtrusion = isPaper
        ? AppColors.paperExtrusion
        : const Color(0xFFCBD5E1);

    final borderColor = isSelected ? activeBorder : inactiveBorder;
    final extrusionColor = isSelected ? activeExtrusion : inactiveExtrusion;
    final extrusionHeight = isSelected ? 2.5.h : 1.5.h;

    final titleColor = isSelected
        ? AppColors.white
        : (isPaper ? AppColors.paperTextDark : AppColors.grayDark);
    final cefrColor = isSelected
        ? AppColors.white.withValues(alpha: 0.95)
        : (isPaper ? AppColors.paperTextMedium : AppColors.grayMedium);
    final iconColor = isSelected
        ? AppColors.white
        : (isPaper ? AppColors.paperHeaderIcon : AppColors.grayDark);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
        decoration: BoxDecoration(
          color: isSelected && activeGradient == null
              ? activeBg
              : (!isSelected ? inactiveBg : null),
          gradient: isSelected ? activeGradient : null,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor,
            width: isSelected ? 1.5.w : 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: extrusionColor,
              offset: Offset(0, extrusionHeight),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row icon + tên cấp độ (DỄ / VỪA / KHÓ)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _getLevelIcon(difficulty),
                  size: 12.r,
                  color: iconColor,
                ),
                SizedBox(width: 3.w),
                AppText.b2(
                  _getLevelShortName(difficulty),
                  color: titleColor,
                  fontSize: 12.sp,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                ),
              ],
            ),
            SizedBox(height: 3.h),
            // Badge CEFR
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.white.withValues(alpha: 0.2)
                    : (isPaper
                        ? AppColors.paperBadgeBg.withValues(alpha: 0.5)
                        : const Color(0xFFF1F5F9)),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: AppText.c1(
                _getLevelCefr(difficulty),
                color: cefrColor,
                fontSize: 10.sp,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

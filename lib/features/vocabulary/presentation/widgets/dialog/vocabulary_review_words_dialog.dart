import 'dart:async';

import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_word_profiles_use_case.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Dialog Ôn Tập Từ Yếu thuộc Home Menu (Spaced Repetition System)
class VocabularyReviewWordsDialog extends StatefulWidget {
  const VocabularyReviewWordsDialog({
    super.key,
    this.onStartPractice,
  });

  final VoidCallback? onStartPractice;

  static Future<void> show(
    BuildContext context, {
    VoidCallback? onStartPractice,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return AppGameDialog.show(
      context: context,
      title: 'ÔN TẬP TỪ YẾU (SRS)',
      icon: Icons.psychology_rounded,
      maxWidth: 630.w,
      maxHeight: 295.h,
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
      footerText:
          '⭐ Thuật toán Spaced Repetition tự động nhắc từ bạn hay quên ⭐',
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: VocabularyReviewWordsDialog(
        onStartPractice: onStartPractice,
      ),
    );
  }

  @override
  State<VocabularyReviewWordsDialog> createState() =>
      _VocabularyReviewWordsDialogState();
}

class _VocabularyReviewWordsDialogState
    extends State<VocabularyReviewWordsDialog> {
  bool _isLoading = true;
  List<WordProfile> _profiles = [];

  @override
  void initState() {
    super.initState();
    _fetchProfiles();
  }

  Future<void> _fetchProfiles() async {
    try {
      final uidService = sl<DeviceUidService>();
      final uid = await uidService.getDeviceUid();
      final useCase = sl<GetWordProfilesUseCase>();
      final output = await useCase.execute(GetWordProfilesInput(uid: uid));

      if (mounted) {
        setState(() {
          _profiles = output.profiles;
          _isLoading = false;
        });
      }
    } on Exception catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.purple),
        ),
      );
    }

    if (_profiles.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sentiment_satisfied_alt_rounded,
              size: 48.w,
              color: AppColors.green,
            ),
            SizedBox(height: 8.h),
            AppText.b1(
              'Chưa có từ yếu nào cần ôn tập!',
              fontWeight: FontWeight.bold,
              color: AppColors.grayDark,
            ),
            SizedBox(height: 4.h),
            AppText.c1(
              'Hãy tham gia Quick Battle để tích lũy và kiểm tra vốn từ!',
              color: AppColors.grayMedium,
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Thanh tiêu đề phụ tóm tắt
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.b2(
                'Tổng cộng: ${_profiles.length} từ trong hồ sơ ghi nhớ',
                fontWeight: FontWeight.bold,
                color: AppColors.purpleDark,
              ),
              if (widget.onStartPractice != null)
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.onStartPractice?.call();
                  },
                  icon: const Icon(Icons.play_arrow_rounded, size: 16),
                  label: AppText.c1(
                    'Luyện tập ngay',
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orange,
                    foregroundColor: AppColors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                  ),
                ),
            ],
          ),
        ),

        // Danh sách thẻ từ vựng SRS
        Expanded(
          child: ListView.separated(
            itemCount: _profiles.length,
            separatorBuilder: (_, _) => SizedBox(height: 6.h),
            itemBuilder: (context, index) {
              final p = _profiles[index];
              final isWeak = p.lapses > 0 || p.familiarity < 3;

              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 6.h,
                ),
                decoration: BoxDecoration(
                  color: isWeak
                      ? AppColors.red.withValues(alpha: 0.08)
                      : AppColors.skySurface,
                  borderRadius: BorderRadius.circular(12.w),
                  border: Border.all(
                    color: isWeak ? AppColors.red : AppColors.skyBorder,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      isWeak
                          ? Icons.warning_amber_rounded
                          : Icons.check_circle_outline_rounded,
                      color: isWeak ? AppColors.red : AppColors.green,
                      size: 20.w,
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.b2(
                            p.wordId,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayDark,
                          ),
                          AppText.c1(
                            'Quen thuộc: ${p.familiarity}/5 • Lặp lại: ${p.interval} ngày',
                            color: AppColors.grayMedium,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: isWeak
                            ? AppColors.red.withValues(alpha: 0.15)
                            : AppColors.green.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                      child: AppText.c1(
                        isWeak ? 'Hay quên (${p.lapses})' : 'Đã nhớ tốt',
                        fontWeight: FontWeight.bold,
                        color: isWeak ? AppColors.redDark : AppColors.greenDark,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

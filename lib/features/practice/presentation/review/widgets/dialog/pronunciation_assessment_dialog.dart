import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/features/practice/presentation/review/bloc/review_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/utils/audio_utils.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PronunciationAssessmentDialog extends StatefulWidget {
  const PronunciationAssessmentDialog({
    required this.word,
    required this.uid,
    this.phonetic,
    this.meaning,
    this.token,
    super.key,
  });

  final String word;
  final String uid;
  final String? phonetic;
  final String? meaning;
  final String? token;

  static Future<void> show(
    BuildContext context, {
    required String word,
    required String uid,
    ReviewBloc? bloc,
    String? phonetic,
    String? meaning,
    String? token,
  }) {
    final effectiveBloc = bloc ?? context.read<ReviewBloc>();
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => BlocProvider.value(
        value: effectiveBloc,
        child: PronunciationAssessmentDialog(
          word: word,
          uid: uid,
          phonetic: phonetic,
          meaning: meaning,
          token: token,
        ),
      ),
    );
  }

  @override
  State<PronunciationAssessmentDialog> createState() =>
      _PronunciationAssessmentDialogState();
}

class _PronunciationAssessmentDialogState
    extends State<PronunciationAssessmentDialog> {
  bool _isSimulatingRecord = false;

  void _onPlayTargetAudio() {
    sl<AppAudioService>().speakWord(widget.word);
  }

  Future<void> _startAssessment() async {
    setState(() => _isSimulatingRecord = true);
    try {
      final wavFile = await AudioUtils.createTemporarySampleWavFile();

      if (!mounted) return;

      context.read<ReviewBloc>().add(
        ReviewEvent.assessPronunciation(
          uid: widget.uid,
          audioFile: wavFile,
          referenceText: widget.word,
          token: widget.token,
        ),
      );

      setState(() => _isSimulatingRecord = false);
    } on Object catch (_) {
      if (mounted) {
        setState(() => _isSimulatingRecord = false);
        AppToast.showError(
          context,
          context.l10n.micInitFailed,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return BlocBuilder<ReviewBloc, ReviewState>(
      builder: (context, state) {
        final assessment = state.pronunciationAssessment;
        final isAssessing =
            state.isAssessingPronunciation || _isSimulatingRecord;

        return AppGameDialog(
          title: context.l10n.pronunciationScore,
          icon: Icons.mic_rounded,
          maxWidth: 320.w,
          maxHeight: 460.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
          borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
          headerGradientColors: isPaper
              ? const [AppColors.paperGreen, AppColors.paperGreenDark]
              : const [AppColors.blueLight, AppColors.blueDark],
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _PronunciationWordTargetCard(
                word: widget.word,
                phonetic: widget.phonetic,
                meaning: widget.meaning,
                isPaperTheme: isPaper,
                onPlayAudio: _onPlayTargetAudio,
              ),
              SizedBox(height: 16.h),
              if (assessment != null && assessment.pronunciationScore > 0) ...[
                _PronunciationScoreResultCard(
                  assessment: assessment,
                  isPaperTheme: isPaper,
                ),
                SizedBox(height: 14.h),
              ],
              AppButton.primary(
                text: isAssessing
                    ? context.l10n.assessingPronunciation
                    : context.l10n.tapToAssess,
                icon: const Icon(Icons.mic_rounded),
                isLoading: isAssessing,
                onPressed: isAssessing ? null : _startAssessment,
                width: double.infinity,
                height: 44.h,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PronunciationWordTargetCard extends StatelessWidget {
  const _PronunciationWordTargetCard({
    required this.word,
    required this.isPaperTheme,
    required this.onPlayAudio,
    this.phonetic,
    this.meaning,
  });

  final String word;
  final bool isPaperTheme;
  final VoidCallback onPlayAudio;
  final String? phonetic;
  final String? meaning;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperSurfaceWarm
            : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.grayLight,
          width: 1.2.w,
        ),
      ),
      child: Column(
        children: [
          AppText.t1(
            word,
            color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
            fontWeight: FontWeight.w700,
          ),
          if (phonetic != null && phonetic!.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: AppText.c1(
                phonetic!,
                color: isPaperTheme
                    ? AppColors.paperTextMuted
                    : AppColors.grayMedium,
              ),
            ),
          if (meaning != null && meaning!.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: AppText.b2(
                meaning!,
                color: isPaperTheme
                    ? AppColors.paperGreenDark
                    : AppColors.blueDark,
                fontWeight: FontWeight.w600,
              ),
            ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: onPlayAudio,
            borderRadius: BorderRadius.circular(20.r),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: isPaperTheme
                      ? AppColors.paperBorder
                      : AppColors.blueLight,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.volume_up_rounded,
                    size: 16.r,
                    color: isPaperTheme ? AppColors.paperGreen : AppColors.blue,
                  ),
                  SizedBox(width: 4.w),
                  AppText.c1(
                    context.l10n.listenSampleAudio,
                    color: isPaperTheme
                        ? AppColors.paperTextDark
                        : AppColors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PronunciationScoreResultCard extends StatelessWidget {
  const _PronunciationScoreResultCard({
    required this.assessment,
    required this.isPaperTheme,
  });

  final PronunciationAssessment assessment;
  final bool isPaperTheme;

  Color _getScoreColor(double score) {
    if (score >= 80) return AppColors.green;
    if (score >= 60) return AppColors.yellow;
    return AppColors.redDark;
  }

  String _getScoreLabel(BuildContext context, double score) {
    if (score >= 80) return context.l10n.pronScoreGood;
    if (score >= 60) return context.l10n.pronScoreFair;
    return context.l10n.pronScoreWeak;
  }

  @override
  Widget build(BuildContext context) {
    final score = assessment.pronunciationScore;
    final scoreColor = _getScoreColor(score);
    final scoreLabel = _getScoreLabel(context, score);
    final scoreStr = StringUtils.formatPercentage(score);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: scoreColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: scoreColor.withValues(alpha: 0.3),
          width: 1.5.w,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.stars_rounded,
                color: scoreColor,
                size: 26.r,
              ),
              SizedBox(width: 6.w),
              AppText.h1(
                scoreStr,
                color: scoreColor,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          AppText.c1(
            scoreLabel,
            color: scoreColor,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ScoreMetric(
                label: context.l10n.accuracyMetric,
                value: assessment.accuracyScore,
                isPaperTheme: isPaperTheme,
              ),
              _ScoreMetric(
                label: context.l10n.fluencyMetric,
                value: assessment.fluencyScore,
                isPaperTheme: isPaperTheme,
              ),
              _ScoreMetric(
                label: context.l10n.completenessMetric,
                value: assessment.completenessScore,
                isPaperTheme: isPaperTheme,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScoreMetric extends StatelessWidget {
  const _ScoreMetric({
    required this.label,
    required this.value,
    required this.isPaperTheme,
  });

  final String label;
  final double value;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText.c1(
          value.toStringAsFixed(0),
          color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 2.h),
        AppText.c1(
          label,
          color: isPaperTheme ? AppColors.paperTextMuted : AppColors.grayMedium,
          fontSize: 10.sp,
        ),
      ],
    );
  }
}

import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/presentation/review/bloc/review_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewQuizDialog extends StatefulWidget {
  const ReviewQuizDialog({
    required this.weakWords,
    required this.vocabMap,
    required this.uid,
    this.token,
    super.key,
  });

  final List<WordMemory> weakWords;
  final Map<String, Word> vocabMap;
  final String uid;
  final String? token;

  static Future<void> show(
    BuildContext context, {
    required List<WordMemory> weakWords,
    required Map<String, Word> vocabMap,
    required String uid,
    ReviewBloc? bloc,
    String? token,
  }) {
    final effectiveBloc = bloc ?? context.read<ReviewBloc>();
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => BlocProvider.value(
        value: effectiveBloc,
        child: ReviewQuizDialog(
          weakWords: weakWords,
          vocabMap: vocabMap,
          uid: uid,
          token: token,
        ),
      ),
    );
  }

  @override
  State<ReviewQuizDialog> createState() => _ReviewQuizDialogState();
}

class _ReviewQuizDialogState extends State<ReviewQuizDialog> {
  int _currentIndex = 0;
  List<String> _options = [];
  String? _selectedOption;
  bool? _isCorrect;
  late final Stopwatch _stopwatch;
  Timer? _ticker;
  double _elapsedSeconds = 0;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch()..start();
    _ticker = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (mounted) {
        setState(() {
          _elapsedSeconds = _stopwatch.elapsedMilliseconds / 1000.0;
        });
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => _initOptions());
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _stopwatch.stop();
    super.dispose();
  }

  WordMemory? get _currentMemory {
    if (_currentIndex < widget.weakWords.length) {
      return widget.weakWords[_currentIndex];
    }
    return null;
  }

  String get _cleanWordFallback {
    return StringUtils.cleanWordId(_currentMemory?.wordId);
  }

  Word? get _currentWord {
    final memory = _currentMemory;
    if (memory == null) return null;
    return widget.vocabMap[memory.wordId] ??
        widget.vocabMap[_cleanWordFallback];
  }

  void _initOptions() {
    if (!mounted) return;
    setState(() {
      _options = _generateOptions();
      _selectedOption = null;
      _isCorrect = null;
      _stopwatch
        ..reset()
        ..start();
    });
  }

  List<String> _generateOptions() {
    final cleanFallback = _cleanWordFallback;
    final current = _currentWord;
    final correctMeaning = current?.vi.isNotEmpty == true
        ? current!.vi
        : cleanFallback;

    final pool =
        widget.vocabMap.values
            .where((w) => w.vi.isNotEmpty && w.vi != correctMeaning)
            .map((w) => w.vi)
            .toSet()
            .toList()
          ..shuffle();

    final wrongOptions = pool.take(3).toList();
    while (wrongOptions.length < 3) {
      wrongOptions.add(
        context.l10n.otherMeaning(wrongOptions.length + 1),
      );
    }

    return [correctMeaning, ...wrongOptions]..shuffle();
  }

  void _onSelectOption(String option) {
    // Prevent clicking again after correct answer
    if (_isCorrect == true) return;

    final correctMeaning = _currentWord?.vi ?? _cleanWordFallback;
    final isAnswerCorrect = option == correctMeaning;

    setState(() {
      _selectedOption = option;
      _isCorrect = isAnswerCorrect;
    });

    final audio = sl<AppAudioService>();
    if (isAnswerCorrect) {
      _stopwatch.stop();
      audio.playCorrectSfx();
    } else {
      audio.playWrongSfx();
    }

    final memory = _currentMemory;
    if (memory != null) {
      context.read<ReviewBloc>().add(
        ReviewEvent.answerWord(
          uid: widget.uid,
          wordId: memory.wordId,
          correct: isAnswerCorrect,
          seconds: _elapsedSeconds,
          token: widget.token,
        ),
      );
    }
  }

  void _onNext() {
    if (_currentIndex < widget.weakWords.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _initOptions();
    } else {
      Navigator.of(context).pop();
    }
  }

  _QuizOptionVisualState _getOptionVisualState(
    String option,
    String correctMeaning,
  ) {
    final isSelected = _selectedOption == option;
    final isCorrectOption = option == correctMeaning;

    if (_isCorrect != null && isSelected) {
      return _isCorrect == true
          ? _QuizOptionVisualState.selectedCorrect
          : _QuizOptionVisualState.selectedWrong;
    }
    if (_isCorrect == false && isCorrectOption) {
      return _QuizOptionVisualState.revealedCorrect;
    }
    return _QuizOptionVisualState.defaultNormal;
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final memory = _currentMemory;
    final word = _currentWord;

    if (memory == null) {
      return const SizedBox.shrink();
    }

    final cleanFallback = _cleanWordFallback;
    final wordTitle = word?.en ?? cleanFallback;
    final phonetic = word?.phonetic ?? '';
    final correctMeaning = word?.vi ?? cleanFallback;

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final dialogHeight = isLandscape ? 330.0 : 520.h;

    return AppGameDialog(
      title: context.l10n.practiceWeakWordsTitle,
      icon: Icons.auto_stories_rounded,
      maxWidth: 340.w,
      height: dialogHeight,
      isScrollable: false,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.greenDark, AppColors.green],
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
        children: [
          _buildProgressHeader(isPaper),
          SizedBox(height: 10.h),
          _buildQuestionCard(
            wordTitle: wordTitle,
            phonetic: phonetic,
            isPaper: isPaper,
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: _options.length,
              separatorBuilder: (_, _) => SizedBox(height: 8.h),
              itemBuilder: (context, idx) {
                final option = _options[idx];
                final visualState = _getOptionVisualState(
                  option,
                  correctMeaning,
                );

                return _ReviewQuizOptionTile(
                  optionLetter: String.fromCharCode(65 + idx),
                  optionText: option,
                  visualState: visualState,
                  isPaperTheme: isPaper,
                  onTap: () => _onSelectOption(option),
                );
              },
            ),
          ),
          if (_isCorrect == true) ...[
            SizedBox(height: 8.h),
            AppButton(
              text: _currentIndex < widget.weakWords.length - 1
                  ? context.l10n.nextWord
                  : context.l10n.finishReview,
              icon: const Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.white,
              ),
              iconAfter: true,
              width: double.infinity,
              height: 44.h,
              backgroundColor: isPaper
                  ? AppColors.paperGreen
                  : AppColors.greenDark,
              borderColor: isPaper
                  ? AppColors.paperGreenBorder
                  : AppColors.greenLight,
              extrusionColor: isPaper
                  ? AppColors.paperGreenExtrusion
                  : AppColors.green,
              onPressed: _onNext,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildProgressHeader(bool isPaper) {
    final isTimerWarning = _elapsedSeconds >= 4.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperSurface : AppColors.lightBackground,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: AppText.c1(
            context.l10n.questionProgress(
              _currentIndex + 1,
              widget.weakWords.length,
            ),
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.timer_outlined,
              size: 16.r,
              color: isTimerWarning
                  ? AppColors.redDark
                  : (isPaper ? AppColors.paperGreen : AppColors.blue),
            ),
            SizedBox(width: 4.w),
            AppText.c1(
              '${_elapsedSeconds.toStringAsFixed(1)}s',
              color: isTimerWarning
                  ? AppColors.redDark
                  : (isPaper ? AppColors.paperTextDark : AppColors.grayDark),
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuestionCard({
    required String wordTitle,
    required String phonetic,
    required bool isPaper,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurfaceWarm : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
          width: 1.5.w,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AppText.h1(
                  wordTitle,
                  color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 8.w),
              IconButton(
                icon: const Icon(Icons.volume_up_rounded),
                iconSize: 22.r,
                color: isPaper ? AppColors.paperGreen : AppColors.blue,
                onPressed: () => sl<AppAudioService>().speakWord(wordTitle),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          if (phonetic.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: AppText.b2(
                phonetic,
                color: isPaper
                    ? AppColors.paperTextMuted
                    : AppColors.grayMedium,
              ),
            ),
        ],
      ),
    );
  }
}

enum _QuizOptionVisualState {
  defaultNormal,
  selectedCorrect,
  selectedWrong,
  revealedCorrect,
}

class _QuizOptionStyle {
  const _QuizOptionStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    this.statusIcon,
  });

  factory _QuizOptionStyle.fromState({
    required _QuizOptionVisualState state,
    required bool isPaperTheme,
  }) {
    switch (state) {
      case _QuizOptionVisualState.selectedCorrect:
        return _QuizOptionStyle(
          backgroundColor: AppColors.green.withValues(alpha: 0.15),
          borderColor: AppColors.green,
          textColor: AppColors.greenDark,
          statusIcon: Icons.check_circle_rounded,
        );
      case _QuizOptionVisualState.selectedWrong:
        return _QuizOptionStyle(
          backgroundColor: AppColors.red.withValues(alpha: 0.15),
          borderColor: AppColors.red,
          textColor: AppColors.redDark,
          statusIcon: Icons.cancel_rounded,
        );
      case _QuizOptionVisualState.revealedCorrect:
        return _QuizOptionStyle(
          backgroundColor: AppColors.green.withValues(alpha: 0.1),
          borderColor: AppColors.greenLight,
          textColor: AppColors.greenDark,
        );
      case _QuizOptionVisualState.defaultNormal:
        return _QuizOptionStyle(
          backgroundColor: isPaperTheme
              ? AppColors.paperCardBg
              : AppColors.white,
          borderColor: isPaperTheme
              ? AppColors.paperBorder
              : AppColors.grayLight,
          textColor: isPaperTheme
              ? AppColors.paperTextDark
              : AppColors.grayDark,
        );
    }
  }

  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final IconData? statusIcon;
}

class _ReviewQuizOptionTile extends StatelessWidget {
  const _ReviewQuizOptionTile({
    required this.optionLetter,
    required this.optionText,
    required this.visualState,
    required this.isPaperTheme,
    required this.onTap,
  });

  final String optionLetter;
  final String optionText;
  final _QuizOptionVisualState visualState;
  final bool isPaperTheme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = _QuizOptionStyle.fromState(
      state: visualState,
      isPaperTheme: isPaperTheme,
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 10.h,
        ),
        decoration: BoxDecoration(
          color: style.backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: style.borderColor, width: 1.5.w),
          boxShadow: [
            BoxShadow(
              color: isPaperTheme
                  ? AppColors.paperExtrusion
                  : AppColors.grayExtrusion,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 24.r,
              height: 24.r,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: style.borderColor.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: AppText.c1(
                optionLetter,
                color: style.textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: AppText.b2(
                optionText,
                color: style.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (style.statusIcon != null)
              Icon(
                style.statusIcon,
                color: style.textColor,
                size: 20.r,
              ),
          ],
        ),
      ),
    );
  }
}

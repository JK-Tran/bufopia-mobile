import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/presentation/review/bloc/review_bloc.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_player_card.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPracticePage extends StatefulWidget {
  const ReviewPracticePage({
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

  @override
  State<ReviewPracticePage> createState() => _ReviewPracticePageState();
}

class _ReviewPracticePageState extends State<ReviewPracticePage> {
  int _currentIndex = 0;
  List<String> _options = [];
  final Set<String> _wrongOptions = {};
  String? _correctOption;
  bool _isAnswered = false;
  bool _isFirstTryWrong = false;

  late final Stopwatch _stopwatch;
  Timer? _ticker;
  double _elapsedSeconds = 0;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch()..start();
    _ticker = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (mounted && !_isAnswered) {
        setState(() {
          _elapsedSeconds = _stopwatch.elapsedMilliseconds / 1000.0;
        });
      }
    });
    _generateOptions();
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

  void _generateOptions() {
    final current = _currentWord;
    final correctMeaning = current?.vi ?? _cleanWordFallback;

    final pool =
        widget.vocabMap.values
            .where((w) => w.vi.isNotEmpty && w.vi != correctMeaning)
            .map((w) => w.vi)
            .toSet()
            .toList()
          ..shuffle();

    final wrongOptions = pool.take(3).toList();
    while (wrongOptions.length < 3) {
      wrongOptions.add('Nghĩa khác ${wrongOptions.length + 1}');
    }

    _options = [correctMeaning, ...wrongOptions]..shuffle();
    _wrongOptions.clear();
    _correctOption = null;
    _isAnswered = false;
    _isFirstTryWrong = false;
    _stopwatch
      ..reset()
      ..start();
  }

  void _onSelectOption(String option) {
    if (_isAnswered) return;
    if (_wrongOptions.contains(option)) return;

    final correctMeaning = _currentWord?.vi ?? _cleanWordFallback;
    final isCorrect = option == correctMeaning;

    if (isCorrect) {
      _stopwatch.stop();
      sl<AppAudioService>().playCorrectSfx();

      setState(() {
        _isAnswered = true;
        _correctOption = option;
      });

      final memory = _currentMemory;
      if (memory != null) {
        context.read<ReviewBloc>().add(
          ReviewEvent.answerWord(
            uid: widget.uid,
            wordId: memory.wordId,
            correct: !_isFirstTryWrong,
            seconds: _elapsedSeconds,
            token: widget.token,
          ),
        );
      }
    } else {
      sl<AppAudioService>().playWrongSfx();
      setState(() {
        _wrongOptions.add(option);
        _isFirstTryWrong = true;
      });
    }
  }

  void _onNext() {
    if (_currentIndex < widget.weakWords.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _generateOptions();
    } else {
      AppToast.showSuccess(context, context.l10n.reviewCompletedMsg);
      Navigator.of(context).pop();
    }
  }

  void _onSaveCurrentWordToInventory() {
    final word = _currentWord;
    if (word == null) return;

    if (widget.uid.isEmpty || widget.uid == 'guest') {
      AppToast.showWarning(
        context,
        context.l10n.loginToSaveVault,
      );
      return;
    }

    context.read<ReviewBloc>().add(
      ReviewEvent.saveWordToVault(
        uid: widget.uid,
        word: word,
        token: widget.token,
      ),
    );
    AppToast.showSuccess(
      context,
      context.l10n.savedWordToVault(word.en),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final user = context.select<AuthBloc, User?>((b) => b.state.currentUser);
    final isSavingVault = context.select<ReviewBloc, bool>(
      (b) => b.state.isSavingVault,
    );
    final displayName = user?.displayName ?? 'Người Chơi';
    final level = user?.level ?? 1;
    final avatarUrl = user?.avatarUrl;
    final timerText = '${_elapsedSeconds.toStringAsFixed(1)}s';

    final memory = _currentMemory;
    final word = _currentWord;

    if (memory == null) {
      return Scaffold(
        body: Center(
          child: AppButton(
            text: context.l10n.back,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      );
    }

    final wordTitle = word?.en ?? _cleanWordFallback;
    final phonetic = word?.phonetic ?? '';
    final partOfSpeech = StringUtils.formatPartOfSpeech(word?.partOfSpeech);
    final correctMeaning = word?.vi ?? _cleanWordFallback;
    final example = word?.example ?? '';
    final exampleVi = word?.exampleVi ?? '';

    // Color definitions matching Web exactly
    const terracottaRed = Color(0xFFBC6760);
    const terracottaBorder = Color(0xFFA8524B);
    const terracottaExtrusion = Color(0xFF8F423C);

    const forestGreen = Color(0xFF388246);
    const forestGreenBorder = Color(0xFF286534);
    const forestGreenExtrusion = Color(0xFF23552C);

    final beigeOption = isPaper
        ? AppColors.paperSurfaceWarm
        : const Color(0xFFF2EDE4);
    final beigeBorder = isPaper
        ? AppColors.paperBorder
        : const Color(0xFFDED6C9);
    final beigeExtrusion = isPaper
        ? AppColors.paperExtrusion
        : const Color(0xFFD2C7B6);

    final charcoalText = isPaper
        ? AppColors.paperTextDark
        : const Color(0xFF38332B);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Image.asset(
            isPaper
                ? 'assets/images/background_switch/app_background_1.webp'
                : 'assets/images/app_background.webp',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            errorBuilder: (_, _, _) => ColoredBox(
              color: isPaper ? AppColors.paperBackground : AppColors.greenLight,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 6.h, 12.w, 16.h),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 800.w),
                  child: Column(
                    children: [
                      // 1. Top Bar
                      Row(
                        children: [
                          AppIconButton(
                            icon: Icons.arrow_back_ios_new_rounded,
                            tooltip: context.l10n.back,
                            size: 36.r,
                            iconSize: 18.r,
                            backgroundColor: isPaper
                                ? AppColors.paperCardBg
                                : AppColors.white,
                            iconColor: isPaper
                                ? AppColors.paperTextDark
                                : AppColors.grayDark,
                            borderColor: isPaper
                                ? AppColors.paperBorder
                                : AppColors.grayLight,
                            extrusionColor: isPaper
                                ? AppColors.paperExtrusion
                                : AppColors.grayExtrusion,
                            extrusionHeight: 2.5,
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 6.h,
                                ),
                                decoration: BoxDecoration(
                                  color: isPaper
                                      ? AppColors.paperSurfaceWarm
                                      : AppColors.white,
                                  borderRadius: BorderRadius.circular(16.r),
                                  border: Border.all(
                                    color: isPaper
                                        ? AppColors.paperBorder
                                        : AppColors.grayLight,
                                    width: 1.5.w,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.auto_stories_rounded,
                                      size: 18.r,
                                      color: isPaper
                                          ? AppColors.paperGreenDark
                                          : AppColors.greenDark,
                                    ),
                                    SizedBox(width: 8.w),
                                    AppText.t2(
                                      context.l10n.weakWordsPractice,
                                      color: isPaper
                                          ? AppColors.paperTextDark
                                          : AppColors.grayDark,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 36.r),
                        ],
                      ),

                      SizedBox(height: 8.h),

                      // 2. Main Outer Card Container
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: isPaper
                                ? AppColors.paperCardBg
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color: isPaper
                                  ? AppColors.paperBorder
                                  : AppColors.grayLight,
                              width: 2.w,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: isPaper
                                    ? AppColors.paperExtrusion
                                    : AppColors.grayExtrusion,
                                offset: Offset(0, 4.h),
                              ),
                              BoxShadow(
                                color: AppColors.black.withValues(alpha: 0.1),
                                offset: Offset(0, 8.h),
                                blurRadius: 14.r,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.w,
                              vertical: 12.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // 2.1 User Profile Header Bar
                                ReviewPlayerCard(
                                  displayName: displayName,
                                  level: level,
                                  weakCount: widget.weakWords.length,
                                  avatarUrl: avatarUrl,
                                  isPaperTheme: isPaper,
                                ),

                                SizedBox(height: 8.h),

                                // Progress + Timer row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.w,
                                        vertical: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: isPaper
                                            ? AppColors.paperSurface
                                            : const Color(0xFFF2ECE1),
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                        border: Border.all(
                                          color: isPaper
                                              ? AppColors.paperBorder
                                              : const Color(0xFFDED6C9),
                                        ),
                                      ),
                                      child: AppText.c1(
                                        context.l10n.questionIndex(
                                          _currentIndex + 1,
                                          widget.weakWords.length,
                                        ),
                                        color: isPaper
                                            ? AppColors.paperTextDark
                                            : AppColors.grayDark,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer_outlined,
                                          size: 16.r,
                                          color: _elapsedSeconds >= 4.0
                                              ? AppColors.redDark
                                              : (isPaper
                                                    ? AppColors.paperGreen
                                                    : AppColors.blue),
                                        ),
                                        SizedBox(width: 4.w),
                                        AppText.c1(
                                          timerText,
                                          color: _elapsedSeconds >= 4.0
                                              ? AppColors.redDark
                                              : (isPaper
                                                    ? AppColors.paperTextDark
                                                    : AppColors.grayDark),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10.h),

                                // 2.2 Inner Question Flashcard Box (Web Style)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.w,
                                    vertical: 16.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isPaper
                                        ? AppColors.paperSurface.withValues(
                                            alpha: 0.5,
                                          )
                                        : const Color(0xFFFCFAF7),
                                    borderRadius: BorderRadius.circular(16.r),
                                    border: Border.all(
                                      color: isPaper
                                          ? AppColors.paperBorder
                                          : const Color(0xFFDED6C9),
                                      width: 1.5.w,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      // ANH → VIỆT pill
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 14.w,
                                          vertical: 4.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: isPaper
                                              ? AppColors.paperSurfaceWarm
                                              : const Color(0xFFF0EAE1),
                                          borderRadius: BorderRadius.circular(
                                            16.r,
                                          ),
                                          border: Border.all(
                                            color: isPaper
                                                ? AppColors.paperBorder
                                                : const Color(0xFFD8CFBF),
                                          ),
                                        ),
                                        child: AppText.c1(
                                          context.l10n.engToVie,
                                          color: isPaper
                                              ? AppColors.paperTextDark
                                              : const Color(0xFF4A453E),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11.sp,
                                        ),
                                      ),

                                      SizedBox(height: 12.h),

                                      // Word + Speaker
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: AppText.h1(
                                              wordTitle,
                                              color: isPaper
                                                  ? AppColors.paperTextDark
                                                  : const Color(0xFF2E2A25),
                                              fontWeight: FontWeight.w800,
                                              textAlign: TextAlign.center,
                                              fontSize: 28.sp,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          InkWell(
                                            onTap: () => sl<AppAudioService>()
                                                .speakWord(wordTitle),
                                            borderRadius: BorderRadius.circular(
                                              22.r,
                                            ),
                                            child: Container(
                                              width: 38.r,
                                              height: 38.r,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFE8EFFF),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: const Color(
                                                    0xFF9CB9F5,
                                                  ),
                                                  width: 1.5.w,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.volume_up_rounded,
                                                size: 20.r,
                                                color: const Color(0xFF436CD6),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      if (phonetic.isNotEmpty) ...[
                                        SizedBox(height: 4.h),
                                        AppText.b2(
                                          phonetic,
                                          color: isPaper
                                              ? AppColors.paperTextMuted
                                              : const Color(0xFF7A7265),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],

                                      SizedBox(height: 6.h),

                                      // Part of speech pill
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.w,
                                          vertical: 3.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: isPaper
                                              ? AppColors.paperSurfaceWarm
                                              : const Color(0xFFFAF7F2),
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                          border: Border.all(
                                            color: isPaper
                                                ? AppColors.paperBorder
                                                : const Color(0xFFDED6C9),
                                          ),
                                        ),
                                        child: AppText.c1(
                                          partOfSpeech,
                                          color: isPaper
                                              ? AppColors.paperTextMuted
                                              : const Color(0xFF7A7265),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      SizedBox(height: 18.h),

                                      // 2.3 2x2 Grid of 4 Options (Web Layout)
                                      _buildOptionsGrid(
                                        isPaper: isPaper,
                                        forestGreen: forestGreen,
                                        forestGreenBorder: forestGreenBorder,
                                        forestGreenExtrusion:
                                            forestGreenExtrusion,
                                        terracottaRed: terracottaRed,
                                        terracottaBorder: terracottaBorder,
                                        terracottaExtrusion:
                                            terracottaExtrusion,
                                        beigeOption: beigeOption,
                                        beigeBorder: beigeBorder,
                                        beigeExtrusion: beigeExtrusion,
                                        charcoalText: charcoalText,
                                      ),

                                      // 2.4 Details Section (Correct answer)
                                      if (_isAnswered)
                                        _buildResultDetails(
                                          isPaper: isPaper,
                                          isSavingVault: isSavingVault,
                                          forestGreen: forestGreen,
                                          forestGreenBorder: forestGreenBorder,
                                          forestGreenExtrusion:
                                              forestGreenExtrusion,
                                          wordTitle: wordTitle,
                                          correctMeaning: correctMeaning,
                                          example: example,
                                          exampleVi: exampleVi,
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsGrid({
    required bool isPaper,
    required Color forestGreen,
    required Color forestGreenBorder,
    required Color forestGreenExtrusion,
    required Color terracottaRed,
    required Color terracottaBorder,
    required Color terracottaExtrusion,
    required Color beigeOption,
    required Color beigeBorder,
    required Color beigeExtrusion,
    required Color charcoalText,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2.1,
      ),
      itemCount: _options.length,
      itemBuilder: (context, idx) {
        final option = _options[idx];
        final isCorrectChosen = _isAnswered && _correctOption == option;
        final isWrongChosen = _wrongOptions.contains(option);

        final Color bgColor;
        final Color borderColor;
        final Color extrusionColor;
        final Color textColor;
        final TextDecoration? textDecoration;

        if (isCorrectChosen) {
          bgColor = isPaper ? AppColors.paperGreen : forestGreen;
          borderColor = isPaper
              ? AppColors.paperGreenBorder
              : forestGreenBorder;
          extrusionColor = isPaper
              ? AppColors.paperGreenExtrusion
              : forestGreenExtrusion;
          textColor = AppColors.white;
          textDecoration = null;
        } else if (isWrongChosen) {
          bgColor = terracottaRed;
          borderColor = terracottaBorder;
          extrusionColor = terracottaExtrusion;
          textColor = AppColors.white;
          textDecoration = TextDecoration.lineThrough;
        } else {
          bgColor = beigeOption;
          borderColor = beigeBorder;
          extrusionColor = beigeExtrusion;
          textColor = charcoalText;
          textDecoration = null;
        }

        return InkWell(
          onTap: () => _onSelectOption(option),
          borderRadius: BorderRadius.circular(12.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: borderColor, width: 1.5.w),
              boxShadow: [
                BoxShadow(
                  color: extrusionColor,
                  offset: Offset(0, 2.5.h),
                ),
              ],
            ),
            child: Center(
              child: Text(
                option,
                style: AppText.b2Style.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  decoration: textDecoration,
                  decorationColor: textColor,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildResultDetails({
    required bool isPaper,
    required bool isSavingVault,
    required Color forestGreen,
    required Color forestGreenBorder,
    required Color forestGreenExtrusion,
    required String wordTitle,
    required String correctMeaning,
    required String example,
    required String exampleVi,
  }) {
    final timeStr = _elapsedSeconds.toStringAsFixed(1);
    return Column(
      children: [
        SizedBox(height: 16.h),
        Center(
          child: AppText.c1(
            context.l10n.correctProgressSaved(timeStr),
            color: isPaper ? AppColors.paperGreenDark : const Color(0xFF2E7D32),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: const Color(0xFFE2F6E7),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: const Color(0xFFAEE4BE),
              width: 1.2.w,
            ),
          ),
          child: AppText.b2(
            '$wordTitle = $correctMeaning',
            color: const Color(0xFF2A7C3D),
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ),
        if (example.isNotEmpty) ...[
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperSurfaceWarm
                  : const Color(0xFFF7F4EE),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: isPaper
                    ? AppColors.paperBorder
                    : const Color(0xFFE5DDD0),
              ),
            ),
            child: Column(
              children: [
                AppText.b2(
                  example,
                  color: isPaper
                      ? AppColors.paperTextDark
                      : const Color(0xFF2E2A25),
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
                if (exampleVi.isNotEmpty) ...[
                  SizedBox(height: 4.h),
                  AppText.c1(
                    exampleVi,
                    color: isPaper
                        ? AppColors.paperTextMuted
                        : const Color(0xFF6B6256),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
        ],
        SizedBox(height: 18.h),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: AppButton(
                text: isSavingVault
                    ? context.l10n.savingToVault
                    : context.l10n.saveToVault,
                icon: Icon(
                  Icons.bookmark_border_rounded,
                  size: 16.r,
                  color: isPaper
                      ? AppColors.paperTextDark
                      : const Color(0xFF755938),
                ),
                height: 42.h,
                fontSize: 12.sp,
                backgroundColor: isPaper
                    ? AppColors.paperSurface
                    : const Color(0xFFFAF5EE),
                borderColor: isPaper
                    ? AppColors.paperBorder
                    : const Color(0xFFD4C5B0),
                extrusionColor: isPaper
                    ? AppColors.paperExtrusion
                    : const Color(0xFFC7B69E),
                textColor: isPaper
                    ? AppColors.paperTextDark
                    : const Color(0xFF755938),
                onPressed: _onSaveCurrentWordToInventory,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              flex: 5,
              child: AppButton(
                text: _currentIndex < widget.weakWords.length - 1
                    ? context.l10n.nextWord
                    : context.l10n.finishReview,
                height: 42.h,
                fontSize: 13.sp,
                backgroundColor: isPaper ? AppColors.paperGreen : forestGreen,
                borderColor: isPaper
                    ? AppColors.paperGreenBorder
                    : forestGreenBorder,
                extrusionColor: isPaper
                    ? AppColors.paperGreenExtrusion
                    : forestGreenExtrusion,
                onPressed: _onNext,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

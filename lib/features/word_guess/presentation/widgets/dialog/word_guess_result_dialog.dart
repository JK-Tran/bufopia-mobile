import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/chat/presentation/widgets/chat_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_feedback_dialog.dart';
import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/domain/entities/room_player.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_vault_use_case.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WordGuessResultDialog extends StatefulWidget {
  const WordGuessResultDialog({
    required this.foundCount,
    required this.earnedXp,
    required this.onReplay,
    required this.onChangeTopic,
    required this.onHome,
    this.wordsPlayed = const [],
    this.players = const [],
    this.history = const [],
    this.skippedWords = const {},
    this.myUid = '',
    this.myName = '',
    this.isSolo = true,
    this.onChat,
    super.key,
  });

  final int foundCount;
  final int earnedXp;
  final List<WordInfo> wordsPlayed;
  final List<RoomPlayer> players;
  final List<HistoryItem> history;
  final Set<String> skippedWords;
  final String myUid;
  final String myName;
  final bool isSolo;
  final VoidCallback onReplay;
  final VoidCallback onChangeTopic;
  final VoidCallback onHome;
  final VoidCallback? onChat;

  static Future<void> show(
    BuildContext context, {
    required int foundCount,
    required int earnedXp,
    required VoidCallback onReplay,
    required VoidCallback onChangeTopic,
    required VoidCallback onHome,
    List<WordInfo> wordsPlayed = const [],
    List<RoomPlayer> players = const [],
    List<HistoryItem> history = const [],
    Set<String> skippedWords = const {},
    String myUid = '',
    String myName = '',
    bool isSolo = true,
    VoidCallback? onChat,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordGuessResultDialog(
        foundCount: foundCount,
        earnedXp: earnedXp,
        wordsPlayed: wordsPlayed,
        players: players,
        history: history,
        skippedWords: skippedWords,
        myUid: myUid,
        myName: myName,
        isSolo: isSolo,
        onReplay: onReplay,
        onChangeTopic: onChangeTopic,
        onHome: onHome,
        onChat: onChat,
      ),
    );
  }

  @override
  State<WordGuessResultDialog> createState() => _WordGuessResultDialogState();
}

class _WordGuessResultDialogState extends State<WordGuessResultDialog> {
  bool _isSavingVault = false;
  final Set<String> _savedWords = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        SoundManager.playWin();
      }
    });
  }

  Future<void> _onSaveWordToVault(
    String wordEn,
    String wordVi, {
    String? phonetic,
  }) async {
    if (_savedWords.contains(wordEn)) return;

    final user = context.read<AuthBloc>().state.currentUser;
    final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
    if (uid == 'guest') {
      AppToast.show(
        context,
        message: 'Vui lòng đăng nhập để lưu từ vào kho cá nhân.',
        type: AppToastType.warning,
      );
      return;
    }

    setState(() => _isSavingVault = true);
    try {
      final token = await sl<FirebaseAuthService>().getIdToken();
      final output = await sl<SubmitGuessVaultUseCase>().execute(
        SubmitGuessVaultInput(
          uid: uid,
          title: 'Từ vựng Word Guess',
          token: token,
          words: [
            {
              'wordEn': wordEn,
              'meaningVi': wordVi,
              'meaning': wordVi,
              if (phonetic != null && phonetic.isNotEmpty) 'phonetic': phonetic,
            },
          ],
        ),
      );
      final isSuccess = output.success;

      if (mounted) {
        setState(() {
          _isSavingVault = false;
          if (isSuccess) _savedWords.add(wordEn);
        });
        AppToast.show(
          context,
          message: isSuccess
              ? 'Đã lưu "$wordEn" vào kho từ vựng!'
              : 'Lưu từ thất bại, vui lòng thử lại.',
          type: isSuccess ? AppToastType.success : AppToastType.error,
        );
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _isSavingVault = false);
        AppToast.show(
          context,
          message: 'Lỗi khi lưu từ: $e',
          type: AppToastType.error,
        );
      }
    }
  }

  String _getSolverName(String word) {
    if (widget.isSolo) return 'Bạn';
    final normalized = word.toLowerCase().trim();
    final matched = widget.history.firstWhereOrNull(
      (h) =>
          h.word.toLowerCase().trim() == normalized ||
          h.guess.toLowerCase().trim() == normalized,
    );
    if (matched != null && matched.solverName.isNotEmpty) {
      if (matched.playerUid == widget.myUid) return 'Bạn';
      return matched.solverName;
    }
    return widget.myName.isNotEmpty ? widget.myName : 'Bạn';
  }

  bool _isWordSkipped(String word) {
    final normalized = word.toLowerCase().trim();
    if (widget.skippedWords.contains(normalized)) return true;
    final matched = widget.history.firstWhereOrNull(
      (h) =>
          h.word.toLowerCase().trim() == normalized ||
          h.guess.toLowerCase().trim() == normalized,
    );
    if (matched != null) {
      return matched.skipped || matched.isCorrect == false;
    }
    return false;
  }

  (String, String) _getExamplePair(String en, String vi, String? raw) {
    if (raw != null && raw.trim().isNotEmpty) {
      final parts = raw.split('\n');
      if (parts.length >= 2) {
        return (parts[0].trim(), parts[1].trim());
      }
      return (raw.trim(), '');
    }
    return (
      'The teacher explained the word "$en" in the lesson.',
      'Giáo viên đã giải thích từ "$en" ($vi) trong bài học.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final reviewCount = widget.wordsPlayed.length > widget.foundCount
        ? widget.wordsPlayed.length - widget.foundCount
        : 0;

    // Sắp xếp người chơi theo điểm giảm dần
    final sortedPlayers = [...widget.players]
      ..sort((a, b) => b.effectiveScore.compareTo(a.effectiveScore));
    final maxScore = sortedPlayers.isNotEmpty
        ? (sortedPlayers.first.effectiveScore > 0
              ? sortedPlayers.first.effectiveScore
              : 1)
        : 1;

    // Lọc sạch từ trùng lặp
    final seen = <String>{};
    final uniqueWords = <WordInfo>[];
    for (final w in widget.wordsPlayed) {
      final key = (w.en ?? w.masked).toLowerCase().trim();
      if (key.isNotEmpty && seen.add(key)) {
        uniqueWords.add(w);
      }
    }

    final dialogBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final dialogBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final dialogExtrusion = isPaper
        ? AppColors.paperExtrusion
        : AppColors.grayExtrusion;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        Navigator.of(context).pop();
        widget.onHome();
      },
      child: Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 620.w,
              maxHeight: MediaQuery.of(context).size.height * 0.94,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: dialogBg,
                borderRadius: BorderRadius.circular(22.r),
                border: Border.all(
                  color: dialogBorder,
                  width: 2.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: dialogExtrusion,
                    offset: Offset(0, 5.h),
                  ),
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.16),
                    offset: Offset(0, 10.h),
                    blurRadius: 20.r,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── 1. Top Header Row ─────────────────────────
                    _buildHeader(context, isPaper),

                    // ── 2. Scrollable Body Content ────────────────
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Banner KẾT QUẢ CỦA BẠN
                            _buildResultBanner(isPaper),
                            SizedBox(height: 10.h),

                            // 3 Metric Cards (Bạn tìm được / Từ cần ôn lại / Đã cộng vào hồ sơ)
                            _buildMetricCards(isPaper, reviewCount),
                            SizedBox(height: 12.h),

                            // Leaderboard (nếu chơi phòng / nhiều người)
                            if (!widget.isSolo && sortedPlayers.isNotEmpty) ...[
                              _buildLeaderboard(
                                context,
                                isPaper,
                                sortedPlayers,
                                maxScore,
                              ),
                              SizedBox(height: 12.h),
                            ],

                            // Danh sách các từ đã học
                            _buildWordsList(context, isPaper, uniqueWords),
                            SizedBox(height: 10.h),
                          ],
                        ),
                      ),
                    ),

                    // ── 3. Bottom 4 Action Buttons Bar ────────────
                    _buildFooterActions(context, isPaper),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, bool isPaper) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 10.h),
      child: Row(
        children: [
          Icon(
            Icons.menu_book_rounded,
            color: isPaper
                ? AppColors.paperGreenDark
                : AppColors.classicButtonBlue,
            size: 24.r,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: AppText.t2(
              'TỔNG KẾT BUỔI LUYỆN',
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
          // Capsule chip: Luyện cùng bạn / Luyện đơn 3D
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperSurface
                  : AppColors.lightBackground,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: isPaper
                    ? AppColors.paperBorder
                    : AppColors.classicBorder,
                width: 1.2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.grayExtrusion,
                  offset: Offset(0, 1.5.h),
                ),
              ],
            ),
            child: AppText.c1(
              widget.isSolo ? 'Luyện đơn' : 'Luyện cùng bạn',
              color: isPaper ? AppColors.paperTextMedium : AppColors.grayMedium,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
          ),

          SizedBox(width: 8.w),
          // Nút đóng tròn đỏ
          AppButton.close(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onHome();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildResultBanner(bool isPaper) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurfaceWarm : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 2.5.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isPaper ? AppColors.paperSurface : AppColors.white,
              border: Border.all(
                color: isPaper ? AppColors.paperGreenBorder : AppColors.green,
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      (isPaper
                              ? AppColors.paperGreenExtrusion
                              : AppColors.greenDark)
                          .withValues(alpha: 0.4),
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            child: Icon(
              Icons.menu_book_outlined,
              color: isPaper ? AppColors.paperGreenDark : AppColors.greenDark,
              size: 22.r,
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.c1(
                  'KẾT QUẢ CỦA BẠN',
                  color: isPaper
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
                SizedBox(height: 2.h),
                AppText.t1(
                  '${widget.foundCount} từ đã tìm',
                  color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 2.h),
                AppText.c1(
                  'Xem kết quả và ôn lại những từ bạn đã gặp.',
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
    );
  }

  Widget _buildMetricCards(bool isPaper, int reviewCount) {
    return Row(
      children: [
        Expanded(
          child: _MetricCard(
            icon: Icons.check_circle_outline_rounded,
            iconColor: isPaper ? AppColors.paperGreen : AppColors.green,
            value: '${widget.foundCount}',
            label: 'Bạn tìm được',
            isPaper: isPaper,
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: _MetricCard(
            icon: Icons.menu_book_outlined,
            iconColor: isPaper ? AppColors.paperGreen : AppColors.green,
            value: '$reviewCount',
            label: 'Từ cần ôn lại',
            isPaper: isPaper,
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: _MetricCard(
            icon: Icons.star_rounded,
            iconColor: const Color(0xFFF59E0B),
            value: widget.earnedXp > 0 ? '+${widget.earnedXp} XP' : '— XP',
            label: 'Đã cộng vào hồ sơ',
            isPaper: isPaper,
          ),
        ),
      ],
    );
  }

  Widget _buildLeaderboard(
    BuildContext context,
    bool isPaper,
    List<RoomPlayer> sortedPlayers,
    int maxScore,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.people_alt_outlined,
              size: 18.r,
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            ),
            SizedBox(width: 6.w),
            AppText.b1(
              'Bảng kết quả',
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        ...sortedPlayers.asMap().entries.map((entry) {
          final index = entry.key;
          final player = entry.value;
          final isMe = player.uid == widget.myUid;
          final hasTie = sortedPlayers.any(
            (p) =>
                p.uid != player.uid &&
                p.effectiveScore == player.effectiveScore,
          );
          final progress = (player.effectiveScore / maxScore).clamp(0.0, 1.0);

          return Container(
            margin: EdgeInsets.only(bottom: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
            decoration: BoxDecoration(
              color: isPaper ? AppColors.paperSurface : AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: isMe
                    ? (isPaper ? AppColors.paperGreenBorder : AppColors.green)
                    : (isPaper
                          ? AppColors.paperBorder
                          : AppColors.classicBorder),
                width: isMe ? 1.8.w : 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isMe
                      ? (isPaper
                            ? AppColors.paperGreenExtrusion
                            : AppColors.greenDark)
                      : (isPaper
                            ? AppColors.paperExtrusion
                            : AppColors.grayExtrusion),
                  offset: Offset(0, 2.5.h),
                ),
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.04),
                  blurRadius: 4.r,
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    AppText.b2(
                      '#${index + 1}',
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                    ),
                    SizedBox(width: 8.w),
                    AppAvatar(avatarUrl: player.avatar, size: 26.r),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 4.w,
                        runSpacing: 2.h,
                        children: [
                          AppText.b2(
                            player.name,
                            color: isPaper
                                ? AppColors.paperTextDark
                                : AppColors.grayDark,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),
                          if (isMe)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                                vertical: 1.5.h,
                              ),
                              decoration: BoxDecoration(
                                color: isPaper
                                    ? AppColors.paperGreenDark
                                    : AppColors.greenDark,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: AppText.c1(
                                'Bạn',
                                color: AppColors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          if (hasTie)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                                vertical: 1.5.h,
                              ),
                              decoration: BoxDecoration(
                                color: isPaper
                                    ? AppColors.paperGreen
                                    : AppColors.green,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: AppText.c1(
                                'Điểm bằng nhau',
                                color: AppColors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.w),
                    AppText.b2(
                      '${player.effectiveScore} từ đã tìm',
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                    if (!isMe) ...[
                      SizedBox(width: 4.w),
                      InkWell(
                        onTap: () {
                          AppToast.show(
                            context,
                            message:
                                'Đã gửi phản hồi về người chơi ${player.name}!',
                          );
                        },
                        child: Icon(
                          Icons.outlined_flag_rounded,
                          size: 16.r,
                          color: isPaper
                              ? AppColors.paperTextMuted
                              : AppColors.grayMedium,
                        ),
                      ),
                    ],
                  ],
                ),
                SizedBox(height: 6.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 6.h,
                    backgroundColor: isPaper
                        ? AppColors.paperBorder
                        : AppColors.grayLight,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isMe
                          ? (isPaper ? AppColors.paperGreen : AppColors.green)
                          : AppColors.greenLight,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildWordsList(
    BuildContext context,
    bool isPaper,
    List<WordInfo> uniqueWords,
  ) {
    if (uniqueWords.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.b1(
          'Các từ đã học (${uniqueWords.length})',
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 8.h),
        LayoutBuilder(
          builder: (context, constraints) {
            final isMultiColumn = constraints.maxWidth > 420;
            if (isMultiColumn) {
              final leftCol = <WordInfo>[];
              final rightCol = <WordInfo>[];
              for (var i = 0; i < uniqueWords.length; i++) {
                if (i.isEven) {
                  leftCol.add(uniqueWords[i]);
                } else {
                  rightCol.add(uniqueWords[i]);
                }
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: leftCol
                          .map((w) => _buildWordCard(context, w, isPaper))
                          .toList(),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      children: rightCol
                          .map((w) => _buildWordCard(context, w, isPaper))
                          .toList(),
                    ),
                  ),
                ],
              );
            }
            return Column(
              children: uniqueWords
                  .map((w) => _buildWordCard(context, w, isPaper))
                  .toList(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildWordCard(BuildContext context, WordInfo w, bool isPaper) {
    final en = (w.en != null && w.en!.isNotEmpty) ? w.en! : w.masked;
    final isSaved = _savedWords.contains(en);
    final (exampleEn, exampleVi) = _getExamplePair(en, w.vi, w.example);
    final solverName = _getSolverName(en);
    final isSkipped = _isWordSkipped(en);

    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
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
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row 1: Word + Speaker 3D + Phonetic
          Row(
            children: [
              AppText.b1(
                en.toLowerCase(),
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 6.w),
              InkWell(
                onTap: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  sl<AppAudioService>().speakWord(en);
                },
                borderRadius: BorderRadius.circular(14.r),
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: isPaper
                        ? AppColors.paperSurfaceWarm
                        : AppColors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isPaper
                          ? AppColors.paperBorder
                          : AppColors.classicBorder,
                      width: 1.2.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isPaper
                            ? AppColors.paperExtrusion
                            : AppColors.grayExtrusion,
                        offset: Offset(0, 1.5.h),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.volume_up_rounded,
                    color: isPaper ? AppColors.paperGreenDark : AppColors.blue,
                    size: 16.r,
                  ),
                ),
              ),
              const Spacer(),
              if (w.phonetic.isNotEmpty)
                AppText.c1(
                  w.phonetic,
                  color: isPaper
                      ? AppColors.paperTextMedium
                      : AppColors.grayMedium,
                  fontSize: 12.sp,
                ),
            ],
          ),
          SizedBox(height: 4.h),

          // Row 2: Vietnamese Definition
          AppText.b2(
            w.vi,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 8.h),

          // Row 3: Khung mô tả ví dụ đậm màu, viền rõ ràng & dải gờ xanh 3D
          if (exampleEn.isNotEmpty) ...[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isPaper
                    ? const Color(0xFFF1E8D9)
                    : const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: isPaper
                      ? const Color(0xFFD8CCB8)
                      : const Color(0xFFCBD5E1),
                  width: 1.2.w,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 3.5.w,
                    height: 38.h,
                    margin: EdgeInsets.only(right: 10.w, top: 2.h),
                    decoration: BoxDecoration(
                      color: isPaper ? AppColors.paperGreen : AppColors.green,
                      borderRadius: BorderRadius.circular(2.r),
                      boxShadow: [
                        BoxShadow(
                          color:
                              (isPaper
                                      ? AppColors.paperGreenDark
                                      : AppColors.greenDark)
                                  .withValues(alpha: 0.35),
                          offset: Offset(0, 1.h),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.b2(
                          exampleEn,
                          color: isPaper
                              ? const Color(0xFF2E251A)
                              : const Color(0xFF0F172A),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        if (exampleVi.isNotEmpty) ...[
                          SizedBox(height: 3.h),
                          AppText.c1(
                            exampleVi,
                            color: isPaper
                                ? const Color(0xFF6B5E4E)
                                : const Color(0xFF475569),
                            fontSize: 12.sp,
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
          ],

          // Row 4: Mic Icon for Pronunciation practice 3D
          InkWell(
            onTap: () {
              context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
              sl<AppAudioService>().speakWord(en);
              AppToast.show(
                context,
                message: 'Lắng nghe & luyện phát âm từ "$en"!',
              );
            },
            borderRadius: BorderRadius.circular(14.r),
            child: Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isPaper ? AppColors.paperSurfaceWarm : AppColors.white,
                border: Border.all(
                  color: isPaper
                      ? AppColors.paperBorder
                      : AppColors.classicBorder,
                  width: 1.2.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: isPaper
                        ? AppColors.paperExtrusion
                        : AppColors.grayExtrusion,
                    offset: Offset(0, 1.5.h),
                  ),
                ],
              ),
              child: Icon(
                Icons.mic_none_rounded,
                size: 16.r,
                color: isPaper
                    ? AppColors.paperTextMedium
                    : AppColors.grayMedium,
              ),
            ),
          ),
          SizedBox(height: 8.h),

          // Dashed Divider
          AppDotted(
            color: isPaper ? AppColors.paperDottedLine : AppColors.grayLight,
          ),
          SizedBox(height: 8.h),

          // Row 5: Solver Badge / Đã bỏ qua + "Lưu vào Kho" + "Góp ý từ" 3D
          Row(
            children: [
              if (isSkipped)
                AppText.c1(
                  'Đã bỏ qua',
                  color: isPaper
                      ? const Color(0xFFC0392B)
                      : const Color(0xFFDC2626),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                )
              else ...[
                Icon(
                  Icons.check_circle_rounded,
                  color: isPaper ? AppColors.paperGreen : AppColors.green,
                  size: 14.r,
                ),
                SizedBox(width: 4.w),
                AppText.c1(
                  solverName,
                  color: isPaper
                      ? AppColors.paperGreenDark
                      : AppColors.greenDark,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
              const Spacer(),
              // Nút Lưu vào Kho 3D
              InkWell(
                onTap: isSaved || _isSavingVault
                    ? null
                    : () => _onSaveWordToVault(en, w.vi, phonetic: w.phonetic),
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: isSaved
                        ? (isPaper
                              ? AppColors.paperGreen.withValues(alpha: 0.16)
                              : AppColors.green.withValues(alpha: 0.12))
                        : (isPaper
                              ? AppColors.paperSurfaceWarm
                              : AppColors.lightBackground),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: isSaved
                          ? (isPaper
                                ? AppColors.paperGreenBorder
                                : AppColors.green)
                          : (isPaper
                                ? AppColors.paperBorder
                                : AppColors.classicBorder),
                      width: 1.2.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isSaved
                            ? (isPaper
                                  ? AppColors.paperGreenExtrusion
                                  : AppColors.greenDark)
                            : (isPaper
                                  ? AppColors.paperExtrusion
                                  : AppColors.grayExtrusion),
                        offset: Offset(0, 1.5.h),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isSaved
                            ? Icons.bookmark_added_rounded
                            : Icons.bookmark_border_rounded,
                        size: 13.r,
                        color: isSaved
                            ? (isPaper
                                  ? AppColors.paperGreenDark
                                  : AppColors.greenDark)
                            : (isPaper
                                  ? const Color(0xFF78350F)
                                  : AppColors.grayDark),
                      ),
                      SizedBox(width: 3.w),
                      AppText.c1(
                        isSaved ? 'Đã lưu' : 'Lưu vào Kho',
                        color: isSaved
                            ? (isPaper
                                  ? AppColors.paperGreenDark
                                  : AppColors.greenDark)
                            : (isPaper
                                  ? const Color(0xFF78350F)
                                  : AppColors.grayDark),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 6.w),
              // Nút Góp ý từ 3D
              InkWell(
                onTap: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  HomeFeedbackDialog.show(context);
                },
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: isPaper
                        ? AppColors.paperSurfaceWarm
                        : AppColors.lightBackground,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: isPaper
                          ? AppColors.paperBorder
                          : AppColors.classicBorder,
                      width: 1.2.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isPaper
                            ? AppColors.paperExtrusion
                            : AppColors.grayExtrusion,
                        offset: Offset(0, 1.5.h),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 13.r,
                        color: isPaper
                            ? const Color(0xFF78350F)
                            : AppColors.grayDark,
                      ),
                      SizedBox(width: 3.w),
                      AppText.c1(
                        'Góp ý từ',
                        color: isPaper
                            ? const Color(0xFF78350F)
                            : AppColors.grayDark,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooterActions(BuildContext context, bool isPaper) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.lightBackground,
        border: Border(
          top: BorderSide(
            color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
            width: 1.5.w,
          ),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Bố cục thích ứng: Trên màn hình hẹp di động (< 480px) dùng lưới 2x2
          // giúp các nút có đủ chiều rộng (~150px), chữ "LUYỆN LẠI",
          // "ĐỔI CHỦ ĐỀ", "TRAO ĐỔI", "TRANG CHỦ" hiển thị trọn vẹn.
          final isNarrow = constraints.maxWidth < 480;

          final replayBtn = AppButton(
            text: 'LUYỆN LẠI',
            height: 38.h,
            fontSize: isNarrow ? 12.sp : 10.sp,
            icon: Icon(
              Icons.refresh_rounded,
              size: 15.r,
              color: AppColors.white,
            ),
            backgroundColor: isPaper ? AppColors.paperGreen : AppColors.green,
            borderColor: isPaper
                ? AppColors.paperGreenBorder
                : AppColors.white.withValues(alpha: 0.3),
            extrusionColor: isPaper
                ? AppColors.paperGreenExtrusion
                : AppColors.greenDark,
            onPressed: () {
              Navigator.of(context).pop();
              widget.onReplay();
            },
          );

          final changeTopicBtn = AppButton(
            text: 'ĐỔI CHỦ ĐỀ',
            height: 38.h,
            fontSize: isNarrow ? 12.sp : 10.sp,
            icon: Icon(
              Icons.menu_book_rounded,
              size: 15.r,
              color: AppColors.white,
            ),
            backgroundColor: isPaper ? const Color(0xFF2C5E7A) : AppColors.blue,
            borderColor: AppColors.white.withValues(alpha: 0.3),
            extrusionColor: isPaper
                ? const Color(0xFF1B3C4E)
                : AppColors.blueDark,
            onPressed: () {
              Navigator.of(context).pop();
              widget.onChangeTopic();
            },
          );

          final chatBtn = AppButton(
            text: 'TRAO ĐỔI',
            height: 38.h,
            fontSize: isNarrow ? 12.sp : 10.sp,
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 15.r,
              color: AppColors.white,
            ),
            backgroundColor: isPaper
                ? const Color(0xFF3B6978)
                : const Color(0xFF3F51B5),
            borderColor: AppColors.white.withValues(alpha: 0.3),
            extrusionColor: isPaper
                ? const Color(0xFF20404C)
                : const Color(0xFF283593),
            onPressed: () {
              if (widget.onChat != null) {
                widget.onChat!();
              } else if (!widget.isSolo && widget.players.length > 1) {
                final rival = widget.players.firstWhereOrNull(
                  (p) => p.uid != widget.myUid,
                );
                if (rival != null) {
                  ChatDialog.show(
                    context,
                    rivalName: rival.name,
                    rivalAvatar: rival.avatar,
                  );
                }
              } else {
                AppToast.show(
                  context,
                  message:
                      'Tính năng trao đổi hoạt động trong phòng cùng bạn bè!',
                );
              }
            },
          );

          final homeBtn = AppButton(
            text: 'TRANG CHỦ',
            height: 38.h,
            fontSize: isNarrow ? 12.sp : 10.sp,
            icon: Icon(
              Icons.home_rounded,
              size: 15.r,
              color: AppColors.white,
            ),
            backgroundColor: isPaper
                ? const Color(0xFFC05621)
                : AppColors.orangeDark,
            borderColor: AppColors.white.withValues(alpha: 0.3),
            extrusionColor: isPaper
                ? const Color(0xFF7B341E)
                : AppColors.orangeDeep,
            onPressed: () {
              Navigator.of(context).pop();
              widget.onHome();
            },
          );

          if (isNarrow) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(child: replayBtn),
                    SizedBox(width: 8.w),
                    Expanded(child: changeTopicBtn),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Expanded(child: chatBtn),
                    SizedBox(width: 8.w),
                    Expanded(child: homeBtn),
                  ],
                ),
              ],
            );
          }

          return Row(
            children: [
              Expanded(child: replayBtn),
              SizedBox(width: 6.w),
              Expanded(child: changeTopicBtn),
              SizedBox(width: 6.w),
              Expanded(child: chatBtn),
              SizedBox(width: 6.w),
              Expanded(child: homeBtn),
            ],
          );
        },
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.label,
    required this.isPaper,
  });

  final IconData icon;
  final Color iconColor;
  final String value;
  final String label;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 2.5.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor, size: 22.r),
          SizedBox(height: 5.h),
          AppText.b1(
            value,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
          SizedBox(height: 3.h),
          AppText.c1(
            label,
            color: isPaper ? AppColors.paperTextMedium : AppColors.grayMedium,
            textAlign: TextAlign.center,
            fontSize: 10.sp,
          ),
        ],
      ),
    );
  }
}

import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/base/default_bloc.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_edit_name_dialog.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_grid.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_header.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_guess_difficulty.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_matchmaking_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_mode_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_room_dialog.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/utils/validation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// Màn hình chọn chủ đề trò chơi Đoán từ khuyết (Word Guess Topic Page)
/// Kế thừa `BasePageState` theo chuẩn kiến trúc BasePage
class WordGuessTopicPage extends StatefulWidget {
  const WordGuessTopicPage({super.key});

  @override
  State<WordGuessTopicPage> createState() => _WordGuessTopicPageState();
}

class _WordGuessTopicPageState
    extends BasePageState<WordGuessTopicPage, DefaultBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  String _selectedTopicId = 'auto';

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _onTopicTapped(Topic topic) {
    setState(() {
      _selectedTopicId = topic.id;
    });

    _openModeDialog(topic.id);
  }

  void _openModeDialog(String topicId) {
    WordGuessModeDialog.show(
      context,
      topicId: topicId,
      onChangeTopic: () {
        // Đã đóng modal, người chơi chọn lại chủ đề trên màn hình
      },
      onSoloPractice: (difficulty) => _startSoloPractice(topicId, difficulty),
      onOnlineMatch: (difficulty) => _startOnlineMatch(topicId, difficulty),
      onCustomRoom: (difficulty) => _startCustomRoom(topicId, difficulty),
    );
  }

  void _startSoloPractice(String topicId, WordGuessDifficulty difficulty) {
    context.push(
      AppRouter.wordGuess,
      extra: {
        'mode': WordGuessGameMode.practice,
        'topic': topicId,
        'difficulty': difficulty.key,
      },
    );
  }

  Future<bool> _ensureValidPlayerName() async {
    final authState = context.read<AuthBloc>().state;
    final currentName = authState.currentUser?.displayName.trim();

    if (ValidationUtils.isValidPlayerName(currentName)) {
      return true;
    }

    AppToast.showWarning(
      context,
      context.l10n.nameRequiredOnline,
    );

    final newName = await PlayerEditNameDialog.show(
      context,
      initialName: currentName ?? '',
    );

    if (!mounted) return false;

    if (newName != null && ValidationUtils.isValidPlayerName(newName.trim())) {
      context.read<AuthBloc>().add(
        AuthEvent.updateProfile(displayName: newName.trim()),
      );
      return true;
    }

    return false;
  }

  Future<void> _startOnlineMatch(
    String topicId,
    WordGuessDifficulty difficulty,
  ) async {
    final hasValidName = await _ensureValidPlayerName();
    if (!hasValidName || !mounted) return;

    await WordGuessMatchmakingDialog.show(
      context,
      topic: topicId,
      difficulty: difficulty.key,
      onMatched: (roomCode, rivalName, rivalAvatar) {
        AppToast.showSuccess(
          context,
          context.l10n.opponentFoundRival(rivalName),
        );
        context.push(
          AppRouter.wordGuess,
          extra: {
            'mode': WordGuessGameMode.matchmake,
            'topic': topicId,
            'roomCode': roomCode,
            'rivalName': rivalName,
            'rivalAvatar': rivalAvatar,
            'difficulty': difficulty.key,
          },
        );
      },
    );
  }

  Future<void> _startCustomRoom(
    String topicId,
    WordGuessDifficulty difficulty,
  ) async {
    final hasValidName = await _ensureValidPlayerName();
    if (!hasValidName || !mounted) return;

    final topic = TopicX.defaultTopics
        .where((t) => t.id == topicId)
        .firstOrNull;
    final topicTitle = topicId == 'auto'
        ? context.l10n.randomPractice
        : (topic?.name ?? context.l10n.randomPractice);

    await WordGuessRoomDialog.show(
      context,
      topicId: topicId,
      topicTitle: topicTitle,
      difficulty: difficulty.key,
      onEnterRoom: (roomCode, durationSeconds) {
        context.push(
          AppRouter.wordGuess,
          extra: {
            'mode': WordGuessGameMode.room,
            'topic': topicId,
            'roomCode': roomCode,
            'durationSeconds': durationSeconds,
            'difficulty': difficulty.key,
          },
        );
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Nền chủ đề (Hỗ trợ 2 themes Paper & Classic)
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
            minimum: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
            child: Column(
              children: [
                // 1. Header Bar: Nút Back, Banner tiêu đề, Cài đặt
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
                      onPressed: () {
                        context.read<AppBloc>().add(
                          const AppEvent.clickSoundPlayed(),
                        );
                        try {
                          if (context.canPop()) {
                            context.pop();
                          } else {
                            context.go(AppRouter.home);
                          }
                        } on Object catch (_) {
                          context.go(AppRouter.home);
                        }
                      },
                    ),
                    Expanded(
                      child: Center(
                        child: TopicHeader(isPaperTheme: isPaper),
                      ),
                    ),
                    AppIconButton(
                      icon: Icons.settings_rounded,
                      tooltip: context.l10n.settings,
                      size: 36.r,
                      iconSize: 18.r,
                      backgroundColor: isPaper
                          ? AppColors.paperCardBg
                          : AppColors.white,
                      iconColor: isPaper
                          ? AppColors.paperHeaderIcon
                          : AppColors.sky,
                      borderColor: isPaper
                          ? AppColors.paperBorder
                          : AppColors.grayLight,
                      extrusionColor: isPaper
                          ? AppColors.paperExtrusion
                          : AppColors.grayExtrusion,
                      extrusionHeight: 2.5,
                      onPressed: () => HomeSettingsDialog.show(context),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                // 2. Lưới thẻ chủ đề (TopicGrid)
                Expanded(
                  child: TopicGrid(
                    selectedTopicId: _selectedTopicId,
                    isPaperTheme: isPaper,
                    onTopicSelected: _onTopicTapped,
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

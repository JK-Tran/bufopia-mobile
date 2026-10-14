import 'dart:async';

import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/bloc/home_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_body.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/dialog/vocabulary_review_words_dialog.dart';
import 'package:bufopia/features/word_chain/word_chain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    bloc.add(const HomeEvent.initiated());
    context.read<AuthBloc>().add(const AuthEvent.getUserInfo());
  }

  Future<void> _handleQuickBattleNavigation({
    bool isBot = true,
    String? roomCode,
    String? rivalName,
    String? rivalAvatar,
  }) async {
    if (!mounted) return;
    await context.push(
      AppRouter.vocabulary,
      extra: {
        'isBot': isBot,
        'roomCode': ?roomCode,
        'rivalName': ?rivalName,
        'rivalAvatar': ?rivalAvatar,
      },
    );
    if (!mounted) return;
    if (context.read<AuthBloc>().state.currentUser == null) {
      context.read<AuthBloc>().add(const AuthEvent.getUserInfo());
    }
  }

  void _onNavigateToChooseTopic() {
    context.push(AppRouter.topic);
  }

  Future<void> _onReviewWeakWordsPressed() async {
    await VocabularyReviewWordsDialog.show(
      context,
      onStartPractice: _handleQuickBattleNavigation,
    );
  }

  Future<void> _onWordChainPressed() async {
    await WordChainModeDialog.show(
      context,
      onBotTimed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => const WordChainPage(),
          ),
        );
      },
      onBotRelax: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => const WordChainPage(
              relaxed: true,
            ),
          ),
        );
      },
      onOnlineTimed: () {
        WordChainMatchmakingDialog.show(
          context,
          onMatched: (roomCode, rivalName, rivalAvatar) {
            AppSnackBar.showSuccess(
              context,
              'Đã tìm thấy đối thủ $rivalName! Vào trận...',
            );
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => WordChainPage(
                  mode: WordChainGameMode.room,
                  roomCode: roomCode,
                ),
              ),
            );
          },
        );
      },
      onOnlineRelax: () {
        WordChainMatchmakingDialog.show(
          context,
          relaxed: true,
          onMatched: (roomCode, rivalName, rivalAvatar) {
            AppSnackBar.showSuccess(
              context,
              'Đã tìm thấy đối thủ $rivalName! Vào trận...',
            );
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => WordChainPage(
                  mode: WordChainGameMode.room,
                  roomCode: roomCode,
                  relaxed: true,
                ),
              ),
            );
          },
        );
      },
      onInviteTimed: () {
        WordChainRoomDialog.show(
          context,
          onEnterRoom: (roomCode) {
            AppSnackBar.showSuccess(
              context,
              'Đã vào phòng thi đấu #$roomCode!',
            );
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => WordChainPage(
                  mode: WordChainGameMode.room,
                  roomCode: roomCode,
                ),
              ),
            );
          },
        );
      },
      onInviteRelax: () {
        WordChainRoomDialog.show(
          context,
          relaxed: true,
          onEnterRoom: (roomCode) {
            AppSnackBar.showSuccess(
              context,
              'Đã vào phòng thi đấu #$roomCode!',
            );
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => WordChainPage(
                  mode: WordChainGameMode.room,
                  roomCode: roomCode,
                  relaxed: true,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocProvider<LeaderboardBloc>(
      create: (_) => GetIt.instance.get<LeaderboardBloc>(),
      child: Scaffold(
        body: HomeBody(
          onQuickBattle: _onWordChainPressed,
          onChooseTopic: _onNavigateToChooseTopic,
          onReviewWeakWords: _onReviewWeakWordsPressed,
        ),
      ),
    );
  }
}

import 'package:bufopia/features/home/home.dart';
import 'package:bufopia/features/vocabulary/presentation/pages/topic_page.dart';
import 'package:bufopia/features/vocabulary/presentation/pages/vocabulary_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

class AppRouter {
  const AppRouter._();

  static const String home = '/home';
  static const String topic = '/topic';
  static const String vocabulary = '/vocabulary';
  static const String quickBattle = vocabulary;

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: home,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: topic,
        name: 'topic',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const TopicPage(),
          transitionDuration: const Duration(milliseconds: 250),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: vocabulary,
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final isBot = extra?['isBot'] as bool? ?? true;
          final topic = extra?['topic'] as String? ?? 'auto';
          final roomCode = extra?['roomCode'] as String?;
          final rivalName = extra?['rivalName'] as String?;
          final rivalAvatar = extra?['rivalAvatar'] as String?;
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: VocabularyPage(
              isBotOpponent: isBot,
              topic: topic,
              roomCode: roomCode,
              initialOpponentName: rivalName,
              initialOpponentAvatar: rivalAvatar,
            ),
            transitionDuration: const Duration(milliseconds: 250),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
          );
        },
      ),
    ],
  );
}

import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/services/audio/home_bgm_observer.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockAppAudioService extends Mock implements AppAudioService {}

class TestPopupRoute extends PopupRoute<void> {
  @override
  Color? get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return const SizedBox();
  }

  @override
  Duration get transitionDuration => Duration.zero;
}

void main() {
  late MockAppAudioService mockAudio;
  late HomeBgmObserver observer;

  setUp(() {
    mockAudio = MockAppAudioService();
    observer = HomeBgmObserver();

    if (GetIt.instance.isRegistered<AppAudioService>()) {
      GetIt.instance.unregister<AppAudioService>();
    }
    GetIt.instance.registerSingleton<AppAudioService>(mockAudio);
  });

  tearDown(() {
    if (GetIt.instance.isRegistered<AppAudioService>()) {
      GetIt.instance.unregister<AppAudioService>();
    }
  });

  group('HomeBgmObserver route handling', () {
    test('calls onEnterHome when pushing home route', () {
      final homeRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.home),
        builder: (_) => const SizedBox(),
      );

      observer.didPush(homeRoute, null);
      verify(() => mockAudio.onEnterHome()).called(1);
      verifyNever(() => mockAudio.onLeaveHome());
    });

    test('calls onLeaveHome when pushing non-home route from home', () {
      final homeRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.home),
        builder: (_) => const SizedBox(),
      );
      final topicRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.topic),
        builder: (_) => const SizedBox(),
      );

      observer.didPush(topicRoute, homeRoute);
      verify(() => mockAudio.onLeaveHome()).called(1);
    });

    test('calls onEnterHome when popping non-home route back to home', () {
      final homeRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.home),
        builder: (_) => const SizedBox(),
      );
      final topicRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.topic),
        builder: (_) => const SizedBox(),
      );

      observer.didPop(topicRoute, homeRoute);
      verify(() => mockAudio.onEnterHome()).called(1);
    });

    test('ignores PopupRoute on push, pop, and remove', () {
      final homeRoute = MaterialPageRoute<void>(
        settings: const RouteSettings(name: AppRouter.home),
        builder: (_) => const SizedBox(),
      );
      final popup = TestPopupRoute();

      // Pushing, popping, removing popup over home
      observer
        ..didPush(popup, homeRoute)
        ..didPop(popup, homeRoute)
        ..didRemove(popup, homeRoute);

      verifyNever(() => mockAudio.onEnterHome());
      verifyNever(() => mockAudio.onLeaveHome());
    });

    test('SoundManager safely handles calls when unregistered', () {
      GetIt.instance.unregister<AppAudioService>();

      expect(SoundManager.onEnterHome, returnsNormally);
      expect(SoundManager.onLeaveHome, returnsNormally);
      expect(SoundManager.playClick, returnsNormally);
      expect(SoundManager.playCorrect, returnsNormally);
      expect(SoundManager.playWrong, returnsNormally);
    });
  });
}

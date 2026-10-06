import 'package:bloc_test/bloc_test.dart';
import 'package:bufopia/features/home/presentation/bloc/home_bloc.dart';
import 'package:bufopia/features/home/presentation/pages/home_page.dart';
import 'package:bufopia/features/home/presentation/widgets/home_body.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/pump_app.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockLeaderboardBloc extends MockBloc<LeaderboardEvent, LeaderboardState>
    implements LeaderboardBloc {}

void main() {
  group('HomePage', () {
    setUp(() {
      GetIt.I.registerFactory<HomeBloc>(() {
        final bloc = MockHomeBloc();
        when(() => bloc.state).thenReturn(const HomeState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
      GetIt.I.registerFactory<LeaderboardBloc>(() {
        final bloc = MockLeaderboardBloc();
        when(() => bloc.state).thenReturn(const LeaderboardState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
    });

    tearDown(() async {
      await GetIt.I.reset();
    });

    testWidgets('renders HomePage and HomeBody', (tester) async {
      tester.view.physicalSize = const Size(1920, 1080);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpApp(const HomePage());
      await tester.pump();

      expect(find.byType(HomePage), findsOneWidget);
      expect(find.byType(HomeBody), findsOneWidget);
    });
  });
}

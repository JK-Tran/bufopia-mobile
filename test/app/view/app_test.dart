import 'package:bloc_test/bloc_test.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/app/view/app.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/home.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/network/network_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockLeaderboardBloc extends MockBloc<LeaderboardEvent, LeaderboardState>
    implements LeaderboardBloc {}

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  group('App', () {
    setUp(() {
      sl.registerFactory<NetworkService>(() {
        final service = MockNetworkService();
        when(() => service.isConnected).thenAnswer((_) async => true);
        when(
          () => service.onConnectivityChanged,
        ).thenAnswer((_) => const Stream.empty());
        return service;
      });
      sl.registerFactory<AppBloc>(() {
        final bloc = MockAppBloc();
        when(() => bloc.state).thenReturn(const AppState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
      sl.registerFactory<AuthBloc>(() {
        final bloc = MockAuthBloc();
        when(() => bloc.state).thenReturn(const AuthState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
      sl.registerFactory<HomeBloc>(() {
        final bloc = MockHomeBloc();
        when(() => bloc.state).thenReturn(const HomeState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
      sl.registerFactory<LeaderboardBloc>(() {
        final bloc = MockLeaderboardBloc();
        when(() => bloc.state).thenReturn(const LeaderboardState());
        when(() => bloc.loadingStream).thenAnswer((_) => const Stream.empty());
        when(() => bloc.errorStream).thenAnswer((_) => const Stream.empty());
        return bloc;
      });
    });

    tearDown(() async {
      await sl.reset();
    });

    testWidgets('renders HomePage', (tester) async {
      tester.view.physicalSize = const Size(1920, 1080);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const App());
      await tester.pump();
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}

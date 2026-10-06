import 'package:bloc_test/bloc_test.dart';
import 'package:bufopia/core/constants/device_constants.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    AppBloc? appBloc,
    AuthBloc? authBloc,
  }) {
    final effectiveAppBloc = appBloc ?? MockAppBloc();
    final effectiveAuthBloc = authBloc ?? MockAuthBloc();

    if (appBloc == null) {
      when(() => effectiveAppBloc.state).thenReturn(const AppState());
    }
    if (authBloc == null) {
      when(() => effectiveAuthBloc.state).thenReturn(const AuthState());
    }

    return pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>.value(value: effectiveAppBloc),
          BlocProvider<AuthBloc>.value(value: effectiveAuthBloc),
        ],
        child: ScreenUtilInit(
          designSize: const Size(
            DeviceConstants.designDeviceWidth,
            DeviceConstants.designDeviceHeight,
          ),
          builder: (context, child) => MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: widget,
          ),
        ),
      ),
    );
  }
}

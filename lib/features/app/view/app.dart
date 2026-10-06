import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/device_constants.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/gen/app_localizations.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  late final AppBloc _appBloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _appBloc = sl<AppBloc>()..add(const AppEvent.initiated());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    Log.d('AppLifecycleState: ${state.name}');
    _appBloc.add(AppEvent.lifecycleChanged(state));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _appBloc),
        BlocProvider.value(value: sl<AuthBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          DeviceConstants.designDeviceWidth,
          DeviceConstants.designDeviceHeight,
        ),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<AppBloc, AppState>(
            buildWhen: (previous, current) =>
                previous.languageCode != current.languageCode ||
                previous.isDarkMode != current.isDarkMode,
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                locale: Locale(state.languageCode),
                theme: ThemeData(
                  appBarTheme: AppBarTheme(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.inversePrimary,
                  ),
                  useMaterial3: true,
                  fontFamily: 'Inter',
                ),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                routerConfig: AppRouter.router,
                builder: (context, child) {
                  final data = MediaQuery.of(context);
                  return MediaQuery(
                    data: data.copyWith(textScaler: TextScaler.noScaling),
                    child: AppNetworkBanner(
                      child: child ?? const SizedBox.shrink(),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

import 'dart:ui';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/services/local_storage/app_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(
    this._appPreferences,
    this._audioService,
  ) : super(const AppState()) {
    on<Initiated>(_onInitiated);
    on<MusicToggled>(_onMusicToggled);
    on<SfxToggled>(_onSfxToggled);
    on<LanguageChanged>(_onLanguageChanged);
    on<ThemeChanged>(_onThemeChanged);
    on<LifecycleChanged>(_onLifecycleChanged);
    on<ClickSoundPlayed>(_onClickSoundPlayed);
  }

  final AppPreferences _appPreferences;
  final AppAudioService _audioService;

  Future<void> _onInitiated(
    Initiated event,
    Emitter<AppState> emit,
  ) async {
    final isMusic = _appPreferences.isMusicEnabled;
    final isSfx = _appPreferences.isSfxEnabled;
    final language = _appPreferences.languageCode;
    final isDark = _appPreferences.isDarkMode;
    final theme = _appPreferences.appTheme;

    await _audioService.init();
    await _audioService.setMusicEnabled(enabled: isMusic);
    await _audioService.setSfxEnabled(enabled: isSfx);

    emit(
      state.copyWith(
        isMusicEnabled: isMusic,
        isSfxEnabled: isSfx,
        languageCode: language,
        isDarkMode: isDark,
        appTheme: theme,
        isInitialized: true,
      ),
    );
  }

  Future<void> _onMusicToggled(
    MusicToggled event,
    Emitter<AppState> emit,
  ) async {
    final nextState = !state.isMusicEnabled;
    await _appPreferences.saveIsMusicEnabled(isMusicEnabled: nextState);
    await _audioService.setMusicEnabled(enabled: nextState);
    emit(state.copyWith(isMusicEnabled: nextState));
  }

  Future<void> _onSfxToggled(
    SfxToggled event,
    Emitter<AppState> emit,
  ) async {
    final nextState = !state.isSfxEnabled;
    await _appPreferences.saveIsSfxEnabled(isSfxEnabled: nextState);
    await _audioService.setSfxEnabled(enabled: nextState);
    emit(state.copyWith(isSfxEnabled: nextState));
  }

  Future<void> _onLanguageChanged(
    LanguageChanged event,
    Emitter<AppState> emit,
  ) async {
    await _appPreferences.saveLanguageCode(event.languageCode);
    emit(state.copyWith(languageCode: event.languageCode));
  }

  Future<void> _onThemeChanged(
    ThemeChanged event,
    Emitter<AppState> emit,
  ) async {
    await _appPreferences.saveAppTheme(event.appTheme);
    emit(state.copyWith(appTheme: event.appTheme));
  }

  Future<void> _onLifecycleChanged(
    LifecycleChanged event,
    Emitter<AppState> emit,
  ) async {
    final lifecycleState = event.lifecycleState;
    if (lifecycleState == AppLifecycleState.resumed) {
      if (state.isMusicEnabled) {
        await _audioService.resumeBgm();
      }
    } else if (lifecycleState == AppLifecycleState.paused ||
        lifecycleState == AppLifecycleState.inactive ||
        lifecycleState == AppLifecycleState.hidden) {
      await _audioService.pauseBgm();
    }
  }

  Future<void> _onClickSoundPlayed(
    ClickSoundPlayed event,
    Emitter<AppState> emit,
  ) async {
    await _audioService.playClickSfx();
  }

  @override
  Future<void> close() async {
    await _audioService.dispose();
    return super.close();
  }
}

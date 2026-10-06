part of 'app_bloc.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(true) bool isMusicEnabled,
    @Default(true) bool isSfxEnabled,
    @Default('vi') String languageCode,
    @Default(false) bool isDarkMode,
    @Default('paper') String appTheme,
    @Default(false) bool isInitialized,
  }) = _AppState;

  const AppState._();

  bool get isPaperTheme => appTheme == 'paper';
  bool get isClassicTheme => appTheme == 'classic';
}

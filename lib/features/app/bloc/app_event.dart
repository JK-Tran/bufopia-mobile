part of 'app_bloc.dart';

@freezed
abstract class AppEvent with _$AppEvent {
  const factory AppEvent.initiated() = Initiated;
  const factory AppEvent.musicToggled() = MusicToggled;
  const factory AppEvent.sfxToggled() = SfxToggled;
  const factory AppEvent.languageChanged(
    String languageCode,
  ) = LanguageChanged;
  const factory AppEvent.themeChanged(
    String appTheme,
  ) = ThemeChanged;
  const factory AppEvent.lifecycleChanged(
    AppLifecycleState lifecycleState,
  ) = LifecycleChanged;
  const factory AppEvent.clickSoundPlayed() = ClickSoundPlayed;
}

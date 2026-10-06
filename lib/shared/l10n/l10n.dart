import 'package:bufopia/shared/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:bufopia/shared/l10n/gen/app_localizations.dart';

/// Extension on [BuildContext] for easy access to localized strings.
/// Example: `context.l10n.unknownError`
extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n {
    final localizations = AppLocalizations.of(this);
    S.current = localizations;
    return localizations;
  }
}

/// Example: `S.current.unknownError`
abstract final class S {
  static AppLocalizations? _current;

  /// Returns the current [AppLocalizations] instance.
  /// If not yet set via [BuildContext] or delegate loading, it falls back
  /// to the device locale if supported, or English ('en').
  static AppLocalizations get current {
    if (_current != null) {
      return _current!;
    }
    try {
      final dispatcherLocale =
          WidgetsBinding.instance.platformDispatcher.locale;
      if (AppLocalizations.supportedLocales.any(
        (l) => l.languageCode == dispatcherLocale.languageCode,
      )) {
        return _current = lookupAppLocalizations(dispatcherLocale);
      }
    } on Exception catch (_) {}
    return _current = lookupAppLocalizations(const Locale('en'));
  }

  static set current(AppLocalizations value) {
    _current = value;
  }

  /// Looks up [AppLocalizations] from [context] and caches it in [current].
  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.of(context);
    _current = instance;
    return instance;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _SLocalizationDelegate();

  /// Combined localization delegates including [_SLocalizationDelegate].
  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates =>
      <LocalizationsDelegate<dynamic>>[
        delegate,
        ...AppLocalizations.localizationsDelegates.where(
          (d) => d != AppLocalizations.delegate,
        ),
      ];

  /// Supported locales from generated [AppLocalizations].
  static List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
}

class _SLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _SLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.delegate.isSupported(locale);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final instance = await AppLocalizations.delegate.load(locale);
    S.current = instance;
    return instance;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}

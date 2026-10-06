// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get counterAppBarTitle => 'Contador';

  @override
  String get navHome => 'Explorar';

  @override
  String get navMap => 'Mapa';

  @override
  String get navChat => 'Mensajes';

  @override
  String get navProfile => 'Perfil';

  @override
  String get unknownError => 'Ocurrió un error desconocido';

  @override
  String get networkError => 'Error de conexión de red. Por favor, compruebe su conexión.';

  @override
  String get timeoutError => 'Tiempo de conexión agotado. Inténtelo de nuevo.';

  @override
  String get sessionExpiredError => 'La sesión ha caducado. Inicie sesión de nuevo.';

  @override
  String get unauthorizedError => 'Acceso no autorizado. Inicie sesión.';

  @override
  String get forbiddenError => 'Acceso prohibido.';

  @override
  String get notFoundError => 'Recurso no encontrado.';

  @override
  String get serverError => 'Error del servidor. Inténtelo de nuevo más tarde.';

  @override
  String get year => 'año(s)';

  @override
  String get month => 'mes(es)';

  @override
  String get day => 'día(s)';

  @override
  String get hour => 'hora(s)';

  @override
  String get minute => 'minuto(s)';

  @override
  String get justNow => 'Ahora mismo';
}

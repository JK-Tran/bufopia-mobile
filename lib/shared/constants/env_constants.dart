import 'package:bufopia/shared/model/shared_enum.dart';
import 'package:bufopia/shared/utils/log_utils.dart';

class EnvConstants {
  const EnvConstants._();

  static const flavorKey = 'FLAVOR';
  static const appBasicAuthNameKey = 'APP_BASIC_AUTH_NAME';
  static const appBasicAuthPasswordKey = 'APP_BASIC_AUTH_PASSWORD';

  static Flavor flavor = Flavor.values.byName(
    const String.fromEnvironment(flavorKey, defaultValue: 'develop'),
  );

  static bool get isProduction => flavor == Flavor.production;

  static void init() {
    Log.d(flavor, name: flavorKey);
  }
}

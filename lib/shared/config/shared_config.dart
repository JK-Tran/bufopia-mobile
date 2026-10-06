import 'package:bufopia/shared/config/config.dart';
import 'package:bufopia/shared/di/di.dart' as di;
import 'package:bufopia/shared/helper/app_info.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:get_it/get_it.dart';

class SharedConfig extends Config {
  SharedConfig._();

  factory SharedConfig.getInstance() {
    return _instance;
  }

  static final SharedConfig _instance = SharedConfig._();

  @override
  Future<void> config() async {
    try {
      await di.configureInjection();
      await GetIt.instance.get<AppInfo>().init();
      await GetIt.instance.get<AppAudioService>().init();
    } catch (e) {
      rethrow;
    }
  }
}

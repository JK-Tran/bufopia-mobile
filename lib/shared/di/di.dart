import 'package:bufopia/shared/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true,
)
Future<void> configureInjection() async => sl.init();

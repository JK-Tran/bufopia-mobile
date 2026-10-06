import 'package:bufopia/bootstrap.dart';
import 'package:bufopia/features/app/view/app.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}

import 'package:async/async.dart';

abstract class Config {
  final AsyncMemoizer<dynamic> _asyncMemoizer = AsyncMemoizer<void>();

  Future<void> config();

  Future<void> init() => _asyncMemoizer.runOnce(config);
}

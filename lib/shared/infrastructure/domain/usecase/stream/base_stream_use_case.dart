import 'package:bufopia/shared/helper/stream/stream_logger.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/base_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';

abstract class BaseStreamUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Stream<Output>> {
  const BaseStreamUseCase();

  Stream<Output> execute(Input input) {
    return buildUseCase(input).log(runtimeType.toString());
  }
}

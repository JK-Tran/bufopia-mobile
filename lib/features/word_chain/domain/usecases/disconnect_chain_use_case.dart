import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DisconnectChainUseCase
    extends BaseFutureUseCase<EmptyInput, EmptyOutput> {
  const DisconnectChainUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(EmptyInput input) async {
    await _repository.disconnect();
    return const EmptyOutput();
  }
}

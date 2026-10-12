import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SendChainSurrenderUseCase
    extends BaseFutureUseCase<EmptyInput, EmptyOutput> {
  const SendChainSurrenderUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(EmptyInput input) async {
    _repository.sendSurrender();
    return const EmptyOutput();
  }
}

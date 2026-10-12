import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class ConnectChainMatchmakeInput extends BaseInput {
  const ConnectChainMatchmakeInput({
    required this.uid,
    required this.name,
    this.token,
    this.avatar,
    this.relaxed = false,
    this.lang = 'en',
  });

  final String uid;
  final String name;
  final String? token;
  final String? avatar;
  final bool relaxed;
  final String lang;
}

@lazySingleton
class ConnectChainMatchmakeUseCase
    extends BaseFutureUseCase<ConnectChainMatchmakeInput, EmptyOutput> {
  const ConnectChainMatchmakeUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(ConnectChainMatchmakeInput input) async {
    await _repository.connectMatchmake(
      uid: input.uid,
      name: input.name,
      token: input.token,
      avatar: input.avatar,
      relaxed: input.relaxed,
      lang: input.lang,
    );
    return const EmptyOutput();
  }
}

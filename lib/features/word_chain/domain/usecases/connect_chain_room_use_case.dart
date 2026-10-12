import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class ConnectChainRoomInput extends BaseInput {
  const ConnectChainRoomInput({
    required this.roomCode,
    required this.uid,
    required this.name,
    this.token,
    this.avatar,
    this.relaxed = false,
    this.lang = 'en',
  });

  final String roomCode;
  final String uid;
  final String name;
  final String? token;
  final String? avatar;
  final bool relaxed;
  final String lang;
}

@lazySingleton
class ConnectChainRoomUseCase
    extends BaseFutureUseCase<ConnectChainRoomInput, EmptyOutput> {
  const ConnectChainRoomUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(ConnectChainRoomInput input) async {
    await _repository.connectRoom(
      roomCode: input.roomCode,
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

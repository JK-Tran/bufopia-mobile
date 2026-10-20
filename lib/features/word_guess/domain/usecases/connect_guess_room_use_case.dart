import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class ConnectGuessRoomInput extends BaseInput {
  const ConnectGuessRoomInput({
    required this.roomCode,
    required this.uid,
    required this.name,
    this.token,
    this.avatar,
  });

  final String roomCode;
  final String uid;
  final String name;
  final String? token;
  final String? avatar;
}

@lazySingleton
class ConnectGuessRoomUseCase
    extends BaseFutureUseCase<ConnectGuessRoomInput, EmptyOutput> {
  const ConnectGuessRoomUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(ConnectGuessRoomInput input) async {
    await _repository.connectRoom(
      roomCode: input.roomCode,
      uid: input.uid,
      name: input.name,
      token: input.token,
      avatar: input.avatar,
    );
    return const EmptyOutput();
  }
}

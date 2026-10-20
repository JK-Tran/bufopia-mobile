import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_output.dart';
import 'package:injectable/injectable.dart';

class ConnectGuessMatchmakeInput extends BaseInput {
  const ConnectGuessMatchmakeInput({
    required this.uid,
    required this.name,
    required this.topic,
    this.token,
    this.avatar,
  });

  final String uid;
  final String name;
  final String topic;
  final String? token;
  final String? avatar;
}

@lazySingleton
class ConnectGuessMatchmakeUseCase
    extends BaseFutureUseCase<ConnectGuessMatchmakeInput, EmptyOutput> {
  const ConnectGuessMatchmakeUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<EmptyOutput> buildUseCase(ConnectGuessMatchmakeInput input) async {
    await _repository.connectMatchmake(
      uid: input.uid,
      name: input.name,
      topic: input.topic,
      token: input.token,
      avatar: input.avatar,
    );
    return const EmptyOutput();
  }
}

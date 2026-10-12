import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:injectable/injectable.dart';

class GetSocketTicketInput extends BaseInput {
  const GetSocketTicketInput({
    required this.uid,
    required this.path,
    this.token,
  });

  final String uid;
  final String path;
  final String? token;
}

class GetSocketTicketOutput extends BaseOutput {
  const GetSocketTicketOutput({this.ticket});

  final String? ticket;
}

@lazySingleton
class GetSocketTicketUseCase
    extends BaseFutureUseCase<GetSocketTicketInput, GetSocketTicketOutput> {
  const GetSocketTicketUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<GetSocketTicketOutput> buildUseCase(GetSocketTicketInput input) async {
    final ticket = await _repository.getSocketTicket(
      uid: input.uid,
      path: input.path,
      token: input.token,
    );
    return GetSocketTicketOutput(ticket: ticket);
  }
}

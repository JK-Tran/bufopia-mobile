import 'package:bufopia/features/word_chain/data/models/session_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/session.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class SessionDataMapper extends BaseDataMapper<SessionData, Session> {
  const SessionDataMapper();

  @override
  Session mapToEntity(SessionData? data) {
    return Session(
      sessionId: data?.sessionId ?? '',
    );
  }
}

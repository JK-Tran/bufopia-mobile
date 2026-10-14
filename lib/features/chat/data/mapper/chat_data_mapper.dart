import 'package:bufopia/features/chat/data/models/chat_data.dart';
import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatDataMapper extends BaseDataMapper<ChatData, Chat> {
  const ChatDataMapper();

  @override
  Chat mapToEntity(ChatData? data) {
    return Chat(
      id: data?.id ?? '',
      actor: data?.actor ?? 0,
      text: data?.text ?? '',
      name: data?.name,
      avatar: data?.avatar,
      time: data?.time,
    );
  }
}

import 'package:bufopia/features/chat/data/datasources/chat_data_source.dart';
import 'package:bufopia/features/chat/data/mapper/chat_data_mapper.dart';
import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/features/chat/domain/repositories/chat_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this._dataSource, this._mapper);

  final ChatDataSource _dataSource;
  final ChatDataMapper _mapper;

  @override
  Stream<Chat> get chatStream =>
      _dataSource.messageStream.map(_mapper.mapToEntity);

  @override
  Stream<List<Chat>> get chatHistoryStream =>
      _dataSource.historyStream.map(_mapper.mapToListEntity);

  @override
  void sendChat(String text) {
    _dataSource.sendChat(text);
  }
}

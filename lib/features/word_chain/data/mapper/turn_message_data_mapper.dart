import 'package:bufopia/features/word_chain/data/mapper/word_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/turn_message_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/turn_message.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class TurnMessageDataMapper
    extends BaseDataMapper<TurnMessageData, TurnMessage> {
  const TurnMessageDataMapper(this._wordMapper);

  final WordDataMapper _wordMapper;

  @override
  TurnMessage mapToEntity(TurnMessageData? data) {
    return TurnMessage(
      actor: data?.actor ?? 0,
      entry: _wordMapper.mapToEntity(data?.entry),
      time: data?.time ?? 0,
    );
  }
}

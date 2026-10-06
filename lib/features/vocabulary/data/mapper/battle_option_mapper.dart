import 'package:bufopia/features/vocabulary/data/models/battle_option_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_option_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleOptionMapper
    extends BaseDataMapper<BattleOptionModel, BattleOptionEntity> {
  const BattleOptionMapper();

  @override
  BattleOptionEntity mapToEntity(BattleOptionModel? data) {
    return BattleOptionEntity(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
    );
  }
}

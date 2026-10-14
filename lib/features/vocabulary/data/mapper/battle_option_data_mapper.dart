import 'package:bufopia/features/vocabulary/data/models/battle_option_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_option.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleOptionDataMapper
    extends BaseDataMapper<BattleOptionData, BattleOption> {
  const BattleOptionDataMapper();

  @override
  BattleOption mapToEntity(BattleOptionData? data) {
    return BattleOption(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
    );
  }
}

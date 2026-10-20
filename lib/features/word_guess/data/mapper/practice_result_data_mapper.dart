import 'package:bufopia/features/auth/data/mapper/user_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/models/practice_result_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PracticeResultDataMapper
    extends BaseDataMapper<PracticeResultData, PracticeResult> {
  const PracticeResultDataMapper(this._userDataMapper);

  final UserDataMapper _userDataMapper;

  @override
  PracticeResult mapToEntity(PracticeResultData? data) {
    return PracticeResult(
      success: data?.success ?? false,
      correct: data?.correct ?? false,
      receiptId: data?.receiptId ?? '',
      gainedXp: data?.gainedXp ?? data?.awardedXp ?? 0,
      awardedXp: data?.awardedXp ?? data?.gainedXp ?? 0,
      leveledUp: data?.leveledUp ?? false,
      user: data?.user != null ? _userDataMapper.mapToEntity(data?.user) : null,
    );
  }
}

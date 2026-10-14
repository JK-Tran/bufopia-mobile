import 'package:bufopia/features/auth/data/mapper/user_data_mapper.dart';
import 'package:bufopia/features/auth/data/models/account_import_data.dart';
import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccountImportMapper
    extends BaseDataMapper<AccountImportResponseData, AccountImportResult> {
  const AccountImportMapper(this._userMapper);

  final UserDataMapper _userMapper;

  @override
  AccountImportResult mapToEntity(AccountImportResponseData? data) {
    if (data == null) {
      return const AccountImportResult();
    }

    final isConflict =
        data.status == 'conflict' ||
        data.code == 'account_exists_conflict' ||
        data.conflict != null;
    AccountConflict? conflict;

    if (data.conflict != null) {
      final cData = data.conflict!;
      final guest = cData.guest ?? {};
      final cloud = cData.cloud ?? cData.account ?? {};

      conflict = AccountConflict(
        message: cData.message ?? data.message ?? '',
        guestElo: ((guest['elo'] ?? guest['xp']) as num?)?.toInt() ?? 0,
        cloudElo: ((cloud['elo'] ?? cloud['xp']) as num?)?.toInt() ?? 0,
        guestMatches:
            ((guest['matches'] ?? guest['level']) as num?)?.toInt() ?? 0,
        cloudMatches:
            ((cloud['matches'] ?? cloud['level']) as num?)?.toInt() ?? 0,
        guestLastActive:
            guest['last_active'] as String? ??
            guest['displayName'] as String? ??
            '',
        cloudLastActive:
            cloud['last_active'] as String? ??
            cloud['displayName'] as String? ??
            '',
      );
    } else if (data.account != null) {
      final cloud = data.account!;
      conflict = AccountConflict(
        message:
            data.message ?? 'Tài khoản này đã có dữ liệu sao lưu trước đó.',
        cloudElo: (cloud['xp'] as num?)?.toInt() ?? 0,
        cloudMatches: (cloud['level'] as num?)?.toInt() ?? 0,
        cloudLastActive: cloud['displayName'] as String? ?? '',
      );
    }

    return AccountImportResult(
      status: data.status ?? (data.code ?? ''),
      action: data.action ?? '',
      activeUid: data.activeUid ?? data.uid ?? '',
      user: data.user != null ? _userMapper.mapToEntity(data.user) : null,
      conflict: conflict,
      isConflict: isConflict,
    );
  }
}

import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/features/leaderboard/domain/repositories/leaderboard_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'get_leaderboard_use_case.freezed.dart';

// ─── Input ─────────────────────────────────────────────────────────

@freezed
abstract class GetLeaderboardInput extends BaseInput
    with _$GetLeaderboardInput {
  const factory GetLeaderboardInput({
    @Default('xp') String metric,
    @Default(50) int limit,
  }) = _GetLeaderboardInput;

  const GetLeaderboardInput._();
}

// ─── Output ────────────────────────────────────────────────────────

@freezed
abstract class GetLeaderboardOutput extends BaseOutput
    with _$GetLeaderboardOutput {
  const factory GetLeaderboardOutput(Leaderboard leaderboard) =
      _GetLeaderboardOutput;

  const GetLeaderboardOutput._();
}

// ─── UseCase ───────────────────────────────────────────────────────

@lazySingleton
class GetLeaderboardUseCase
    extends BaseFutureUseCase<GetLeaderboardInput, GetLeaderboardOutput> {
  const GetLeaderboardUseCase(this._repository);

  final LeaderboardRepository _repository;

  @override
  Future<GetLeaderboardOutput> buildUseCase(GetLeaderboardInput input) async {
    final leaderboard = await _repository.getLeaderboard(
      metric: input.metric,
      limit: input.limit,
    );
    return GetLeaderboardOutput(leaderboard);
  }
}

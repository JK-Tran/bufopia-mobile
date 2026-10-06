import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/features/leaderboard/domain/usecases/get_leaderboard_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leaderboard_bloc.freezed.dart';
part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

@injectable
class LeaderboardBloc extends BaseBloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc(this._getLeaderboardUseCase)
    : super(const LeaderboardState()) {
    on<_LeaderboardLoaded>(_onLeaderboardLoaded);
    on<_LeaderboardMetricChanged>(_onLeaderboardMetricChanged);
  }

  final GetLeaderboardUseCase _getLeaderboardUseCase;

  Future<void> _onLeaderboardLoaded(
    _LeaderboardLoaded event,
    Emitter<LeaderboardState> emit,
  ) async {
    final cached = state.leaderboardsByMetric[event.metric];
    if (cached != null) {
      emit(
        state.copyWith(
          leaderboard: cached,
          selectedMetric: event.metric,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isLoading: true,
          errorMessage: null,
          selectedMetric: event.metric,
        ),
      );
    }

    try {
      final output = await _getLeaderboardUseCase.execute(
        GetLeaderboardInput(
          metric: event.metric,
          limit: event.limit,
        ),
      );
      final updatedMap = Map<String, Leaderboard>.from(
        state.leaderboardsByMetric,
      )..[event.metric] = output.leaderboard;

      emit(
        state.copyWith(
          isLoading: false,
          leaderboard: output.leaderboard,
          leaderboardsByMetric: updatedMap,
          errorMessage: null,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLeaderboardMetricChanged(
    _LeaderboardMetricChanged event,
    Emitter<LeaderboardState> emit,
  ) async {
    final cached = state.leaderboardsByMetric[event.metric];
    if (cached != null) {
      emit(
        state.copyWith(
          selectedMetric: event.metric,
          leaderboard: cached,
        ),
      );
    } else {
      add(LeaderboardEvent.loaded(metric: event.metric));
    }
  }
}

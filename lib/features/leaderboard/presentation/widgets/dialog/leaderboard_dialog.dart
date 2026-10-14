import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:bufopia/features/leaderboard/presentation/widgets/leaderboard_list.dart';
import 'package:bufopia/features/leaderboard/presentation/widgets/leaderboard_podium.dart';
import 'package:bufopia/features/leaderboard/presentation/widgets/leaderboard_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hop thoai Bang Xep Hang - wrapper [AppGameDialog] chuan 3D Game.
/// Noi dung duoc chia thanh cac widget con trong thu muc `leaderboard/presentation/widgets/`.
class LeaderboardDialog extends StatefulWidget {
  const LeaderboardDialog({super.key});

  static Future<void> show(BuildContext context) {
    final leaderboardBloc = context.read<LeaderboardBloc>();
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return AppGameDialog.show<void>(
      context: context,
      title: 'BẢNG XẾP HẠNG',
      icon: Icons.emoji_events_rounded,
      maxWidth: 340.w,
      maxHeight: 580.h,
      footerText: '⭐ Cùng học, cùng đấu và chinh phục vị trí dẫn đầu! ⭐',
      padding: EdgeInsets.fromLTRB(10.w, 6.h, 10.w, 8.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: BlocProvider.value(
        value: leaderboardBloc,
        child: const LeaderboardDialog(),
      ),
    );
  }

  @override
  State<LeaderboardDialog> createState() => _LeaderboardDialogState();
}

class _LeaderboardDialogState extends State<LeaderboardDialog> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<LeaderboardBloc>();
    if (bloc.state.leaderboard == null) {
      bloc.add(const LeaderboardEvent.loaded());
    }
  }

  void _onMetricSelected(String metric) {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    context.read<LeaderboardBloc>().add(LeaderboardEvent.metricChanged(metric));
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Metric Tabs
        LeaderboardTabs(onMetricSelected: _onMetricSelected),

        SizedBox(height: 6.h),
        _DottedDivider(isPaper: isPaper),
        SizedBox(height: 4.h),

        // Content (Loading / Error / Data)
        BlocBuilder<LeaderboardBloc, LeaderboardState>(
          builder: (context, state) {
            if (state.isLoading && state.leaderboard == null) {
              return _buildLoading();
            }
            if (state.errorMessage != null && state.leaderboard == null) {
              return _buildError(state);
            }

            final players =
                state.leaderboard?.players ?? const <LeaderboardPlayer>[];
            if (players.isEmpty) {
              return _buildEmpty();
            }

            return _buildContent(
              players: players,
              metric: state.selectedMetric,
              isPaper: isPaper,
            );
          },
        ),
      ],
    );
  }

  // States

  Widget _buildLoading() => SizedBox(
    height: 120.h,
    child: const Center(
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: AppColors.gold,
      ),
    ),
  );

  Widget _buildEmpty() => SizedBox(
    height: 80.h,
    child: Center(
      child: AppText.b2(
        'Chua co du lieu bang xep hang',
        color: AppColors.paperTextMuted,
      ),
    ),
  );

  Widget _buildError(LeaderboardState state) => SizedBox(
    height: 120.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline_rounded,
          color: AppColors.error,
          size: 30.r,
        ),
        SizedBox(height: 6.h),
        AppText.b2(
          'Khong the tai bang xep hang',
          color: AppColors.grayDark,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 8.h),
        AppButton.primary(
          text: 'Thu lai',
          fontSize: 12.sp,
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 6.h,
          ),
          onPressed: () => context.read<LeaderboardBloc>().add(
            LeaderboardEvent.loaded(
              metric: state.selectedMetric,
            ),
          ),
        ),
      ],
    ),
  );

  // Main content

  Widget _buildContent({
    required List<LeaderboardPlayer> players,
    required String metric,
    required bool isPaper,
  }) {
    LeaderboardPlayer? findByRank(int rank) {
      final filtered = players.where((p) => p.rank == rank);
      return filtered.isEmpty ? null : filtered.first;
    }

    final rank1 = findByRank(1);
    final rank2 = findByRank(2);
    final rank3 = findByRank(3);
    final rest = players
        .where(
          (p) =>
              p.uid != rank1?.uid && p.uid != rank2?.uid && p.uid != rank3?.uid,
        )
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LeaderboardPodium(
          rank1: rank1,
          rank2: rank2,
          rank3: rank3,
          metric: metric,
        ),

        SizedBox(height: 4.h),

        LeaderboardList(
          players: rest,
          metric: metric,
          isPaper: isPaper,
        ),
      ],
    );
  }
}

// Dotted divider (private - chi dung noi bo dialog nay)
class _DottedDivider extends StatelessWidget {
  const _DottedDivider({required this.isPaper});

  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.constrainWidth();
        const dashW = 4.0;
        const gapW = 3.0;
        final count = (width / (dashW + gapW)).floor();
        final color = isPaper
            ? AppColors.paperDottedLine
            : AppColors.dividerDotted;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            count,
            (_) => SizedBox(
              width: dashW,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),
        );
      },
    );
  }
}

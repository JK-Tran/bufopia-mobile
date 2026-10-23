import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/data/models/word_chain_social_models.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Mục 5 bạn cùng luyện gần nhất từ API Social state (/api/social/state)
/// Tự quản lý bộ đếm Cooldown 10s độc lập:
/// - Khi countdown tick mỗi giây, CHỈ rebuild danh sách nút Mời,
///   hoàn toàn không làm ảnh hưởng hay chớp nháy các phần còn lại của Dialog!
class WordGuessRoomRivals extends StatefulWidget {
  const WordGuessRoomRivals({
    required this.rivals,
    required this.isLoading,
    required this.onInvite,
    super.key,
  });

  final List<WordChainRival> rivals;
  final bool isLoading;
  final Future<void> Function(WordChainRival rival) onInvite;

  @override
  State<WordGuessRoomRivals> createState() => _WordGuessRoomRivalsState();
}

class _WordGuessRoomRivalsState extends State<WordGuessRoomRivals> {
  final Map<String, int> _inviteCooldowns = {};
  Timer? _cooldownTimer;

  @override
  void initState() {
    super.initState();
    _startCooldownTicker();
  }

  @override
  void dispose() {
    _cooldownTimer?.cancel();
    super.dispose();
  }

  void _startCooldownTicker() {
    _cooldownTimer?.cancel();
    _cooldownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted || _inviteCooldowns.isEmpty) return;
      var hasChange = false;
      final toRemove = <String>[];
      for (final entry in _inviteCooldowns.entries) {
        if (entry.value <= 1) {
          toRemove.add(entry.key);
          hasChange = true;
        } else {
          _inviteCooldowns[entry.key] = entry.value - 1;
          hasChange = true;
        }
      }
      toRemove.forEach(_inviteCooldowns.remove);
      if (hasChange && mounted) {
        setState(() {});
      }
    });
  }

  Future<void> _handleInvite(WordChainRival rival) async {
    final cooldown = _inviteCooldowns[rival.uid] ?? 0;
    if (cooldown > 0) return;

    setState(() {
      _inviteCooldowns[rival.uid] = 10;
    });

    await widget.onInvite(rival);
  }

  String _formatPlayedDate(BuildContext context, int? playedAt) {
    if (playedAt == null || playedAt <= 0) {
      return context.l10n.recentlyPracticed;
    }
    try {
      final dt = DateTime.fromMillisecondsSinceEpoch(
        playedAt > 10000000000 ? playedAt : playedAt * 1000,
      );
      return context.l10n.practicedOnDate(dt.day, dt.month, dt.year);
    } on Object catch (_) {
      return context.l10n.recentlyPracticed;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final textColorDark = isPaper
        ? const Color(0xFF3B352B)
        : AppColors.grayDark;
    final textColorMuted = isPaper
        ? const Color(0xFF7E7668)
        : AppColors.grayMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.b2(
          context.l10n.recentPartners(widget.rivals.length),
          fontWeight: FontWeight.w700,
          color: textColorDark,
        ),
        SizedBox(height: 8.h),
        if (widget.isLoading && widget.rivals.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: const Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          )
        else if (widget.rivals.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Center(
              child: AppText.c1(
                context.l10n.noRecentPartners,
                color: textColorMuted,
              ),
            ),
          )
        else
          ...widget.rivals.take(5).map((rival) {
            final cooldown = _inviteCooldowns[rival.uid] ?? 0;
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.b2(
                          rival.name,
                          fontWeight: FontWeight.w700,
                          color: textColorDark,
                        ),
                        SizedBox(height: 2.h),
                        AppText.c1(
                          _formatPlayedDate(context, rival.playedAt),
                          color: textColorMuted,
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    text: cooldown > 0 ? '${cooldown}s' : context.l10n.invite,
                    height: 32.h,
                    width: 64.w,
                    fontSize: 12.sp,
                    backgroundColor: isPaper
                        ? const Color(0xFFECE5D8)
                        : AppColors.grayLight,
                    textColor: isPaper
                        ? const Color(0xFF3B352B)
                        : AppColors.grayDark,
                    borderColor: isPaper
                        ? const Color(0xFF9E927F)
                        : AppColors.classicBorder,
                    extrusionColor: isPaper
                        ? const Color(0xFFC7BCA9)
                        : AppColors.grayExtrusion,
                    extrusionHeight: 2,
                    onPressed: cooldown > 0 ? null : () => _handleInvite(rival),
                  ),
                ],
              ),
            );
          }),
      ],
    );
  }
}

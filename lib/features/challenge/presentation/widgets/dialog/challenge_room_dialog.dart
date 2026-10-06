import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/challenge/presentation/bloc/challenge_room_bloc.dart';
import 'package:bufopia/features/challenge/presentation/widgets/challenge_create.dart';
import 'package:bufopia/features/challenge/presentation/widgets/challenge_invitations.dart';
import 'package:bufopia/features/challenge/presentation/widgets/challenge_join.dart';
import 'package:bufopia/features/challenge/presentation/widgets/challenge_rivals.dart';
import 'package:bufopia/features/challenge/presentation/widgets/challenge_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Dialog Phòng Đấu Online (Nhập mã phòng, Tạo phòng thách đấu,
/// Lời mời & Đối thủ) - Chuẩn kiến trúc VGV Page-View Split
class ChallengeRoomDialog extends StatelessWidget {
  const ChallengeRoomDialog({
    super.key,
    this.onEnterRoom,
  });

  final ValueChanged<String>? onEnterRoom;

  static Future<void> show(
    BuildContext context, {
    ValueChanged<String>? onEnterRoom,
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => ChallengeRoomDialog(onEnterRoom: onEnterRoom),
    );
  }

  @override
  Widget build(BuildContext context) {
    final uid = context.read<AuthBloc>().state.currentUser?.uid ?? 'guest';
    return BlocProvider(
      create: (_) =>
          GetIt.instance<ChallengeRoomBloc>()
            ..add(ChallengeRoomEvent.init(uid: uid)),
      child: ChallengeRoomView(onEnterRoom: onEnterRoom),
    );
  }
}

class ChallengeRoomView extends StatefulWidget {
  const ChallengeRoomView({
    super.key,
    this.onEnterRoom,
  });

  final ValueChanged<String>? onEnterRoom;

  @override
  State<ChallengeRoomView> createState() => _ChallengeRoomViewState();
}

class _ChallengeRoomViewState extends State<ChallengeRoomView> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  void _handleJoinRoom() {
    final code = _codeController.text.trim();
    if (code.isEmpty) return;
    context.read<ChallengeRoomBloc>().add(
      ChallengeRoomEvent.joinRoom(
        roomCode: code,
        onJoined: (validCode) {
          Navigator.of(context).pop();
          widget.onEnterRoom?.call(validCode);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChallengeRoomBloc, ChallengeRoomState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          AppSnackBar.showError(context, state.errorMessage!);
        } else if (state.successMessage != null) {
          AppSnackBar.showSuccess(context, state.successMessage!);
        }
      },
      builder: (context, state) {
        final bloc = context.read<ChallengeRoomBloc>();
        final invitations = state.socialState?.invitations ?? [];
        final rivals = state.socialState?.recent ?? [];

        final isPaper = context.select<AppBloc, bool>(
          (b) => b.state.isPaperTheme,
        );

        return AppGameDialog(
          title: 'PHÒNG ĐẤU ONLINE',
          icon: Icons.sports_kabaddi_rounded,
          maxWidth: 340.w,
          maxHeight: 275.h,
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
          footerText: '⭐ Thách đấu từ vựng cùng bạn bè trực tuyến ⭐',
          footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
          footerBorderColor: isPaper ? AppColors.paperBorder : null,
          footerTextColor: isPaper ? AppColors.paperTextMedium : null,
          padding: EdgeInsets.fromLTRB(10.w, 6.h, 10.w, 4.h),
          onClose: () => Navigator.of(context).pop(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Thanh chuyển tab (NHẬP MÃ / TẠO PHÒNG)
              ChallengeTabs(
                currentTab: state.currentTab,
                onTabChanged: (index) => bloc.add(
                  ChallengeRoomEvent.switchTab(index),
                ),
              ),

              SizedBox(height: 6.h),

              // 2. Nội dung Tab
              if (state.currentTab == ChallengeRoomTab.join)
                ChallengeJoin(
                  controller: _codeController,
                  onJoin: _handleJoinRoom,
                )
              else
                ChallengeCreate(
                  createdRoomCode: state.createdRoomCode,
                  onCreateRoom: () => bloc.add(
                    const ChallengeRoomEvent.createRoom(),
                  ),
                  onCancelRoom: () => bloc.add(
                    const ChallengeRoomEvent.cancelRoom(),
                  ),
                  onEnterRoom: (code) {
                    Navigator.of(context).pop();
                    widget.onEnterRoom?.call(code);
                  },
                ),

              SizedBox(height: 6.h),
              Divider(
                height: 1.h,
                color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
              ),
              SizedBox(height: 4.h),

              // 3. Mục Lời mời đến
              ChallengeInvitations(
                invitations: invitations,
                onAcceptInvitation: (invitationId) {
                  bloc.add(
                    ChallengeRoomEvent.acceptInvitation(
                      invitationId: invitationId,
                      onAccepted: (code) {
                        Navigator.of(context).pop();
                        widget.onEnterRoom?.call(code);
                      },
                    ),
                  );
                },
              ),

              SizedBox(height: 6.h),
              Divider(
                height: 1.h,
                color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
              ),
              SizedBox(height: 6.h),

              // 4. Mục 5 đối thủ gần nhất
              ChallengeRivals(
                rivals: rivals,
                isRoomCreated: state.createdRoomCode != null,
                onInviteRival: (uid) {
                  bloc.add(
                    ChallengeRoomEvent.inviteRival(targetUid: uid),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

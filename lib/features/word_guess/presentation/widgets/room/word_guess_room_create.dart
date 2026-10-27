import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_guess/data/models/room_player_data.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Tab Tạo phòng (Word Guess Room Create)
/// Gồm 2 trạng thái:
/// 1. Pre-create: Chọn nội dung, thời gian luyện (3/5/10 phút), nút TẠO PHÒNG
/// 2. Room Created/Waiting: Bảng 6 chữ số mã phòng, Chép mã, Link mời,
///    Danh sách thành viên với vương miện Chủ phòng, nút BẮT ĐẦU & RỜI PHÒNG
class WordGuessRoomCreate extends StatelessWidget {
  const WordGuessRoomCreate({
    required this.topicTitle,
    required this.selectedDuration,
    required this.onDurationChanged,
    required this.isRoomCreated,
    required this.isConnecting,
    required this.roomCode,
    required this.roomPlayers,
    required this.myUid,
    required this.onCreateRoom,
    required this.onStartGame,
    required this.onToggleReady,
    required this.onLeaveRoom,
    required this.onCopyCode,
    required this.onCopyLink,
    super.key,
  });

  final String topicTitle;
  final int selectedDuration;
  final ValueChanged<int> onDurationChanged;
  final bool isRoomCreated;
  final bool isConnecting;
  final String roomCode;
  final List<RoomPlayerData> roomPlayers;
  final String myUid;
  final VoidCallback onCreateRoom;
  final VoidCallback onStartGame;
  final VoidCallback onToggleReady;
  final VoidCallback onLeaveRoom;
  final VoidCallback onCopyCode;
  final VoidCallback onCopyLink;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final l10n = context.l10n;
    final textColorDark = isPaper
        ? const Color(0xFF3B352B)
        : AppColors.grayDark;
    final textColorMuted = isPaper
        ? const Color(0xFF7E7668)
        : AppColors.grayMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!isRoomCreated) ...[
          AppText.c1(
            l10n.createRoomPreDesc,
            color: textColorMuted,
          ),
          SizedBox(height: 12.h),
        ] else ...[
          // Bảng mã phòng 6 số sau khi tạo thành công (Screenshot 3)
          _buildRoomCodeCard(context, isPaper),
          SizedBox(height: 12.h),
        ],

        // 1. Chọn nội dung
        AppText.b2(
          l10n.chooseTopicTitle,
          fontWeight: FontWeight.w700,
          color: textColorDark,
        ),
        SizedBox(height: 6.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: isPaper ? const Color(0xFFF4EFE6) : AppColors.grayLight,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: isPaper
                  ? const Color(0xFFE5DDD0)
                  : AppColors.classicBorder,
            ),
          ),
          child: AppText.b1(
            topicTitle,
            fontWeight: FontWeight.w700,
            color: textColorDark,
          ),
        ),
        SizedBox(height: 14.h),

        // 2. Thời gian luyện (3 PHÚT / 5 PHÚT / 10 PHÚT)
        AppText.b2(
          l10n.practiceDuration,
          fontWeight: FontWeight.w700,
          color: textColorDark,
        ),
        SizedBox(height: 6.h),
        Row(
          children: [
            _buildDurationButton(
              context: context,
              seconds: 180,
              label: l10n.minutesFormat(3),
              isPaper: isPaper,
            ),
            SizedBox(width: 8.w),
            _buildDurationButton(
              context: context,
              seconds: 300,
              label: l10n.minutesFormat(5),
              isPaper: isPaper,
            ),
            SizedBox(width: 8.w),
            _buildDurationButton(
              context: context,
              seconds: 600,
              label: l10n.minutesFormat(10),
              isPaper: isPaper,
            ),
          ],
        ),
        SizedBox(height: 16.h),

        // 3. Trạng thái Pre-create: Nút TẠO PHÒNG (Screenshot 4)
        if (!isRoomCreated) ...[
          AppButton(
            text: l10n.createRoom.toUpperCase(),
            icon: Icon(
              Icons.sensors_rounded,
              size: 16.r,
              color: AppColors.white,
            ),
            height: 44.h,
            fontSize: 14.sp,
            backgroundColor: isPaper
                ? const Color(0xFF438E44)
                : AppColors.green,
            borderColor: isPaper
                ? const Color(0xFF2E6B30)
                : AppColors.greenDark,
            extrusionColor: isPaper
                ? const Color(0xFF2C632D)
                : AppColors.greenDark,
            extrusionHeight: 2.5,
            isLoading: isConnecting,
            onPressed: isConnecting ? null : onCreateRoom,
          ),
        ] else ...[
          // Trạng thái Room Created: Danh sách thành viên (Screenshot 3 & 2)
          _buildMembersCard(context, isPaper, textColorDark, textColorMuted),
        ],
      ],
    );
  }

  Widget _buildRoomCodeCard(BuildContext context, bool isPaper) {
    final cardBg = isPaper ? const Color(0xFFF3ECE0) : const Color(0xFFF0F6FF);
    final cardBorder = isPaper
        ? const Color(0xFFD8CCBB)
        : const Color(0xFFBFDBFE);
    final digitBorder = isPaper
        ? const Color(0xFFC7BBA8)
        : const Color(0xFF93C5FD);
    final digits = roomCode.split('');
    final l10n = context.l10n;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: cardBorder, width: 1.2),
      ),
      child: Column(
        children: [
          AppText.c1(
            l10n.roomCode,
            fontWeight: FontWeight.w700,
            color: isPaper ? const Color(0xFF6E6455) : AppColors.grayMedium,
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: digits.map((digit) {
              return Container(
                width: 36.w,
                height: 42.h,
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: digitBorder, width: 1.2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.06),
                      blurRadius: 2.r,
                      offset: Offset(0, 2.h),
                    ),
                  ],
                ),
                child: Center(
                  child: AppText.t1(
                    digit,
                    fontWeight: FontWeight.w700,
                    color: isPaper
                        ? const Color(0xFF3D372E)
                        : AppColors.grayDark,
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  text: l10n.copyCode,
                  icon: Icon(
                    Icons.copy_rounded,
                    size: 14.r,
                    color: AppColors.white,
                  ),
                  height: 38.h,
                  fontSize: 12.sp,
                  backgroundColor: isPaper
                      ? const Color(0xFF6E645A)
                      : AppColors.grayDark,
                  borderColor: isPaper
                      ? const Color(0xFF534B43)
                      : AppColors.grayDark,
                  extrusionColor: isPaper
                      ? const Color(0xFF4F473F)
                      : AppColors.grayExtrusion,
                  extrusionHeight: 2,
                  onPressed: onCopyCode,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: AppButton(
                  text: l10n.inviteLink,
                  icon: Icon(
                    Icons.link_rounded,
                    size: 14.r,
                    color: AppColors.white,
                  ),
                  height: 38.h,
                  fontSize: 12.sp,
                  backgroundColor: isPaper
                      ? const Color(0xFF6E645A)
                      : AppColors.grayDark,
                  borderColor: isPaper
                      ? const Color(0xFF534B43)
                      : AppColors.grayDark,
                  extrusionColor: isPaper
                      ? const Color(0xFF4F473F)
                      : AppColors.grayExtrusion,
                  extrusionHeight: 2,
                  onPressed: onCopyLink,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          AppText.c1(
            l10n.sendCodeOrLinkDesc,
            color: isPaper ? const Color(0xFF7E7668) : AppColors.grayMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDurationButton({
    required BuildContext context,
    required int seconds,
    required String label,
    required bool isPaper,
  }) {
    final isSelected = selectedDuration == seconds;
    return Expanded(
      child: AppButton(
        text: label,
        height: 38.h,
        fontSize: 12.sp,
        backgroundColor: isSelected
            ? (isPaper ? const Color(0xFF438E44) : AppColors.green)
            : (isPaper ? const Color(0xFF6E645A) : AppColors.grayMedium),
        borderColor: isSelected
            ? (isPaper ? const Color(0xFF2E6B30) : AppColors.greenDark)
            : (isPaper ? const Color(0xFF534B43) : AppColors.grayDark),
        extrusionColor: isSelected
            ? (isPaper ? const Color(0xFF2C632D) : AppColors.greenDark)
            : (isPaper ? const Color(0xFF4F473F) : AppColors.grayExtrusion),
        extrusionHeight: 2,
        onPressed: isRoomCreated
            ? null
            : () {
                context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
                onDurationChanged(seconds);
              },
      ),
    );
  }

  Widget _buildMembersCard(
    BuildContext context,
    bool isPaper,
    Color textColorDark,
    Color textColorMuted,
  ) {
    final l10n = context.l10n;
    final cardBg = isPaper ? const Color(0xFFF4EFE6) : AppColors.grayLight;
    final cardBorder = isPaper ? const Color(0xFF689F66) : AppColors.green;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.people_outline_rounded,
              size: 18.r,
              color: textColorDark,
            ),
            SizedBox(width: 6.w),
            AppText.b2(
              l10n.membersCount(roomPlayers.length),
              fontWeight: FontWeight.w700,
              color: textColorDark,
            ),
          ],
        ),
        SizedBox(height: 6.h),
        ...roomPlayers.map((player) {
          final isMe = player.uid == myUid;
          return Container(
            margin: EdgeInsets.only(bottom: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: cardBg,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: cardBorder, width: 1.5),
            ),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AppAvatar(
                      size: 36.r,
                      avatarUrl: player.avatar,
                    ),
                    if (player.isHost == true)
                      Positioned(
                        top: -5.h,
                        right: -4.w,
                        child: AppText.c1(
                          '👑',
                          fontSize: 12.sp,
                        ),
                      ),
                  ],
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: AppText.b1(
                              player.name?.isNotEmpty == true
                                  ? player.name!
                                  : 'Người chơi',
                              fontWeight: FontWeight.w700,
                              color: textColorDark,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (isMe) ...[
                            SizedBox(width: 6.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                                vertical: 1.h,
                              ),
                              decoration: BoxDecoration(
                                color: isPaper
                                    ? const Color(0xFFE8DFD1)
                                    : AppColors.grayLight,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: AppText.c1(
                                l10n.you,
                                color: isPaper
                                    ? const Color(0xFF6D6559)
                                    : AppColors.grayDark,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Icon(
                            player.isHost == true || player.isReady == true
                                ? Icons.check_circle_outline_rounded
                                : Icons.hourglass_empty_rounded,
                            size: 13.r,
                            color:
                                player.isHost == true || player.isReady == true
                                ? const Color(0xFF3E8243)
                                : textColorMuted,
                          ),
                          SizedBox(width: 4.w),
                          AppText.c1(
                            player.isHost == true
                                ? l10n.roomHost
                                : (player.isReady == true
                                      ? l10n.ready
                                      : l10n.preparing),
                            color:
                                player.isHost == true || player.isReady == true
                                ? const Color(0xFF3E8243)
                                : textColorMuted,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
        SizedBox(height: 6.h),
        () {
          final myPlayer = roomPlayers.where((p) => p.uid == myUid).firstOrNull;
          final isHost =
              myPlayer?.isHost ??
              (roomPlayers.isEmpty || roomPlayers.first.uid == myUid);
          final isMyReady = myPlayer?.isReady ?? false;
          final otherPlayers = roomPlayers
              .where((p) => p.uid != myUid)
              .toList();
          final allGuestsReady =
              otherPlayers.isNotEmpty &&
              otherPlayers.every((p) => p.isReady == true);
          final canStart = isHost && roomPlayers.length >= 2 && allGuestsReady;

          final String statusGuidance;
          if (isHost) {
            if (roomPlayers.length < 2) {
              statusGuidance = l10n.waitingFriendsMinPlayers;
            } else if (!allGuestsReady) {
              statusGuidance = l10n.waitingFriendsReady;
            } else {
              statusGuidance = l10n.allReadyCanStart;
            }
          } else {
            statusGuidance = l10n.guestReviewTopicGuidance;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppText.c1(
                statusGuidance,
                color: textColorMuted,
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Expanded(
                    child: isHost
                        ? AppButton(
                            text: l10n.startGame,
                            icon: Icon(
                              Icons.play_arrow_rounded,
                              size: 16.r,
                              color: AppColors.white,
                            ),
                            height: 42.h,
                            fontSize: 12.sp,
                            backgroundColor: canStart
                                ? (isPaper
                                      ? const Color(0xFF438E44)
                                      : AppColors.green)
                                : (isPaper
                                      ? const Color(0xFF6E645A)
                                      : AppColors.grayMedium),
                            borderColor: canStart
                                ? (isPaper
                                      ? const Color(0xFF2E6B30)
                                      : AppColors.greenDark)
                                : (isPaper
                                      ? const Color(0xFF534B43)
                                      : AppColors.grayDark),
                            extrusionColor: canStart
                                ? (isPaper
                                      ? const Color(0xFF2C632D)
                                      : AppColors.greenDark)
                                : (isPaper
                                      ? const Color(0xFF4F473F)
                                      : AppColors.grayExtrusion),
                            extrusionHeight: 2,
                            onPressed: canStart ? onStartGame : null,
                          )
                        : AppButton(
                            text: isMyReady
                                ? l10n.cancelReadyBtn
                                : l10n.readyBtn,
                            icon: Icon(
                              isMyReady
                                  ? Icons.close_rounded
                                  : Icons.check_rounded,
                              size: 16.r,
                              color: AppColors.white,
                            ),
                            height: 42.h,
                            fontSize: 12.sp,
                            backgroundColor: isMyReady
                                ? (isPaper
                                      ? const Color(0xFF6E645A)
                                      : AppColors.grayDark)
                                : (isPaper
                                      ? const Color(0xFF438E44)
                                      : AppColors.green),
                            borderColor: isMyReady
                                ? (isPaper
                                      ? const Color(0xFF534B43)
                                      : AppColors.grayDark)
                                : (isPaper
                                      ? const Color(0xFF2E6B30)
                                      : AppColors.greenDark),
                            extrusionColor: isMyReady
                                ? (isPaper
                                      ? const Color(0xFF4F473F)
                                      : AppColors.grayExtrusion)
                                : (isPaper
                                      ? const Color(0xFF2C632D)
                                      : AppColors.greenDark),
                            extrusionHeight: 2,
                            onPressed: onToggleReady,
                          ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: AppButton(
                      text: l10n.leaveRoom,
                      height: 42.h,
                      fontSize: 12.sp,
                      backgroundColor: isPaper
                          ? const Color(0xFF6E645A)
                          : AppColors.grayDark,
                      borderColor: isPaper
                          ? const Color(0xFF534B43)
                          : AppColors.grayDark,
                      extrusionColor: isPaper
                          ? const Color(0xFF4F473F)
                          : AppColors.grayExtrusion,
                      extrusionHeight: 2,
                      onPressed: onLeaveRoom,
                    ),
                  ),
                ],
              ),
            ],
          );
        }(),
      ],
    );
  }
}

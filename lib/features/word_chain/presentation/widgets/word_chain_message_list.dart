import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/domain/entities/turn_message.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_message_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Danh sách luồng các từ đã nối trong phòng thi đấu.
class WordChainMessageList extends StatelessWidget {
  const WordChainMessageList({
    required this.messages,
    required this.myPlayerIndex,
    required this.myName,
    required this.rivalName,
    required this.scrollController,
    super.key,
    this.myAvatar,
    this.rivalAvatar,
    this.onPlayAudio,
  });

  final List<TurnMessage> messages;
  final int myPlayerIndex;
  final String myName;
  final String? myAvatar;
  final String rivalName;
  final String? rivalAvatar;
  final ScrollController scrollController;
  final void Function(String word)? onPlayAudio;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    if (messages.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.menu_book_rounded,
                size: 40.r,
                color: isPaper
                    ? AppColors.paperGreen.withValues(alpha: 0.6)
                    : AppColors.primary.withValues(alpha: 0.5),
              ),
              SizedBox(height: 10.h),
              AppText.t3(
                'Bắt đầu chuỗi từ mới',
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 4.h),
              AppText.c1(
                'Nhập một từ tiếng Anh bất kỳ để khởi động ván đấu!',
                color: isPaper
                    ? AppColors.paperTextMuted
                    : AppColors.grayMedium,
                fontSize: 12.sp,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final isMe = message.actor == myPlayerIndex;
        final name = isMe ? myName : rivalName;
        final avatar = isMe ? myAvatar : rivalAvatar;

        return WordChainMessageItem(
          message: message,
          isMe: isMe,
          playerName: name,
          avatarUrl: avatar,
          onPlayAudio: onPlayAudio != null
              ? () => onPlayAudio!(message.entry.word)
              : null,
        );
      },
    );
  }
}

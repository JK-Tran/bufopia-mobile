import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại trò chuyện riêng giữa 2 người chơi.
/// Tự động cuộn độc lập, hỗ trợ giao diện bong bóng chat realtime.
class ChatDialog extends StatefulWidget {
  const ChatDialog({
    required this.rivalName,
    this.rivalAvatar,
    this.isBotMode = false,
    this.isWaiting = false,
    this.myPlayerIndex = 0,
    super.key,
  });

  final String rivalName;
  final String? rivalAvatar;
  final bool isBotMode;
  final bool isWaiting;
  final int myPlayerIndex;

  static Future<void> show(
    BuildContext context, {
    required String rivalName,
    String? rivalAvatar,
    bool isBotMode = false,
    bool isWaiting = false,
    int myPlayerIndex = 0,
  }) {
    final chatBloc = context.read<ChatBloc>()
      ..add(ChatEvent.openChat(myPlayerIndex: myPlayerIndex));

    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.45),
      builder: (_) => BlocProvider.value(
        value: chatBloc,
        child: ChatDialog(
          rivalName: rivalName,
          rivalAvatar: rivalAvatar,
          isBotMode: isBotMode,
          isWaiting: isWaiting,
          myPlayerIndex: myPlayerIndex,
        ),
      ),
    ).then((_) {
      chatBloc.add(const ChatEvent.closeChat());
    });
  }

  @override
  State<ChatDialog> createState() => _ChatDialogState();
}

class _ChatDialogState extends State<ChatDialog> {
  late final TextEditingController _controller;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _scrollController = ScrollController();
    _scrollToBottomDelayed();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottomDelayed() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _handleSend() {
    if (widget.isWaiting) return;
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      context.read<ChatBloc>().add(
        ChatEvent.sendChat(
          text: text,
          isBotMode: widget.isBotMode,
          myPlayerIndex: widget.myPlayerIndex,
          rivalName: widget.rivalName,
          rivalAvatar: widget.rivalAvatar,
        ),
      );
      _controller.clear();
      _scrollToBottomDelayed();
    }
  }

  String _formatTime(num? timestamp) {
    if (timestamp == null) return '';
    try {
      final dt = DateTime.fromMillisecondsSinceEpoch(timestamp.toInt());
      final hour = dt.hour.toString().padLeft(2, '0');
      final minute = dt.minute.toString().padLeft(2, '0');
      return '$hour:$minute';
    } on Object catch (_) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final dialogBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final dialogBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final noteBg = AppColors.orange.withValues(alpha: 0.1);
    const noteColor = AppColors.orangeDark;
    final rivalDisplayName = widget.rivalName.isNotEmpty
        ? widget.rivalName
        : 'đối thủ';

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 420.w, maxHeight: 580.h),
          child: Container(
            decoration: BoxDecoration(
              color: dialogBg,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: dialogBorder,
                width: 2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.black.withValues(alpha: 0.18),
                  offset: Offset(0, 6.h),
                  blurRadius: 14.r,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header: Tiêu đề + Nút đóng
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 14.h, 14.w, 8.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.chat_bubble_rounded,
                        size: 20.r,
                        color: isPaper
                            ? AppColors.paperGreenDark
                            : AppColors.primary,
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: AppText.t2(
                          'Trò chuyện với $rivalDisplayName',
                          color: titleColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      AppButton.close(
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ),

                // Ghi chú cảnh báo
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: noteBg,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: noteColor.withValues(alpha: 0.3),
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          size: 15.r,
                          color: noteColor,
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: AppText.c1(
                            'Tin nhắn ở đây không được tính là từ nối. '
                            'Đồng hồ ván đấu vẫn tiếp tục đếm.',
                            color: noteColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                // Danh sách tin nhắn cuộn độc lập
                Expanded(
                  child: BlocConsumer<ChatBloc, ChatState>(
                    listenWhen: (prev, current) =>
                        prev.messages.length != current.messages.length,
                    listener: (_, _) => _scrollToBottomDelayed(),
                    builder: (context, state) {
                      final messages = state.messages;

                      if (messages.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.chat_outlined,
                                  size: 40.r,
                                  color: AppColors.grayMedium.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                AppText.c1(
                                  'Chưa có tin nhắn nào.\n'
                                  'Hãy gửi lời chào đến bạn cùng chơi!',
                                  color: AppColors.grayMedium,
                                  fontSize: 12.sp,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                      return ListView.builder(
                        controller: _scrollController,
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 6.h,
                        ),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final msg = messages[index];
                          return _buildMessageItem(
                            context,
                            msg: msg,
                            isPaper: isPaper,
                          );
                        },
                      );
                    },
                  ),
                ),

                // Thanh nhập tin nhắn (Input Bar)
                Container(
                  padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 12.h),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: isPaper
                            ? AppColors.paperBorder.withValues(alpha: 0.5)
                            : AppColors.grayLight,
                        width: 1.w,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 44.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          decoration: BoxDecoration(
                            color: isPaper
                                ? AppColors.paperBackground
                                : AppColors.grayLight.withValues(alpha: 0.35),
                            borderRadius: BorderRadius.circular(14.r),
                            border: Border.all(
                              color: dialogBorder,
                              width: 1.w,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: TextField(
                            controller: _controller,
                            maxLength: 300,
                            enabled: !widget.isWaiting,
                            textInputAction: TextInputAction.send,
                            onSubmitted: (_) => _handleSend(),
                            style: TextStyle(
                              color: titleColor,
                              fontSize: 13.sp,
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: widget.isWaiting
                                  ? 'Đang chờ đối thủ...'
                                  : 'Nhắn cho bạn cùng luyện...',
                              hintStyle: TextStyle(
                                color: AppColors.grayMedium,
                                fontSize: 12.sp,
                              ),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      AppButton(
                        onPressed: widget.isWaiting ? null : _handleSend,
                        width: 44.r,
                        height: 44.h,
                        backgroundColor: widget.isWaiting
                            ? AppColors.grayLight
                            : (isPaper
                                  ? AppColors.paperGreen
                                  : AppColors.primary),
                        borderColor: widget.isWaiting
                            ? AppColors.grayMedium
                            : (isPaper
                                  ? AppColors.paperGreenDark
                                  : AppColors.primaryDark),
                        extrusionColor: widget.isWaiting
                            ? AppColors.grayMedium
                            : (isPaper
                                  ? AppColors.paperGreenDark
                                  : AppColors.primaryDark),
                        child: Icon(
                          Icons.send_rounded,
                          size: 18.r,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMessageItem(
    BuildContext context, {
    required Chat msg,
    required bool isPaper,
  }) {
    final isMine = msg.isMine;
    final timeStr = _formatTime(msg.time);

    final bubbleBg = isMine
        ? (isPaper ? AppColors.paperGreen : AppColors.primary)
        : (isPaper
              ? AppColors.paperBackground
              : AppColors.grayLight.withValues(alpha: 0.5));

    final textColor = isMine
        ? AppColors.white
        : (isPaper ? AppColors.paperTextDark : AppColors.grayDark);

    final bubbleBorder = isMine
        ? (isPaper ? AppColors.paperGreenDark : AppColors.primaryDark)
        : (isPaper
              ? AppColors.paperBorder
              : AppColors.classicBorder.withValues(alpha: 0.4));

    final timeColor = isMine
        ? AppColors.white.withValues(alpha: 0.8)
        : AppColors.grayMedium;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: isMine
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Nếu là đối thủ: hiển thị Avatar
          if (!isMine) ...[
            AppAvatar(
              avatarUrl: msg.avatar ?? widget.rivalAvatar,
              size: 28.r,
            ),
            SizedBox(width: 8.w),
          ],

          // Khung bong bóng chat
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: bubbleBg,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14.r),
                  topRight: Radius.circular(14.r),
                  bottomLeft: Radius.circular(isMine ? 14.r : 3.r),
                  bottomRight: Radius.circular(isMine ? 3.r : 14.r),
                ),
                border: Border.all(
                  color: bubbleBorder,
                  width: 1.w,
                ),
              ),
              child: Column(
                crossAxisAlignment: isMine
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!isMine &&
                      (msg.name != null && msg.name!.isNotEmpty)) ...[
                    AppText.c1(
                      msg.name!,
                      color: isPaper
                          ? AppColors.paperGreenDark
                          : AppColors.primaryDark,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 2.h),
                  ],
                  AppText.b1(
                    msg.text,
                    color: textColor,
                    fontSize: 13.sp,
                  ),
                  if (timeStr.isNotEmpty) ...[
                    SizedBox(height: 2.h),
                    AppText.c1(
                      timeStr,
                      color: timeColor,
                      fontSize: 9.sp,
                    ),
                  ],
                ],
              ),
            ),
          ),

          if (isMine) SizedBox(width: 4.w),
        ],
      ),
    );
  }
}

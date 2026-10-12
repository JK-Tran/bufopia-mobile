import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại chat / gửi tin nhắn nhanh trong khi chơi nối từ.
class WordChainChatDialog extends StatefulWidget {
  const WordChainChatDialog({
    required this.rivalName,
    required this.onSendMessage,
    super.key,
  });

  final String rivalName;
  final ValueChanged<String> onSendMessage;

  static Future<void> show(
    BuildContext context, {
    required String rivalName,
    required ValueChanged<String> onSendMessage,
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.4),
      builder: (_) => WordChainChatDialog(
        rivalName: rivalName,
        onSendMessage: onSendMessage,
      ),
    );
  }

  @override
  State<WordChainChatDialog> createState() => _WordChainChatDialogState();
}

class _WordChainChatDialogState extends State<WordChainChatDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      widget.onSendMessage(text);
      Navigator.of(context).pop();
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

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 360.w),
          child: Container(
            padding: EdgeInsets.all(16.w),
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
                      : AppColors.black.withValues(alpha: 0.15),
                  offset: Offset(0, 4.h),
                  blurRadius: 8.r,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: Tiêu đề + Nút đóng
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.t2(
                      'Trò chuyện với ${widget.rivalName}',
                      color: titleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    AppButton.close(
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                // Ghi chú cảnh báo
                Container(
                  padding: EdgeInsets.all(10.w),
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
                        size: 16.r,
                        color: noteColor,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: AppText.c1(
                          'Tin nhắn ở đây không được tính là từ nối. '
                          'Đồng hồ vẫn chạy khi chat.',
                          color: noteColor,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 14.h),

                // Ô nhập tin nhắn
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 42.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: isPaper
                              ? AppColors.paperBackground
                              : AppColors.grayLight.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: dialogBorder,
                            width: 1.w,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: _controller,
                          autofocus: true,
                          textInputAction: TextInputAction.send,
                          onSubmitted: (_) => _handleSend(),
                          style: TextStyle(
                            color: titleColor,
                            fontSize: 12.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Nhắn cho bạn cùng luyện...',
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
                    AppButton.success(
                      text: '',
                      width: 44.r,
                      height: 42.h,
                      icon: Icon(
                        Icons.send_rounded,
                        size: 16.r,
                        color: AppColors.white,
                      ),
                      onPressed: _handleSend,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/domain/entities/turn_message.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Item hiển thị từ vựng dạng từ điển trong luồng nối từ (Word Chain).
/// Thiết kế chuẩn UI/UX 3D Game & Paper theme.
class WordChainMessageItem extends StatelessWidget {
  const WordChainMessageItem({
    required this.message,
    required this.isMe,
    required this.playerName,
    super.key,
    this.avatarUrl,
    this.onPlayAudio,
  });

  final TurnMessage message;
  final bool isMe;
  final String playerName;
  final String? avatarUrl;
  final VoidCallback? onPlayAudio;

  void _handlePlayAudio() {
    if (onPlayAudio != null) {
      onPlayAudio!();
    } else {
      final word = message.entry.word;
      if (word.isNotEmpty) {
        GetIt.instance.get<AppAudioService>().speakWord(word);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final entry = message.entry;

    // Màu sắc thẻ từ
    final cardBg = isPaper
        ? (isMe ? AppColors.paperCardBg : AppColors.paperBackground)
        : (isMe ? AppColors.white : AppColors.grayLight.withValues(alpha: 0.3));

    final cardBorder = isMe
        ? (isPaper ? AppColors.paperGreen : AppColors.green)
        : (isPaper ? AppColors.paperBorder : AppColors.classicBorder);

    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;

    final subTextColor = isPaper
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;

    final tagBg = isPaper
        ? AppColors.paperCardBg
        : AppColors.grayLight.withValues(alpha: 0.5);

    final tagBorder = isPaper ? AppColors.paperBorder : AppColors.grayLight;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
      child: Column(
        crossAxisAlignment: isMe
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          // Tên người gửi
          Padding(
            padding: EdgeInsets.only(
              left: isMe ? 0 : 44.w,
              right: isMe ? 44.w : 0,
              bottom: 4.h,
            ),
            child: AppText.c1(
              playerName,
              color: subTextColor,
              fontSize: 12.sp,
            ),
          ),
          // Hàng nội dung thẻ + Avatar
          Row(
            mainAxisAlignment: isMe
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isMe) ...[
                AppAvatar(
                  avatarUrl: avatarUrl,
                  size: 34.r,
                  borderWidth: 1.5.w,
                  borderColor: cardBorder,
                ),
                SizedBox(width: 8.w),
              ],
              Flexible(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 340.w),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: cardBg,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                      bottomLeft: isMe
                          ? Radius.circular(16.r)
                          : Radius.circular(4.r),
                      bottomRight: isMe
                          ? Radius.circular(4.r)
                          : Radius.circular(16.r),
                    ),
                    border: Border.all(
                      color: cardBorder,
                      width: 1.5.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isPaper
                            ? AppColors.paperExtrusion.withValues(alpha: 0.4)
                            : AppColors.black.withValues(alpha: 0.06),
                        offset: Offset(0, 2.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Hàng 1: Từ vựng + Phiên âm + Nút loa phát âm
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: AppText.t2(
                              entry.word,
                              color: titleColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if (entry.phonetic != null &&
                              entry.phonetic!.isNotEmpty) ...[
                            SizedBox(width: 6.w),
                            AppText.c1(
                              entry.phonetic!,
                              color: subTextColor,
                              fontSize: 12.sp,
                            ),
                          ],
                          const Spacer(),
                          // Nút loa phát âm
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: _handlePlayAudio,
                              borderRadius: BorderRadius.circular(16.r),
                              child: Container(
                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                  color: tagBg,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: tagBorder,
                                    width: 1.w,
                                  ),
                                ),
                                child: Icon(
                                  Icons.volume_up_rounded,
                                  size: 18.r,
                                  color: isPaper
                                      ? AppColors.paperGreenDark
                                      : AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Hàng 2: Tag loại từ + Nghĩa tiếng Việt
                      if ((entry.partOfSpeech != null &&
                              entry.partOfSpeech!.isNotEmpty) ||
                          (entry.vi != null && entry.vi!.isNotEmpty)) ...[
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            if (entry.partOfSpeech != null &&
                                entry.partOfSpeech!.isNotEmpty) ...[
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.w,
                                  vertical: 2.h,
                                ),
                                decoration: BoxDecoration(
                                  color: tagBg,
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                    color: tagBorder,
                                    width: 0.8.w,
                                  ),
                                ),
                                child: AppText.c1(
                                  StringUtils.formatPartOfSpeech(
                                    entry.partOfSpeech,
                                  ),
                                  color: isPaper
                                      ? AppColors.paperTextDark
                                      : AppColors.grayDark,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(width: 6.w),
                            ],
                            if (entry.vi != null && entry.vi!.isNotEmpty) ...[
                              Expanded(
                                child: AppText.b2(
                                  entry.vi!,
                                  color: titleColor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ],

                      // Hàng 3: Định nghĩa tiếng Anh
                      if (entry.definition != null &&
                          entry.definition!.isNotEmpty) ...[
                        SizedBox(height: 6.h),
                        AppText.b2(
                          entry.definition!,
                          color: titleColor,
                          fontSize: 12.sp,
                        ),
                      ],

                      // Hàng 4: Câu ví dụ
                      if (entry.example != null &&
                          entry.example!.isNotEmpty) ...[
                        SizedBox(height: 6.h),
                        Container(
                          padding: EdgeInsets.only(top: 4.h),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: tagBorder.withValues(alpha: 0.5),
                                width: 0.8.w,
                              ),
                            ),
                          ),
                          child: AppText.c1(
                            '“${entry.example!}”',
                            color: subTextColor,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              if (isMe) ...[
                SizedBox(width: 8.w),
                AppAvatar(
                  avatarUrl: avatarUrl,
                  size: 34.r,
                  borderWidth: 1.5.w,
                  borderColor: cardBorder,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

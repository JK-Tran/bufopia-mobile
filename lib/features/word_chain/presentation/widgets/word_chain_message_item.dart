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
/// Thiết kế chuẩn UI/UX 3D Game & Paper theme, tối ưu layout không bị ngắt đôi từ dài.
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
        ? (isMe ? AppColors.paperSurfaceWarm : AppColors.paperCardBg)
        : (isMe ? AppColors.white : const Color(0xFFF8FAFC));

    final cardBorder = isMe
        ? (isPaper ? AppColors.paperGreenBorder : AppColors.green)
        : (isPaper ? AppColors.paperBorder : AppColors.classicBorder);

    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final subTextColor = isPaper
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;

    final meaningColor = isPaper
        ? AppColors.paperGreenDark
        : (isMe ? AppColors.greenDark : AppColors.primary);

    final tagBg = isPaper
        ? AppColors.paperBadgeBg
        : (isMe
              ? AppColors.green.withValues(alpha: 0.1)
              : AppColors.grayLight.withValues(alpha: 0.6));

    final tagBorder = isPaper
        ? AppColors.paperBadgeBorder
        : AppColors.grayLight;
    final tagText = isPaper
        ? AppColors.paperBadgeText
        : (isMe ? AppColors.greenDark : AppColors.grayDark);

    final hasPhonetic = entry.phonetic != null && entry.phonetic!.isNotEmpty;
    final hasPos = entry.partOfSpeech != null && entry.partOfSpeech!.isNotEmpty;
    final hasVi = entry.vi != null && entry.vi!.isNotEmpty;
    final hasDef = entry.definition != null && entry.definition!.isNotEmpty;
    final hasExample = entry.example != null && entry.example!.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
      child: Column(
        crossAxisAlignment: isMe
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          // Tên người gửi
          Padding(
            padding: EdgeInsets.only(
              left: isMe ? 0 : 42.w,
              right: isMe ? 42.w : 0,
              bottom: 3.h,
            ),
            child: AppText.c1(
              playerName,
              color: subTextColor,
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

          // Hàng Avatar + Khung thẻ tin nhắn
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
                  constraints: BoxConstraints(maxWidth: 0.76.sw),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 10.h,
                  ),
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
                            ? (isMe
                                  ? AppColors.paperGreenExtrusion.withValues(
                                      alpha: 0.25,
                                    )
                                  : AppColors.paperExtrusion.withValues(
                                      alpha: 0.4,
                                    ))
                            : (isMe
                                  ? AppColors.greenDark.withValues(alpha: 0.15)
                                  : AppColors.black.withValues(alpha: 0.05)),
                        offset: Offset(0, 2.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Hàng 1: Từ vựng to rõ (không ngắt dòng giữa từ)
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              entry.word,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w800,
                                color: titleColor,
                                letterSpacing: 0.2,
                                height: 1.2,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          // Nút loa phát âm
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: _handlePlayAudio,
                              borderRadius: BorderRadius.circular(8.r),
                              child: Container(
                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                  color: isPaper
                                      ? AppColors.paperSurfaceWarm
                                      : tagBg,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: isPaper
                                        ? AppColors.paperBorder
                                        : tagBorder,
                                    width: 1.w,
                                  ),
                                ),
                                child: Icon(
                                  Icons.volume_up_rounded,
                                  size: 16.r,
                                  color: isPaper
                                      ? AppColors.paperGreenDark
                                      : (isMe
                                            ? AppColors.greenDark
                                            : AppColors.primary),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Hàng 2: Loại từ + Phiên âm (Wrap tự xuống dòng)
                      if (hasPos || hasPhonetic) ...[
                        SizedBox(height: 4.h),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 6.w,
                          runSpacing: 4.h,
                          children: [
                            if (hasPos)
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
                                  color: tagText,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            if (hasPhonetic)
                              AppText.c1(
                                entry.phonetic!,
                                color: subTextColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                          ],
                        ),
                      ],

                      // Hàng 3: Nghĩa tiếng Việt
                      if (hasVi) ...[
                        SizedBox(height: 6.h),
                        AppText.b2(
                          entry.vi!,
                          color: meaningColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ],

                      // Hàng 4: Định nghĩa tiếng Anh
                      if (hasDef) ...[
                        SizedBox(height: 4.h),
                        AppText.b2(
                          entry.definition!,
                          color: titleColor.withValues(alpha: 0.85),
                          fontSize: 12.sp,
                        ),
                      ],

                      // Hàng 5: Khung trích dẫn câu ví dụ
                      if (hasExample) ...[
                        SizedBox(height: 6.h),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: isPaper
                                ? AppColors.paperBackground
                                : AppColors.grayLight.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border(
                              left: BorderSide(
                                color: isPaper
                                    ? AppColors.paperGreen
                                    : (isMe
                                          ? AppColors.green
                                          : AppColors.primary),
                                width: 2.5.w,
                              ),
                            ),
                          ),
                          child: Text(
                            '“${entry.example!}”',
                            style: TextStyle(
                              color: subTextColor,
                              fontSize: 11.5.sp,
                              fontStyle: FontStyle.italic,
                            ),
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

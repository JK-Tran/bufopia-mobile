import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback_word_list.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackReport extends StatefulWidget {
  const FeedbackReport({
    required this.entry,
    required this.onBack,
    required this.onSubmit,
    this.isSubmitting = false,
    this.onPlayAudio,
    super.key,
  });

  final FeedbackWordEntry entry;
  final VoidCallback onBack;
  final Future<void> Function({
    required String issueType,
    required String content,
    String? contact,
  })
  onSubmit;
  final bool isSubmitting;
  final VoidCallback? onPlayAudio;

  @override
  State<FeedbackReport> createState() => _FeedbackReportState();
}

class _FeedbackReportState extends State<FeedbackReport> {
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  String _selectedIssueKey = 'meaning';

  static const List<Map<String, dynamic>> _issueTypes = [
    {
      'key': 'meaning',
      'icon': Icons.translate_rounded,
    },
    {
      'key': 'spelling',
      'icon': Icons.spellcheck_rounded,
    },
    {
      'key': 'pronunciation',
      'icon': Icons.record_voice_over_rounded,
    },
    {
      'key': 'context',
      'icon': Icons.menu_book_rounded,
    },
    {
      'key': 'other',
      'icon': Icons.more_horiz_rounded,
    },
  ];

  String _issueTitle(String key, BuildContext context) {
    final l10n = context.l10n;
    return switch (key) {
      'meaning' => l10n.feedbackIssueMeaning,
      'spelling' => l10n.feedbackIssueSpelling,
      'pronunciation' => l10n.feedbackIssuePronunciation,
      'context' => l10n.feedbackIssueContext,
      _ => l10n.feedbackIssueOther,
    };
  }

  @override
  void dispose() {
    _contentController.dispose();
    _contactController.dispose();
    super.dispose();
  }

  String _getDynamicPlaceholder(BuildContext context) {
    final l10n = context.l10n;
    final en = widget.entry.word.en;
    final vi = widget.entry.word.vi;

    return switch (_selectedIssueKey) {
      'meaning' => l10n.feedbackHintMeaning(en, vi),
      'spelling' => l10n.feedbackHintSpelling(en),
      'pronunciation' => l10n.feedbackHintPronunciation(en),
      'context' => l10n.feedbackHintContext(en),
      _ => l10n.feedbackHintOther(en),
    };
  }

  bool get _canSubmit {
    return _contentController.text.trim().length >= 10 && !widget.isSubmitting;
  }

  void _handleSubmit() {
    if (!_canSubmit) return;
    widget.onSubmit(
      issueType: _issueTitle(_selectedIssueKey, context),
      content: _contentController.text.trim(),
      contact: _contactController.text.trim().isNotEmpty
          ? _contactController.text.trim()
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final word = widget.entry.word;
    final gameMode = widget.entry.gameMode;
    final charCount = _contentController.text.length;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Banner thông tin từ được chọn
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.feedbackWarmBeigeLight,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: AppColors.feedbackSandBorder,
                width: 1.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nút Quay lại danh sách từ
                GestureDetector(
                  onTap: widget.onBack,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.feedbackWarmBeigeDark,
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: AppColors.feedbackSandBorder,
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          size: 12.r,
                          color: AppColors.paperBadgeText,
                        ),
                        SizedBox(width: 4.w),
                        AppText.c1(
                          'Quay lại danh sách từ',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.paperBadgeText,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 4.h),

                // Từ tiếng Anh, loa, badge chế độ, tag chủ đề
                Row(
                  children: [
                    AppText.t3(
                      word.en,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: AppColors.grayDark,
                    ),
                    SizedBox(width: 6.w),
                    GestureDetector(
                      onTap: widget.onPlayAudio,
                      child: Container(
                        padding: EdgeInsets.all(2.r),
                        decoration: const BoxDecoration(
                          color: AppColors.feedbackAudioPressed,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.volume_up_rounded,
                          size: 12.r,
                          color: AppColors.brownDark,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.podiumBronze3Bg,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: AppColors.podiumBronze3BgEnd,
                          width: 1.w,
                        ),
                      ),
                      child: AppText.c1(
                        gameMode,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.paperStreakText,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.feedbackWarmBeigeDark,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: AppText.c1(
                        '# ${word.topic.isNotEmpty ? word.topic : "general"}',
                        fontSize: 10.sp,
                        color: AppColors.feedbackTextBrown,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 4.h),

                // Dòng nghĩa hiện tại
                Row(
                  children: [
                    AppText.b2(
                      'Nghĩa hiện tại: ',
                      fontSize: 12.sp,
                      color: AppColors.grayMedium,
                    ),
                    AppText.b2(
                      word.vi,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.grayDark,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 6.h),

          // 2. Nhóm 5 Chip Chọn Vấn Đề
          AppText.b2(
            context.l10n.feedbackQuestion,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            color: AppColors.paperTextDark,
          ),
          SizedBox(height: 4.h),
          Wrap(
            spacing: 6.w,
            runSpacing: 4.h,
            children: _issueTypes.map((item) {
              final key = item['key'] as String;
              final title = _issueTitle(key, context);
              final icon = item['icon'] as IconData;
              final isSelected = _selectedIssueKey == key;

              return GestureDetector(
                onTap: () => setState(() => _selectedIssueKey = key),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.feedbackMossGreen
                        : AppColors.feedbackWarmBeigeLight,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.feedbackMossGreenDark
                          : AppColors.feedbackSandBorder,
                      width: 1.w,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        icon,
                        size: 12.r,
                        color: isSelected
                            ? AppColors.white
                            : AppColors.paperBadgeText,
                      ),
                      SizedBox(width: 4.w),
                      AppText.c1(
                        title,
                        fontSize: 10.sp,
                        fontWeight: isSelected ? FontWeight.w700 : null,
                        color: isSelected
                            ? AppColors.white
                            : AppColors.paperBadgeText,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 6.h),

          // 3. Ô Nhập Đề Xuất (Textarea)
          Row(
            children: [
              AppText.b2(
                '${context.l10n.feedbackContent} ',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: AppColors.paperTextDark,
              ),
              AppText.b2(
                '*',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: AppColors.dialogCloseIcon,
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: AppColors.feedbackSandBorder,
                width: 1.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _contentController,
                  maxLines: 3,
                  maxLength: 1000,
                  buildCounter:
                      (
                        _, {
                        required currentLength,
                        required isFocused,
                        maxLength,
                      }) => null,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.paperTextDark,
                    fontFamily: 'Inter',
                  ),
                  decoration: InputDecoration(
                    hintText: _getDynamicPlaceholder(context),
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.darkOnSurfaceVariant,
                      fontFamily: 'Inter',
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (_) => setState(() {}),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: AppText.c1(
                    '$charCount/1000',
                    fontSize: 10.sp,
                    color: AppColors.darkOnSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),

          if (charCount > 0 && charCount < 10)
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: AppText.c1(
                context.l10n.feedbackMinLength,
                fontSize: 10.sp,
                color: AppColors.dialogCloseIcon,
              ),
            ),

          SizedBox(height: 6.h),

          // 4. Ô Thông Tin Liên Hệ
          AppText.b2(
            context.l10n.feedbackContact,
            fontSize: 12.sp,
            color: AppColors.paperTextDark,
          ),
          SizedBox(height: 4.h),
          Container(
            height: 28.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                color: AppColors.feedbackSandBorder,
                width: 1.w,
              ),
            ),
            child: TextField(
              controller: _contactController,
              maxLength: 160,
              buildCounter:
                  (
                    _, {
                    required currentLength,
                    required isFocused,
                    maxLength,
                  }) => null,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.paperTextDark,
                fontFamily: 'Inter',
              ),
              decoration: InputDecoration(
                hintText: context.l10n.feedbackContactHint,
                hintStyle: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.darkOnSurfaceVariant,
                  fontFamily: 'Inter',
                ),
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),

          SizedBox(height: 8.h),

          // 5. Hàng Nút Hành Động
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: widget.onBack,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                  child: AppText.c1(
                    context.l10n.viewOtherWords,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.paperBadgeText,
                  ),
                ),
              ),
              AppButton(
                text: widget.isSubmitting
                    ? context.l10n.sendingFeedback
                    : context.l10n.sendFeedback,
                icon: widget.isSubmitting
                    ? SizedBox(
                        width: 12.r,
                        height: 12.r,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.white,
                          ),
                        ),
                      )
                    : Icon(
                        Icons.send_rounded,
                        size: 14.r,
                        color: AppColors.white,
                      ),
                fontSize: 12.sp,
                backgroundColor: _canSubmit
                    ? AppColors.feedbackMossGreen
                    : AppColors.feedbackDisabled,
                borderColor: _canSubmit
                    ? AppColors.feedbackMossGreenDark
                    : AppColors.feedbackDisabledBorder,
                extrusionColor: _canSubmit
                    ? AppColors.feedbackMossGreenDark
                    : AppColors.feedbackDisabledExtrusion,
                extrusionHeight: 2,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
                borderRadius: BorderRadius.circular(6.r),
                onPressed: _canSubmit ? _handleSubmit : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackTab extends StatefulWidget {
  const FeedbackTab({
    required this.onSubmit,
    this.isSubmitting = false,
    super.key,
  });

  final Future<void> Function({
    required String category,
    required String message,
    String? contact,
  })
  onSubmit;
  final bool isSubmitting;

  @override
  State<FeedbackTab> createState() => _FeedbackTabState();
}

class _FeedbackTabState extends State<FeedbackTab> {
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  String _selectedCategory = 'idea';

  static const List<Map<String, dynamic>> _categories = [
    {
      'key': 'idea',
      'title': 'Ý tưởng',
      'icon': Icons.lightbulb_outline_rounded,
    },
    {
      'key': 'bug',
      'title': 'Báo lỗi app',
      'icon': Icons.bug_report_outlined,
    },
    {
      'key': 'feature',
      'title': 'Tính năng mới',
      'icon': Icons.add_task_rounded,
    },
    {
      'key': 'ui',
      'title': 'Giao diện & Âm thanh',
      'icon': Icons.palette_outlined,
    },
    {
      'key': 'other',
      'title': 'Khác',
      'icon': Icons.more_horiz_rounded,
    },
  ];

  @override
  void dispose() {
    _messageController.dispose();
    _contactController.dispose();
    super.dispose();
  }

  bool get _canSubmit {
    return _messageController.text.trim().length >= 10 && !widget.isSubmitting;
  }

  void _handleSubmit() {
    if (!_canSubmit) return;
    widget.onSubmit(
      category: _selectedCategory,
      message: _messageController.text.trim(),
      contact: _contactController.text.trim().isNotEmpty
          ? _contactController.text.trim()
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final charCount = _messageController.text.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 1. Tiêu đề câu hỏi mở
        AppText.t3(
          'Bạn muốn Bufopia cải thiện điều gì?',
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          color: AppColors.paperTextDark,
        ),

        SizedBox(height: 6.h),

        // 2. Bộ danh mục góp ý (5 nút chip)
        Wrap(
          spacing: 6.w,
          runSpacing: 4.h,
          children: _categories.map((cat) {
            final key = cat['key'] as String;
            final title = cat['title'] as String;
            final icon = cat['icon'] as IconData;
            final isSelected = _selectedCategory == key;

            return GestureDetector(
              onTap: () => setState(() => _selectedCategory = key),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 5.h,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.feedbackMossGreen
                      : AppColors.feedbackWarmBeigeLight,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.feedbackMossGreenDark
                        : AppColors.feedbackSandBorder,
                    width: 1.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: isSelected
                          ? AppColors.feedbackMossGreenDark
                              .withValues(alpha: 0.25)
                          : AppColors.feedbackSandBorder
                              .withValues(alpha: 0.2),
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 14.r,
                      color: isSelected
                          ? AppColors.white
                          : AppColors.paperBadgeText,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      title,
                      fontSize: 12.sp,
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

        SizedBox(height: 8.h),

        // 3. Tiêu đề Nội Dung Góp Ý
        Row(
          children: [
            AppText.b2(
              'Nội dung góp ý ',
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

        // 4. Ô Nhập Nội Dung Góp Ý (Tự động lấp đầy khoảng trống)
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: AppColors.feedbackSandBorder,
                width: 1.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
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
                      hintText:
                          'Mô tả ý tưởng, báo lỗi bạn gặp phải '
                          'hoặc điểm bạn muốn game nâng cấp...',
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
        ),

        if (charCount > 0 && charCount < 10)
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: AppText.c1(
              'Bạn vui lòng mô tả chi tiết hơn nhé — ít nhất 10 ký tự.',
              fontSize: 10.sp,
              color: AppColors.dialogCloseIcon,
            ),
          ),

        SizedBox(height: 8.h),

        // 5. Ô Thông Tin Liên Hệ
        AppText.b2(
          'Thông tin liên hệ (không bắt buộc)',
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          color: AppColors.paperTextDark,
        ),
        SizedBox(height: 4.h),
        Container(
          height: 36.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: AppColors.feedbackSandBorder,
              width: 1.w,
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.contact_mail_outlined,
                size: 16.r,
                color: AppColors.feedbackTextBrown,
              ),
              SizedBox(width: 8.w),
              Expanded(
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
                    hintText: 'Email, Discord hoặc cách liên hệ khác...',
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.darkOnSurfaceVariant,
                      fontFamily: 'Inter',
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10.h),

        // 6. Nút Gửi Góp Ý full-width 3D Game đặt ở cuối
        AppButton(
          text: widget.isSubmitting ? 'ĐANG GỬI...' : 'GỬI GÓP Ý',
          icon: widget.isSubmitting
              ? SizedBox(
                  width: 14.r,
                  height: 14.r,
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.white,
                    ),
                  ),
                )
              : Icon(
                  Icons.send_rounded,
                  size: 16.r,
                  color: AppColors.white,
                ),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          width: double.infinity,
          height: 40.h,
          backgroundColor: _canSubmit
              ? AppColors.feedbackMossGreen
              : AppColors.feedbackDisabled,
          borderColor: _canSubmit
              ? AppColors.feedbackMossGreenDark
              : AppColors.feedbackDisabledBorder,
          extrusionColor: _canSubmit
              ? AppColors.feedbackMossGreenDark
              : AppColors.feedbackDisabledExtrusion,
          borderRadius: BorderRadius.circular(8.r),
          onPressed: _canSubmit ? _handleSubmit : null,
        ),
      ],
    );
  }
}

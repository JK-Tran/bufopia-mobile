import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/data/models/legal_policies_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hiển thị một mục điều khoản: tiêu đề đỏ + nội dung gạch đầu dòng ✦
/// Hỗ trợ in đậm inline với cú pháp **text**
class PrivacyContent extends StatelessWidget {
  const PrivacyContent({
    required this.section,
    required this.isClassic,
    super.key,
  });

  final PolicySection section;
  final bool isClassic;

  @override
  Widget build(BuildContext context) {
    final bg = isClassic ? AppColors.white : const Color(0xFFFCF9F2);
    final border = isClassic
        ? const Color(0xFFE2E8F0)
        : const Color(0xFFE2DACB);
    const titleColor = Color(0xFF9A3412);
    final textColor = isClassic
        ? const Color(0xFF1E293B)
        : AppColors.paperTextDark;
    final bulletColor = isClassic
        ? AppColors.classicButtonEmerald
        : AppColors.paperGreen;

    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: border, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.b2(
            section.title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: titleColor,
          ),
          SizedBox(height: 4.h),
          ...section.content.split('\n').map((line) {
            final t = line.trim();
            if (t.isEmpty) return SizedBox(height: 2.h);
            final isBullet = t.startsWith('•') || t.startsWith('-');
            final text = isBullet ? t.substring(1).trim() : t;
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isBullet)
                    Padding(
                      padding: EdgeInsets.only(top: 1.h, right: 6.w),
                      child: Text(
                        '✦',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: bulletColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: _parseInlineBold(
                          text,
                          TextStyle(
                            fontSize: 10.sp,
                            color: textColor,
                            height: 1.35,
                          ),
                          TextStyle(
                            fontSize: 10.sp,
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  /// Parse **bold** → TextSpan đậm/thường xen kẽ
  List<TextSpan> _parseInlineBold(
    String text,
    TextStyle normal,
    TextStyle bold,
  ) {
    final spans = <TextSpan>[];
    final parts = text.split('**');
    for (var i = 0; i < parts.length; i++) {
      if (parts[i].isEmpty) continue;
      spans.add(TextSpan(text: parts[i], style: i.isOdd ? bold : normal));
    }
    return spans;
  }
}

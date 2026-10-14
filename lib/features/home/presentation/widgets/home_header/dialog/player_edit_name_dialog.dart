import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerEditNameDialog extends StatefulWidget {
  const PlayerEditNameDialog({required this.initialName, super.key});

  final String initialName;

  static Future<String?> show(
    BuildContext context, {
    required String initialName,
  }) {
    return showDialog<String>(
      context: context,
      builder: (_) => PlayerEditNameDialog(initialName: initialName),
    );
  }

  @override
  State<PlayerEditNameDialog> createState() => _PlayerEditNameDialogState();
}

class _PlayerEditNameDialogState extends State<PlayerEditNameDialog> {
  late final TextEditingController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = TextEditingController(text: widget.initialName);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _submit() {
    final name = _ctrl.text.trim();
    if (name.isNotEmpty) Navigator.of(context).pop(name);
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SizedBox(
        width: 260.w,
        child: Container(
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperCardBg : AppColors.white,
            borderRadius: BorderRadius.circular(14.w),
            border: isPaper
                ? Border.all(color: AppColors.paperBorder, width: 1.5.w)
                : null,
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.18),
                blurRadius: 16.w,
                offset: Offset(0, 6.h),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Header ──────────────────────────────
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: isPaper ? AppColors.paperGreen : AppColors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14.w),
                    topRight: Radius.circular(14.w),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_rounded,
                      color: AppColors.white,
                      size: 14.w,
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: AppText.t3(
                        'Đổi tên',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: AppColors.white,
                      ),
                    ),
                    AppButton.close(
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),

              // ── Body ────────────────────────────────
              Padding(
                padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 12.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // TextField
                    Container(
                      decoration: BoxDecoration(
                        color: isPaper
                            ? AppColors.white
                            : AppColors.lightBackground,
                        borderRadius: BorderRadius.circular(8.w),
                        border: Border.all(
                          color: isPaper
                              ? AppColors.paperBorder
                              : AppColors.blueLight,
                          width: 1.5.w,
                        ),
                      ),
                      child: TextField(
                        controller: _ctrl,
                        maxLength: 30,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (_) => _submit(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 8.h,
                          ),
                          counterStyle: TextStyle(
                            fontSize: 10.sp,
                            color: isPaper
                                ? AppColors.paperTextMedium
                                : AppColors.grayMedium,
                          ),
                          hintText: 'Nhập tên...',
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: isPaper
                                ? AppColors.paperTextMedium
                                : AppColors.grayMedium,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    // Buttons
                    Row(
                      children: [
                        // Huỷ
                        Expanded(
                          child: AppButton.secondary(
                            fontSize: 14.sp,
                            text: 'Huỷ',
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        // Lưu tên
                        Expanded(
                          child: AppButton(
                            fontSize: 14.sp,
                            text: 'Lưu',
                            backgroundColor: isPaper
                                ? AppColors.paperGreen
                                : AppColors.blue,
                            extrusionColor: isPaper
                                ? AppColors.paperGreenExtrusion
                                : AppColors.blueDeep,
                            onPressed: _submit,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

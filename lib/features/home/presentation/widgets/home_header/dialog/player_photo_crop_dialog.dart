import 'dart:io';
import 'dart:ui' as ui;

import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';

/// Hộp thoại căn chỉnh & cắt ảnh hình vuông chuẩn Design System
class PlayerPhotoCropDialog extends StatefulWidget {
  const PlayerPhotoCropDialog({
    required this.imagePath,
    required this.isNetworkOrAsset,
    super.key,
  });

  final String imagePath;
  final bool isNetworkOrAsset;

  static Future<String?> show(
    BuildContext context, {
    required String imagePath,
    bool isNetworkOrAsset = true,
  }) {
    return Navigator.of(context).push<String>(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => PlayerPhotoCropDialog(
          imagePath: imagePath,
          isNetworkOrAsset: isNetworkOrAsset,
        ),
      ),
    );
  }

  @override
  State<PlayerPhotoCropDialog> createState() => _PlayerPhotoCropDialogState();
}

class _PlayerPhotoCropDialogState extends State<PlayerPhotoCropDialog> {
  final TransformationController _transformController =
      TransformationController();
  final GlobalKey _boundaryKey = GlobalKey();

  bool _isSaving = false;
  static const double _defaultScale = 1.2;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _resetTransform();
    });
  }

  @override
  void dispose() {
    _transformController.dispose();
    super.dispose();
  }

  void _resetTransform() {
    if (!mounted) return;
    final size = _boundaryKey.currentContext?.size;
    if (size != null) {
      final dx = -(size.width * (_defaultScale - 1)) / 2;
      final dy = -(size.height * (_defaultScale - 1)) / 2;
      final scaled = Matrix4.diagonal3Values(_defaultScale, _defaultScale, 1)
        ..setTranslationRaw(
          dx * _defaultScale,
          dy * _defaultScale,
          0,
        );
      _transformController.value = scaled;
    } else {
      _transformController.value = Matrix4.diagonal3Values(
        _defaultScale,
        _defaultScale,
        1,
      );
    }
  }

  Future<void> _onConfirm() async {
    if (_isSaving) return;
    setState(() => _isSaving = true);

    try {
      await WidgetsBinding.instance.endOfFrame;
      final boundary =
          _boundaryKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary?;
      if (boundary != null) {
        final image = await boundary.toImage(pixelRatio: 3);
        final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
        if (byteData != null) {
          final tempDir = await getTemporaryDirectory();
          final filePath =
              '${tempDir.path}/avatar_${DateTime.now().millisecondsSinceEpoch}.png';
          final file = File(filePath);
          await file.writeAsBytes(byteData.buffer.asUint8List());

          if (mounted) {
            Navigator.of(context).pop(filePath);
            return;
          }
        }
      }
    } on Object {
      // Bỏ qua lỗi lưu, trả về ảnh gốc
    }

    if (mounted) {
      Navigator.of(context).pop(widget.imagePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(),
            Expanded(
              child: Center(
                child: _buildCropBox(),
              ),
            ),
            _buildBottomHint(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      height: 44.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        border: Border(
          bottom: BorderSide(
            color: AppColors.white.withValues(alpha: 0.08),
          ),
        ),
      ),
      child: Row(
        children: [
          AppButton.custom(
            shape: BoxShape.circle,
            width: 28.h,
            height: 28.h,
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.darkSurfaceVariant,
            borderColor: AppColors.white.withValues(alpha: 0.15),
            extrusionColor: AppColors.darkBackground,
            extrusionHeight: 2.h,
            onPressed: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_rounded,
              color: AppColors.white,
              size: 16.h,
            ),
          ),
          SizedBox(width: 12.w),
          AppText.t3(
            'Căn chỉnh ảnh',
            color: AppColors.white,
            fontWeight: FontWeight.w900,
            fontSize: 15.sp,
            shadows: [
              Shadow(
                color: AppColors.black.withValues(alpha: 0.4),
                offset: const Offset(0, 1.5),
                blurRadius: 3,
              ),
            ],
          ),
          const Spacer(),
          AppButton.success(
            text: 'Xong',
            height: 28.h,
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            icon: Icon(
              Icons.check_rounded,
              color: AppColors.white,
              size: 15.h,
            ),
            isLoading: _isSaving,
            fontSize: 13.sp,
            extrusionHeight: 2.h,
            onPressed: _onConfirm,
          ),
        ],
      ),
    );
  }

  Widget _buildCropBox() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.85),
            width: 2.w,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.65),
              blurRadius: 24.w,
              spreadRadius: 6.w,
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            RepaintBoundary(
              key: _boundaryKey,
              child: ClipRect(
                child: ColoredBox(
                  color: AppColors.black,
                  child: InteractiveViewer(
                    transformationController: _transformController,
                    boundaryMargin: EdgeInsets.all(300.w),
                    maxScale: 5,
                    minScale: 0.5,
                    child: Center(
                      child: widget.isNetworkOrAsset
                          ? (widget.imagePath.startsWith('http')
                                ? Image.network(
                                    widget.imagePath,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    widget.imagePath,
                                    fit: BoxFit.cover,
                                  ))
                          : Image.file(
                              File(widget.imagePath),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            if (!_isSaving)
              IgnorePointer(
                child: CustomPaint(
                  painter: _SquareGridCropPainter(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomHint() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.pinch_rounded,
            color: AppColors.cyan,
            size: 16.sp,
          ),
          SizedBox(width: 6.w),
          AppText.c1(
            'Dùng ngón tay kéo & phóng to để căn chỉnh ảnh vào khung vuông',
            color: AppColors.white.withValues(alpha: 0.8),
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ],
      ),
    );
  }
}

class _SquareGridCropPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..color = AppColors.white.withValues(alpha: 0.35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas
      ..drawLine(
        Offset(size.width / 3, 0),
        Offset(size.width / 3, size.height),
        gridPaint,
      )
      ..drawLine(
        Offset(size.width * 2 / 3, 0),
        Offset(size.width * 2 / 3, size.height),
        gridPaint,
      )
      ..drawLine(
        Offset(0, size.height / 3),
        Offset(size.width, size.height / 3),
        gridPaint,
      )
      ..drawLine(
        Offset(0, size.height * 2 / 3),
        Offset(size.width, size.height * 2 / 3),
        gridPaint,
      );

    final cornerPaint = Paint()
      ..color = AppColors.white
      ..strokeWidth = 3.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    const cornerLength = 20.0;

    canvas
      ..drawLine(Offset.zero, const Offset(cornerLength, 0), cornerPaint)
      ..drawLine(Offset.zero, const Offset(0, cornerLength), cornerPaint)
      ..drawLine(
        Offset(size.width, 0),
        Offset(size.width - cornerLength, 0),
        cornerPaint,
      )
      ..drawLine(
        Offset(size.width, 0),
        Offset(size.width, cornerLength),
        cornerPaint,
      )
      ..drawLine(
        Offset(0, size.height),
        Offset(cornerLength, size.height),
        cornerPaint,
      )
      ..drawLine(
        Offset(0, size.height),
        Offset(0, size.height - cornerLength),
        cornerPaint,
      )
      ..drawLine(
        Offset(size.width, size.height),
        Offset(size.width - cornerLength, size.height),
        cornerPaint,
      )
      ..drawLine(
        Offset(size.width, size.height),
        Offset(size.width, size.height - cornerLength),
        cornerPaint,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

import 'dart:io';

import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/base/default_bloc.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as img;

/// Màn hình Custom In-App Camera chuẩn kiến trúc Word Duel
/// Hỗ trợ lật gương camera trước, chống méo ảnh và tối ưu hiển thị
class CameraPage extends StatefulWidget {
  const CameraPage({
    this.onImageCaptured,
    super.key,
  });

  final ValueChanged<File>? onImageCaptured;

  static Future<File?> open(
    BuildContext context, {
    ValueChanged<File>? onImageCaptured,
  }) {
    return Navigator.of(context).push<File?>(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => CameraPage(
          onImageCaptured: onImageCaptured,
        ),
      ),
    );
  }

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends BasePageState<CameraPage, DefaultBloc>
    with WidgetsBindingObserver {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  CameraController? _controller;
  List<CameraDescription> _cameras = [];
  bool _isInitialized = false;
  bool _isRearCamera = false; // Mặc định camera trước (selfie)
  bool _isCapturing = false;
  XFile? _capturedImage;
  FlashMode _currentFlashMode = FlashMode.off;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initCamera();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      controller.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera();
    }
  }

  Future<void> _initCamera() async {
    try {
      _cameras = await availableCameras();
      if (!mounted) return;

      if (_cameras.isEmpty) {
        AppToast.showWarning(context, 'Không tìm thấy camera khả dụng.');
        return;
      }

      final camera = _isRearCamera
          ? _cameras.firstWhere(
              (c) => c.lensDirection == CameraLensDirection.back,
              orElse: () => _cameras.first,
            )
          : _cameras.firstWhere(
              (c) => c.lensDirection == CameraLensDirection.front,
              orElse: () => _cameras.first,
            );

      final controller = CameraController(
        camera,
        ResolutionPreset.medium,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );

      _controller = controller;
      await controller.initialize();

      if (mounted) {
        try {
          await controller.setFlashMode(_currentFlashMode);
        } on Object {
          // Bỏ qua nếu camera trước không hỗ trợ flash
        }

        setState(() {
          _isInitialized = true;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        AppToast.showWarning(context, 'Lỗi khởi động máy ảnh: $e');
      }
    }
  }

  Future<void> _switchCamera() async {
    if (_cameras.length < 2 || _isCapturing) return;

    await HapticFeedback.selectionClick();
    setState(() {
      _isRearCamera = !_isRearCamera;
      _isInitialized = false;
    });

    await _controller?.dispose();
    await _initCamera();
  }

  Future<void> _toggleFlash() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;

    await HapticFeedback.selectionClick();
    FlashMode nextMode;
    switch (_currentFlashMode) {
      case FlashMode.off:
        nextMode = FlashMode.auto;
      case FlashMode.auto:
        nextMode = FlashMode.torch;
      case FlashMode.torch:
      case FlashMode.always:
        nextMode = FlashMode.off;
    }

    try {
      await controller.setFlashMode(nextMode);
      setState(() => _currentFlashMode = nextMode);
    } on CameraException {
      // Bỏ qua nếu camera không hỗ trợ chế độ này
    }
  }

  Future<void> _takePicture() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized || _isCapturing) {
      return;
    }

    try {
      await HapticFeedback.mediumImpact();
      setState(() => _isCapturing = true);

      final image = await controller.takePicture();

      // Nếu chụp camera trước: tự động lật gương ngang để ảnh khớp với lúc soi
      if (!_isRearCamera) {
        try {
          final file = File(image.path);
          final bytes = await file.readAsBytes();
          final decoded = img.decodeImage(bytes);
          if (decoded != null) {
            final oriented = img.bakeOrientation(decoded);
            final flipped = img.flipHorizontal(oriented);
            await file.writeAsBytes(img.encodeJpg(flipped, quality: 95));
          }
        } on Object {
          // Bỏ qua nếu lật ảnh thất bại, dùng ảnh gốc
        }
      }

      if (mounted) {
        setState(() {
          _capturedImage = image;
          _isCapturing = false;
        });
      }
    } on CameraException catch (e) {
      if (mounted) {
        setState(() => _isCapturing = false);
        AppToast.showWarning(context, 'Chụp ảnh thất bại: ${e.description}');
      }
    }
  }

  void _retake() {
    HapticFeedback.selectionClick();
    setState(() {
      _capturedImage = null;
    });
  }

  void _sendImage() {
    if (_capturedImage == null) return;
    HapticFeedback.lightImpact();
    final file = File(_capturedImage!.path);
    widget.onImageCaptured?.call(file);
    Navigator.of(context).pop(file);
  }

  @override
  Widget buildPage(BuildContext context) {
    if (_capturedImage != null) {
      return _buildPreviewScreen();
    }
    return _buildCameraScreen();
  }

  /// 1. Màn hình ngắm chụp thời gian thực (Live Viewfinder Screen)
  Widget _buildCameraScreen() {
    final controller = _controller;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Camera Preview - Tràn viền toàn màn hình
          if (_isInitialized && controller != null)
            OverflowBox(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: 1,
                  height: controller.value.aspectRatio,
                  child: CameraPreview(controller),
                ),
              ),
            )
          else
            const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),

          // Dải bóng mờ đỉnh màn hình chống chìm nút khi gặp cảnh trắng
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 120.h,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.55),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Dải bóng mờ đáy màn hình
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 140.h,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Top bar: Đóng, Flash, Lật Camera (có nền mờ chống phông trắng)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
                child: Row(
                  children: [
                    // Nút Đóng
                    _buildRoundTopButton(
                      icon: Icons.close,
                      onPressed: () => Navigator.of(context).pop(),
                      size: 24,
                    ),
                    const Spacer(),
                    // Nút Flash
                    _buildRoundTopButton(
                      icon: _getFlashIcon(),
                      color: _currentFlashMode == FlashMode.off
                          ? Colors.white
                          : Colors.amber,
                      onPressed: _toggleFlash,
                      size: 22,
                    ),
                    if (_cameras.length > 1) ...[
                      SizedBox(width: 12.w),
                      // Nút Lật Camera
                      _buildRoundTopButton(
                        icon: Icons.cameraswitch,
                        onPressed: _switchCamera,
                        size: 24,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),

          // Bottom bar: Nút chụp ảnh tròn viền trắng nổi bật trên nền sáng
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: Center(
                  child: GestureDetector(
                    onTap: _isCapturing ? null : _takePicture,
                    child: Container(
                      width: 74.r,
                      height: 74.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.45),
                            blurRadius: 10.r,
                            spreadRadius: 1.r,
                          ),
                        ],
                      ),
                      child: _isCapturing
                          ? const Padding(
                              padding: EdgeInsets.all(12),
                              child: CircularProgressIndicator(
                                strokeWidth: 3,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.all(4.r),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 4.r,
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 2. Màn hình xem trước & xác nhận ảnh (Preview & Action Screen)
  Widget _buildPreviewScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Ảnh vừa chụp - Giữ nguyên 100% tỷ lệ gốc, không méo!
          Positioned.fill(
            child: Image.file(
              File(_capturedImage!.path),
              fit: BoxFit.cover,
            ),
          ),

          // Dải bóng mờ đỉnh màn hình
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 120.h,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.55),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Dải bóng mờ đáy màn hình
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 140.h,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Top bar: Nút Đóng
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
                child: Row(
                  children: [
                    _buildRoundTopButton(
                      icon: Icons.close,
                      onPressed: () => Navigator.of(context).pop(),
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom bar: Nút Chụp lại & Nút Xác nhận
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.w,
                  vertical: 24.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nút Chụp lại (Retake)
                    GestureDetector(
                      onTap: _retake,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.45),
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.w,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 8.r,
                              offset: Offset(0, 2.h),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.refresh,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8.w),
                            AppText.b1(
                              'Chụp lại',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Nút Xác nhận (Confirm)
                    GestureDetector(
                      onTap: _sendImage,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32.w,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(25.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.4),
                              blurRadius: 10.r,
                              offset: Offset(0, 4.h),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8.w),
                            AppText.b1(
                              'Xác nhận',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundTopButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color color = Colors.white,
    double size = 26,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 44.r,
        height: 44.r,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.35),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.25),
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 8.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: size.r,
          ),
        ),
      ),
    );
  }

  IconData _getFlashIcon() {
    switch (_currentFlashMode) {
      case FlashMode.off:
        return Icons.flash_off;
      case FlashMode.auto:
        return Icons.flash_auto;
      case FlashMode.torch:
      case FlashMode.always:
        return Icons.flash_on;
    }
  }
}

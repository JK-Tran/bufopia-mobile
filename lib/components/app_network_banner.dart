import 'dart:async';

import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/services/network/network_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Banner thông báo trạng thái mạng toàn cục (Offline/Online Banner)
/// Thuộc hệ sinh thái UI Components dùng chung (Non-intrusive banner)
class AppNetworkBanner extends StatefulWidget {
  const AppNetworkBanner({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<AppNetworkBanner> createState() => _AppNetworkBannerState();
}

class _AppNetworkBannerState extends State<AppNetworkBanner>
    with SingleTickerProviderStateMixin {
  late final NetworkService _networkService;
  StreamSubscription<bool>? _subscription;

  late final AnimationController _animController;
  late final Animation<Offset> _offsetAnimation;

  bool _isOnline = true;
  bool _wasOffline = false;
  Timer? _dismissTimer;

  @override
  void initState() {
    super.initState();
    _networkService = GetIt.instance.get<NetworkService>();

    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _offsetAnimation =
        Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(parent: _animController, curve: Curves.easeOutCubic),
        );

    _initNetworkListener();
  }

  Future<void> _initNetworkListener() async {
    final initialStatus = await _networkService.isConnected;
    if (!mounted) return;
    if (!initialStatus) {
      setState(() {
        _isOnline = false;
        _wasOffline = true;
      });
      _animController.forward();
    }

    _subscription = _networkService.onConnectivityChanged.listen((
      hasConnection,
    ) {
      if (!mounted) return;
      _dismissTimer?.cancel();

      if (!hasConnection) {
        setState(() {
          _isOnline = false;
          _wasOffline = true;
        });
        _animController.forward();
      } else {
        if (_wasOffline) {
          setState(() {
            _isOnline = true;
          });
          _animController.forward();
          // Sau 2.5s khi có mạng trở lại, tự động trượt lên ẩn đi
          _dismissTimer = Timer(const Duration(milliseconds: 2500), () async {
            if (mounted) {
              await _animController.reverse();
              if (mounted) {
                setState(() {
                  _wasOffline = false;
                });
              }
            }
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _dismissTimer?.cancel();
    _subscription?.cancel();
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Nội dung chính của màn hình
        widget.child,

        // Banner thông báo trượt từ mép trên màn hình
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SlideTransition(
            position: _offsetAnimation,
            child: Material(
              color: Colors.transparent,
              child: SafeArea(
                bottom: false,
                child: Container(
                  height: 22.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: _isOnline
                        ? AppColors.radarGreen
                        : AppColors.menuQuizRed,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.2),
                        blurRadius: 6.r,
                        offset: Offset(0, 2.h),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        _isOnline ? Icons.wifi_rounded : Icons.wifi_off_rounded,
                        size: 16.r,
                        color: AppColors.white,
                      ),
                      SizedBox(width: 6.w),
                      AppText.c1(
                        _isOnline
                            ? 'Đã khôi phục kết nối Internet!'
                            : 'Không có kết nối Internet. ',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

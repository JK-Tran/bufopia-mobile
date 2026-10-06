import 'dart:io';

import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    this.avatarUrl,
    this.size = 48.0,
    this.borderWidth = 0.0,
    this.borderColor,
    this.backgroundColor = AppColors.grayLight,
    this.boxShadow,
    this.showBadge = false,
    this.badgeColor,
    this.badgeIconColor,
    this.badgeIcon,
    this.badgeSize,
    this.onTap,
  });

  final String? avatarUrl;
  final double size;
  final double borderWidth;
  final Color? borderColor;
  final Color backgroundColor;
  final List<BoxShadow>? boxShadow;
  final bool showBadge;
  final Color? badgeColor;
  final Color? badgeIconColor;
  final IconData? badgeIcon;
  final double? badgeSize;
  final VoidCallback? onTap;

  static const String defaultAsset = 'assets/images/bunny-avatar.webp';

  Widget _buildImage() {
    final url = avatarUrl;
    if (url == null || url.trim().isEmpty) {
      return _buildFallback();
    }

    if (url.startsWith('http://') || url.startsWith('https://')) {
      return Image.network(
        url,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _buildFallback(),
      );
    }

    final normalized = normalizeAvatarPath(url);
    if (normalized.startsWith('assets/')) {
      return Image.asset(
        normalized,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _buildFallback(),
      );
    }

    final file = File(url);
    if (file.existsSync()) {
      return Image.file(
        file,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => _buildFallback(),
      );
    }

    return _buildFallback();
  }

  static String normalizeAvatarPath(String url) {
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return url;
    }
    if (url.startsWith('/api/') || url.startsWith('api/')) {
      final path = url.startsWith('/') ? url : '/$url';
      return 'https://word-duel-worker.lvthanh-work.workers.dev$path';
    }
    if (url.startsWith('assets/')) return url;
    if (url.contains('bunny')) return 'assets/images/bunny-avatar.webp';
    if (url.contains('pip')) return 'assets/images/pip-avatar.webp';
    final clean = url.startsWith('/') ? url.substring(1) : url;
    if (clean.startsWith('assets/')) return clean;
    return 'assets/images/$clean';
  }

  Widget _buildFallback() {
    return Image.asset(
      defaultAsset,
      width: size,
      height: size,
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => Container(
        color: backgroundColor,
        width: size,
        height: size,
        child: Icon(
          Icons.person_rounded,
          size: size * 0.6,
          color: AppColors.grayMedium,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget avatarCircle = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: (borderColor != null && borderWidth > 0)
            ? Border.all(
                color: borderColor!,
                width: borderWidth,
              )
            : null,
        boxShadow: boxShadow,
      ),
      child: ClipOval(
        child: _buildImage(),
      ),
    );

    if (showBadge) {
      final effectiveBadgeSize = badgeSize ?? 24.w;
      avatarCircle = SizedBox(
        width: size,
        height: size,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(child: avatarCircle),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: effectiveBadgeSize,
                height: effectiveBadgeSize,
                decoration: BoxDecoration(
                  color: badgeColor ?? AppColors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.grayLight,
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.15),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    badgeIcon ?? Icons.camera_alt_rounded,
                    size: effectiveBadgeSize * 0.55,
                    color: badgeIconColor ?? AppColors.grayMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: avatarCircle,
      );
    }

    return avatarCircle;
  }
}

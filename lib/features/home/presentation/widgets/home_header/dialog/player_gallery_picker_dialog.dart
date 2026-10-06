import 'dart:async';
import 'dart:io';

import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/gallery/gallery_albums_tab.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/gallery/gallery_bottom_bar.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/gallery/gallery_photos_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';

class PlayerGalleryPickerDialog extends StatefulWidget {
  const PlayerGalleryPickerDialog({
    required this.onImageSelected,
    super.key,
  });

  final ValueChanged<File> onImageSelected;

  static Future<File?> show(BuildContext context) {
    return showDialog<File>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (context) => PlayerGalleryPickerDialog(
        onImageSelected: (file) => Navigator.of(context).pop(file),
      ),
    );
  }

  @override
  State<PlayerGalleryPickerDialog> createState() =>
      _PlayerGalleryPickerDialogState();
}

class _PlayerGalleryPickerDialogState extends State<PlayerGalleryPickerDialog>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<AssetPathEntity> _albums = [];
  AssetPathEntity? _currentAlbum;
  List<AssetEntity> _assets = [];
  final List<File> _additionalFiles = [];

  AssetEntity? _selectedAsset;
  File? _selectedFile;

  bool _isLoading = true;
  bool _isPermissionDenied = false;

  final ScrollController _scrollController = ScrollController();
  int _albumSwitchRequestId = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (mounted) setState(() {});
    });
    _loadPhotos();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadPhotos() async {
    if (!mounted) return;
    setState(() => _isLoading = true);

    try {
      final ps = await PhotoManager.requestPermissionExtend();
      if (!ps.isAuth && ps != PermissionState.limited) {
        if (mounted) {
          setState(() {
            _isPermissionDenied = true;
            _isLoading = false;
          });
        }
        return;
      }

      final albums = await PhotoManager.getAssetPathList(
        type: RequestType.image,
      );

      if (albums.isNotEmpty) {
        _albums = albums;
        _currentAlbum = albums.first;
        final media = await _currentAlbum!.getAssetListPaged(
          page: 0,
          size: 100,
        );

        if (mounted) {
          setState(() {
            _assets = media;
            _isPermissionDenied = false;
          });
        }
      }
    } on Object {
      if (mounted) {
        setState(() => _isPermissionDenied = true);
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _switchAlbum(AssetPathEntity album) async {
    final requestId = ++_albumSwitchRequestId;

    setState(() {
      _currentAlbum = album;
      _assets = [];
      _isLoading = true;
      _selectedAsset = null;
    });

    if (_scrollController.hasClients) {
      _scrollController.jumpTo(0);
    }

    final media = await album.getAssetListPaged(page: 0, size: 100);

    if (mounted && requestId == _albumSwitchRequestId) {
      setState(() {
        _assets = media;
        _isLoading = false;
      });
      _tabController.animateTo(0);
    }
  }

  Future<void> _openCamera() async {
    try {
      final picker = ImagePicker();
      final picked = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 95,
      );

      if (picked != null && mounted) {
        final file = File(picked.path);
        setState(() {
          _additionalFiles.insert(0, file);
          _selectedFile = file;
          _selectedAsset = null;
        });
        await _onNextPressed();
      }
    } on Object {
      // Bỏ qua lỗi máy ảnh
    }
  }

  Future<void> _pickFromSystemGallery() async {
    try {
      final picker = ImagePicker();
      final pickedList = await picker.pickMultiImage(imageQuality: 95);

      if (pickedList.isNotEmpty && mounted) {
        setState(() {
          for (final xFile in pickedList) {
            _additionalFiles.insert(0, File(xFile.path));
          }
          if (_additionalFiles.isNotEmpty) {
            _selectedFile = _additionalFiles.first;
            _selectedAsset = null;
          }
        });
      }
    } on Object {
      // Bỏ qua lỗi
    }
  }

  Future<void> _onNextPressed() async {
    String? targetPath;

    if (_selectedFile != null) {
      targetPath = _selectedFile!.path;
    } else if (_selectedAsset != null) {
      final file = await _selectedAsset!.file;
      targetPath = file?.path;
    }

    if (targetPath == null || !mounted) return;

    final croppedPath = await PlayerPhotoCropDialog.show(
      context,
      imagePath: targetPath,
      isNetworkOrAsset: false,
    );

    if (croppedPath != null && mounted) {
      widget.onImageSelected(File(croppedPath));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 580.w,
          maxHeight: 330.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.w),
          border: Border.all(color: AppColors.blueLight, width: 2.w),
          boxShadow: [
            BoxShadow(
              color: AppColors.blue.withValues(alpha: 0.25),
              blurRadius: 18.w,
              offset: Offset(0, 8.h),
            ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.16),
              blurRadius: 24.w,
              offset: Offset(0, 12.h),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.w),
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    GalleryPhotosTab(
                      isLoading: _isLoading,
                      isPermissionDenied: _isPermissionDenied,
                      additionalFiles: _additionalFiles,
                      assets: _assets,
                      selectedFile: _selectedFile,
                      selectedAsset: _selectedAsset,
                      scrollController: _scrollController,
                      onSelectFile: (file) => setState(() {
                        _selectedFile = file;
                        _selectedAsset = null;
                      }),
                      onSelectAsset: (asset) => setState(() {
                        _selectedAsset = asset;
                        _selectedFile = null;
                      }),
                      onOpenCamera: _openCamera,
                      onPickFromSystemGallery: _pickFromSystemGallery,
                    ),
                    GalleryAlbumsTab(
                      albums: _albums,
                      currentAlbum: _currentAlbum,
                      onSwitchAlbum: _switchAlbum,
                    ),
                  ],
                ),
              ),
              GalleryBottomBar(
                selectedFile: _selectedFile,
                selectedAsset: _selectedAsset,
                onNextPressed: (_selectedFile != null || _selectedAsset != null)
                    ? _onNextPressed
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 42.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.blueLight,
            AppColors.blueDark,
          ],
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.photo_library_rounded,
            color: AppColors.white,
            size: 18.w,
          ),
          SizedBox(width: 8.w),
          AppText.t3(
            'Thư viện ảnh',
            fontWeight: FontWeight.w900,
            fontSize: 16.sp,
            color: AppColors.white,
            shadows: [
              Shadow(
                color: AppColors.black.withValues(alpha: 0.25),
                offset: const Offset(0, 1.5),
                blurRadius: 3,
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              color: AppColors.black.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(16.w),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildSegmentTab(
                  index: 0,
                  icon: Icons.photo_rounded,
                  label: _currentAlbum != null ? _currentAlbum!.name : 'Ảnh',
                ),
                _buildSegmentTab(
                  index: 1,
                  icon: Icons.folder_rounded,
                  label: 'Album',
                ),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          AppButton.close(
            size: 24.w,
            iconSize: 14.w,
            iconColor: AppColors.blueDark,
            extrusionColor: AppColors.blueDeep.withValues(alpha: 0.5),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _buildSegmentTab({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final isSelected = _tabController.index == index;
    return GestureDetector(
      onTap: () {
        _tabController.animateTo(index);
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(14.w),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.15),
                    blurRadius: 4.w,
                    offset: Offset(0, 1.h),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 14.w,
              color: isSelected ? AppColors.blueDark : AppColors.white,
            ),
            SizedBox(width: 4.w),
            AppText.c1(
              label,
              fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
              fontSize: 12.sp,
              color: isSelected ? AppColors.blueDark : AppColors.white,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bufopia/shared/exception/base/app_exception.dart';

/// DeviceException - Lỗi liên quan đến thiết bị, quyền truy cập, hoặc hệ thống
class DeviceException extends AppException {
  const DeviceException({
    required this.kind,
    this.rootException,
  }) : super(AppExceptionType.device);

  final DeviceExceptionKind kind;
  final Object? rootException;

  @override
  String toString() {
    return 'DeviceException: {kind: $kind, rootException: $rootException}';
  }
}

enum DeviceExceptionKind {
  /// Lỗi mở camera
  cameraOpenFailed,

  /// Không tìm thấy camera
  cameraNotFound,

  /// Lỗi chọn file/ảnh
  filePickerFailed,

  /// Lỗi mở settings
  settingsOpenFailed,

  /// Lỗi quyền truy cập (camera, storage, microphone, etc.)
  permissionDenied,

  /// Lỗi phát video
  videoPlaybackFailed,

  /// Lỗi upload file
  fileUploadFailed,

  /// Lỗi tải video
  videoDownloadFailed,

  /// Lỗi chuyển đổi video
  videoConversionFailed,

  /// Lỗi lưu file
  fileSaveFailed,

  /// Lỗi ghi âm (microphone recording)
  audioRecordingFailed,

  /// Lỗi phát audio
  audioPlaybackFailed,

  /// Không tìm thấy file audio
  audioFileNotFound,

  /// Lỗi thiết bị khác
  deviceError,
}

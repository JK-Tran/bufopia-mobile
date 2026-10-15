class UserNameGenerator {
  const UserNameGenerator._();

  /// Linh vật Bunny (Thỏ)
  static const String bunny = 'Bunny';
  static const String bunnyAvatar = 'assets/images/bunny-avatar.webp';

  /// Linh vật Pip (Cáo)
  static const String pip = 'Pip';
  static const String pipAvatar = 'assets/images/pip-avatar.webp';

  /// Lấy 5 ký tự cuối của UID để tạo mã định danh duy nhất không trùng lặp
  static String getUidSuffix(String uid) {
    if (uid.isEmpty) return '00001';
    final raw = uid.length >= 5 ? uid.substring(uid.length - 5) : uid;
    return raw.toUpperCase();
  }

  /// Sinh tên hiển thị theo linh vật và UID:
  /// ví dụ 'Bunny_OFOW2' hoặc 'Pip_OFOW2'
  static String generate(String mascot, String uid) {
    final suffix = getUidSuffix(uid);
    return '${mascot}_$suffix';
  }
}

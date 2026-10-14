/// Các model dữ liệu cho tính năng Social, Mời bạn & Phòng riêng của Word Chain
class WordChainSocialState {
  const WordChainSocialState({
    this.recent = const [],
    this.invitations = const [],
  });

  factory WordChainSocialState.fromJson(Map<String, dynamic> json) {
    return WordChainSocialState(
      recent:
          (json['recent'] as List<dynamic>?)
              ?.map((e) => WordChainRival.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      invitations:
          (json['invitations'] as List<dynamic>?)
              ?.map(
                (e) => WordChainInvitation.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );
  }

  final List<WordChainRival> recent;
  final List<WordChainInvitation> invitations;
}

class WordChainRival {
  const WordChainRival({
    required this.uid,
    required this.name,
    this.avatar,
    this.playedAt,
  });

  factory WordChainRival.fromJson(Map<String, dynamic> json) {
    return WordChainRival(
      uid: json['uid']?.toString() ?? '',
      name: json['name']?.toString() ?? 'Người chơi',
      avatar: json['avatar'] as String?,
      playedAt: (json['playedAt'] as num?)?.toInt(),
    );
  }

  final String uid;
  final String name;
  final String? avatar;
  final int? playedAt;
}

class WordChainInvitation {
  const WordChainInvitation({
    required this.id,
    required this.fromUid,
    required this.fromName,
    required this.roomCode,
    this.fromAvatar,
    this.activity = 'chain',
    this.language = 'vi',
    this.expiresAt = 0,
  });

  factory WordChainInvitation.fromJson(Map<String, dynamic> json) {
    return WordChainInvitation(
      id: json['id']?.toString() ?? '',
      fromUid: json['fromUid']?.toString() ?? '',
      fromName: json['fromName']?.toString() ?? 'Bạn bè',
      fromAvatar: json['fromAvatar'] as String?,
      roomCode: json['roomCode']?.toString() ?? '',
      activity: json['activity']?.toString() ?? 'chain',
      language: json['language']?.toString() ?? 'vi',
      expiresAt: (json['expiresAt'] as num?)?.toInt() ?? 0,
    );
  }

  final String id;
  final String fromUid;
  final String fromName;
  final String? fromAvatar;
  final String roomCode;
  final String activity;
  final String language;
  final int expiresAt;

  bool get isExpired =>
      expiresAt > 0 && expiresAt <= DateTime.now().millisecondsSinceEpoch;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_chain_social_models.freezed.dart';
part 'word_chain_social_models.g.dart';

/// Các model dữ liệu cho tính năng Social, Mời bạn & Phòng riêng của Word Chain
@freezed
abstract class WordChainSocialState with _$WordChainSocialState {
  const factory WordChainSocialState({
    @JsonKey(name: 'recent') @Default([]) List<WordChainRival> recent,
    @JsonKey(name: 'invitations')
    @Default([])
    List<WordChainInvitation> invitations,
  }) = _WordChainSocialState;

  const WordChainSocialState._();

  factory WordChainSocialState.fromJson(Map<String, dynamic> json) =>
      _$WordChainSocialStateFromJson(json);
}

@freezed
abstract class WordChainRival with _$WordChainRival {
  const factory WordChainRival({
    @JsonKey(name: 'uid') @Default('') String uid,
    @JsonKey(name: 'name') @Default('Người chơi') String name,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'playedAt') int? playedAt,
  }) = _WordChainRival;

  const WordChainRival._();

  factory WordChainRival.fromJson(Map<String, dynamic> json) =>
      _$WordChainRivalFromJson(json);
}

@freezed
abstract class WordChainInvitation with _$WordChainInvitation {
  const factory WordChainInvitation({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'fromUid') @Default('') String fromUid,
    @JsonKey(name: 'fromName') @Default('Bạn bè') String fromName,
    @JsonKey(name: 'roomCode') @Default('') String roomCode,
    @JsonKey(name: 'fromAvatar') String? fromAvatar,
    @JsonKey(name: 'activity') @Default('chain') String activity,
    @JsonKey(name: 'language') @Default('vi') String language,
    @JsonKey(name: 'expiresAt') @Default(0) int expiresAt,
  }) = _WordChainInvitation;

  const WordChainInvitation._();

  factory WordChainInvitation.fromJson(Map<String, dynamic> json) =>
      _$WordChainInvitationFromJson(json);

  bool get isExpired =>
      expiresAt > 0 && expiresAt <= DateTime.now().millisecondsSinceEpoch;
}

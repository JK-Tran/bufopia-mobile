import 'package:freezed_annotation/freezed_annotation.dart';

part 'skip_proposal_data.freezed.dart';
part 'skip_proposal_data.g.dart';

@freezed
abstract class SkipProposalData with _$SkipProposalData {
  const factory SkipProposalData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'proposalId') String? proposalId,
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'initiatorUid') String? initiatorUid,
    @JsonKey(name: 'initiatorName') String? initiatorName,
    @JsonKey(name: 'roundIndex') int? roundIndex,
    @JsonKey(name: 'expiresAt') int? expiresAt,
    @JsonKey(name: 'approvedUids') List<String>? approvedUids,
    @JsonKey(name: 'requiredUids') List<String>? requiredUids,
    @JsonKey(name: 'votes') Map<String, bool>? votes,
  }) = _SkipProposalData;

  const SkipProposalData._();

  factory SkipProposalData.fromJson(Map<String, dynamic> json) =>
      _$SkipProposalDataFromJson(json);

  String get effectiveId => id ?? proposalId ?? '';
}

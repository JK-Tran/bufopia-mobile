// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skip_proposal_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkipProposalData _$SkipProposalDataFromJson(Map<String, dynamic> json) =>
    _SkipProposalData(
      id: json['id'] as String?,
      proposalId: json['proposalId'] as String?,
      action: json['action'] as String?,
      initiatorUid: json['initiatorUid'] as String?,
      initiatorName: json['initiatorName'] as String?,
      roundIndex: (json['roundIndex'] as num?)?.toInt(),
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      approvedUids: (json['approvedUids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      requiredUids: (json['requiredUids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      votes: (json['votes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$SkipProposalDataToJson(_SkipProposalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'proposalId': instance.proposalId,
      'action': instance.action,
      'initiatorUid': instance.initiatorUid,
      'initiatorName': instance.initiatorName,
      'roundIndex': instance.roundIndex,
      'expiresAt': instance.expiresAt,
      'approvedUids': instance.approvedUids,
      'requiredUids': instance.requiredUids,
      'votes': instance.votes,
    };

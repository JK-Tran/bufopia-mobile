import 'package:bufopia/features/word_guess/data/models/skip_proposal_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/skip_proposal.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class SkipProposalDataMapper
    extends BaseDataMapper<SkipProposalData, SkipProposal> {
  const SkipProposalDataMapper();

  @override
  SkipProposal mapToEntity(SkipProposalData? data) {
    return SkipProposal(
      proposalId: data?.effectiveId ?? '',
      action: data?.action ?? 'skip',
      initiatorUid: data?.initiatorUid ?? '',
      initiatorName: data?.initiatorName ?? '',
      roundIndex: data?.roundIndex ?? 0,
      expiresAt: data?.expiresAt ?? 0,
      approvedUids: data?.approvedUids ?? const [],
      requiredUids: data?.requiredUids ?? const [],
      votes: data?.votes ?? const {},
    );
  }
}

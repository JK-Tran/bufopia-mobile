import 'package:bufopia/features/practice/data/models/contribution_data.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContributionDataMapper
    extends BaseDataMapper<ContributionData, Contribution> {
  const ContributionDataMapper();

  @override
  Contribution mapToEntity(ContributionData? data) {
    return Contribution(
      id: data?.id ?? '',
      wordEn: data?.wordEn ?? '',
      meaningVi: data?.meaningVi ?? '',
      topicId: data?.topicId ?? '',
      partOfSpeech: data?.partOfSpeech ?? '',
      phonetic: data?.phonetic ?? '',
      exampleEn: data?.exampleEn ?? '',
      exampleVi: data?.exampleVi ?? '',
      status: data?.status ?? 'pending',
      reviewNote: data?.reviewNote,
      aiState: data?.aiState ?? '',
      createdAt: data?.createdAt,
    );
  }

  ContributionData mapToData(Contribution entity) {
    return ContributionData(
      id: entity.id,
      wordEn: entity.wordEn,
      meaningVi: entity.meaningVi,
      topicId: entity.topicId,
      partOfSpeech: entity.partOfSpeech,
      phonetic: entity.phonetic,
      exampleEn: entity.exampleEn,
      exampleVi: entity.exampleVi,
      status: entity.status,
      reviewNote: entity.reviewNote,
      aiState: entity.aiState,
      createdAt: entity.createdAt,
    );
  }

  List<Contribution> mapToEntityList(List<ContributionData>? list) {
    if (list == null) return const [];
    return list.map(mapToEntity).toList();
  }
}

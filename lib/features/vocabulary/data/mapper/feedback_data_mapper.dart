import 'package:bufopia/features/vocabulary/data/models/feedback_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/feedback.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class FeedbackDataMapper
    extends BaseDataMapper<FeedbackDataResponse, Feedback> {
  const FeedbackDataMapper();

  @override
  Feedback mapToEntity(FeedbackDataResponse? data) {
    return Feedback(
      success: data?.success ?? false,
      id: data?.feedback?.id,
      createdAt: data?.feedback?.createdAt,
      message: data?.message,
    );
  }
}

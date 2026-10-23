import 'dart:io';

import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';

abstract class PracticeRepository {
  /// Lấy toàn bộ tiến độ memory từ vựng của người chơi (profiles[0])
  Future<Map<String, WordMemory>> getProfiles({
    required String uid,
    String? token,
  });

  /// Lấy danh sách các từ có trạng thái 'Weak'
  Future<List<WordMemory>> getWeakWords({
    required String uid,
    String? token,
  });

  /// Lưu/cập nhật memory của 1 từ vựng lên server
  Future<bool> submitProfile({
    required String uid,
    required WordMemory memory,
    String? token,
  });

  /// Lưu/cập nhật danh sách memory từ vựng lên server
  Future<bool> submitProfiles({
    required String uid,
    required List<WordMemory> memories,
    String? token,
  });

  /// Lưu/cập nhật một danh sách memory từ vựng lên server (tự động merge an toàn)
  Future<bool> submitBatchProfiles({
    required String uid,
    required List<WordMemory> memories,
    String? token,
  });

  /// Tra cứu chi tiết từ vựng và câu ví dụ để auto-fill metadata
  Future<DictionaryDetail> getDictionaryDetail({
    required String word,
    String lexicon = 'chain-v3',
    int details = 1,
    int phonetics = 2,
    int meaning = 1,
  });

  /// Gửi file ghi âm để chấm điểm phát âm qua Azure Speech
  Future<PronunciationAssessment> assessPronunciation({
    required String uid,
    required File audioFile,
    required String referenceText,
    String language = 'en-US',
    String? token,
  });

  /// Lấy danh sách lịch sử đóng góp từ vựng của người dùng
  Future<List<Contribution>> getContributions({
    required String uid,
    String? token,
  });

  /// Gửi đóng góp từ vựng mới
  Future<Contribution> submitContribution({
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  });

  /// Chỉnh sửa và gửi lại đóng góp khi có trạng thái changes_requested
  Future<Contribution> updateContribution({
    required String id,
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  });
}

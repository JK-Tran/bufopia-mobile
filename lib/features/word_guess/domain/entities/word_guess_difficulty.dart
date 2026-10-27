/// Định nghĩa các cấp độ trình độ (Difficulty / Level) trong game Word Guess
/// Chuẩn hóa theo khung tham chiếu ngôn ngữ chung Châu Âu (CEFR)
/// - easy: Dễ (A1 - A2) - Từ vựng cơ bản, ngắn, phổ biến hàng ngày
/// - medium: Vừa (A2 - B1) - Từ vựng trung cấp thông dụng (Mặc định)
/// - hard: Khó (B2 - C1) - Từ vựng nâng cao, học thuật, từ dài
enum WordGuessDifficulty {
  easy('easy', 'Dễ (A1 - A2)', 'Cơ bản, ngắn, phổ biến'),
  medium('medium', 'Vừa (A2 - B1)', 'Trung cấp thông dụng'),
  hard('hard', 'Khó (B2 - C1)', 'Nâng cao, học thuật');

  const WordGuessDifficulty(this.key, this.label, this.shortDesc);

  final String key;
  final String label;
  final String shortDesc;

  static WordGuessDifficulty fromKey(String? key) {
    final cleanKey = (key ?? '').toLowerCase().trim();
    return WordGuessDifficulty.values.firstWhere(
      (e) => e.key == cleanKey,
      orElse: () => WordGuessDifficulty.medium,
    );
  }
}

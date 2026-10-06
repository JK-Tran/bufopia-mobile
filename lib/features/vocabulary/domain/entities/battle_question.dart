/// Dữ liệu câu hỏi đối kháng từ vựng
class BattleQuestion {
  const BattleQuestion({
    required this.vietnamese,
    required this.correctEnglish,
    required this.optionsP1,
    required this.optionsP2,
    this.topic,
  });

  final String vietnamese;
  final String correctEnglish;
  final List<String> optionsP1;
  final List<String> optionsP2;
  final String? topic;
}

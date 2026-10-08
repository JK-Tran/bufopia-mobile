import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback_word_list_item.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackWordEntry {
  const FeedbackWordEntry({
    required this.word,
    this.gameMode = 'Đấu từ',
  });

  final Word word;
  final String gameMode;
}

class FeedbackWordList extends StatefulWidget {
  const FeedbackWordList({
    required this.entries,
    required this.onSelectWord,
    this.onPlayAudio,
    this.onSearchAllVocabulary,
    this.isFullDictionaryMode = false,
    super.key,
  });

  final List<FeedbackWordEntry> entries;
  final ValueChanged<FeedbackWordEntry> onSelectWord;
  final ValueChanged<Word>? onPlayAudio;
  final VoidCallback? onSearchAllVocabulary;
  final bool isFullDictionaryMode;

  @override
  State<FeedbackWordList> createState() => _FeedbackWordListState();
}

class _FeedbackWordListState extends State<FeedbackWordList> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedMode = 'Tất cả';
  String _searchQuery = '';

  static const List<String> _modes = [
    'Tất cả',
    'Nối từ',
    'Đấu từ',
    'Đoán từ',
    'Ôn tập',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<FeedbackWordEntry> get _filteredEntries {
    return widget.entries.where((entry) {
      // 1. Lọc theo game mode
      if (_selectedMode != 'Tất cả' && entry.gameMode != _selectedMode) {
        return false;
      }

      // 2. Lọc theo query (en, vi, topic)
      if (_searchQuery.isNotEmpty) {
        final q = _searchQuery.toLowerCase().trim();
        final en = entry.word.en.toLowerCase();
        final vi = entry.word.vi.toLowerCase();
        final topic = entry.word.topic.toLowerCase();
        return en.contains(q) || vi.contains(q) || topic.contains(q);
      }

      return true;
    }).toList();
  }

  int _countForMode(String mode) {
    if (mode == 'Tất cả') return widget.entries.length;
    return widget.entries.where((e) => e.gameMode == mode).length;
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredEntries;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 1. Ô tìm kiếm full width
        Container(
          height: 30.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: AppColors.feedbackSandBorder,
              width: 1.w,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                size: 16.r,
                color: AppColors.feedbackTextBrown,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.paperTextDark,
                    fontFamily: 'Inter',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Tìm từ tiếng Anh, tiếng Việt...',
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.darkOnSurfaceVariant,
                      fontFamily: 'Inter',
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (val) {
                    setState(() {
                      _searchQuery = val;
                    });
                  },
                ),
              ),
              if (_searchQuery.isNotEmpty)
                GestureDetector(
                  onTap: () {
                    _searchController.clear();
                    setState(() {
                      _searchQuery = '';
                    });
                  },
                  child: Icon(
                    Icons.cancel_rounded,
                    size: 16.r,
                    color: AppColors.darkOnSurfaceVariant,
                  ),
                ),
            ],
          ),
        ),

        SizedBox(height: 6.h),

        // 2. Dãy chip lọc chế độ chơi cuộn ngang
        SizedBox(
          height: 26.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _modes.length,
            separatorBuilder: (_, _) => SizedBox(width: 6.w),
            itemBuilder: (context, index) {
              final mode = _modes[index];
              final isSelected = _selectedMode == mode;
              final count = _countForMode(mode);
              return GestureDetector(
                onTap: () => setState(() => _selectedMode = mode),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.feedbackMossGreen
                        : AppColors.feedbackWarmBeigeDark,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.feedbackMossGreenDark
                          : AppColors.feedbackSandBorder,
                      width: 1.w,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: AppText.c1(
                    '$mode ($count)',
                    fontSize: 10.sp,
                    fontWeight: isSelected ? FontWeight.w700 : null,
                    color: isSelected
                        ? AppColors.white
                        : AppColors.paperBadgeText,
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 6.h),

        // 3. Lưới danh sách các thẻ từ vựng (2 cột chuẩn portrait)
        Expanded(
          child: filtered.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_off_rounded,
                        size: 32.r,
                        color: AppColors.darkOnSurfaceVariant,
                      ),
                      SizedBox(height: 4.h),
                      AppText.b2(
                        'Không tìm thấy từ vựng phù hợp!',
                        color: AppColors.grayMedium,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                )
              : ListView.separated(
                  padding: EdgeInsets.only(bottom: 4.h),
                  itemCount: filtered.length,
                  separatorBuilder: (_, _) => SizedBox(height: 6.h),
                  itemBuilder: (context, index) {
                    final item = filtered[index];
                    return FeedbackWordListItem(
                      word: item.word,
                      gameMode: item.gameMode,
                      onReport: () => widget.onSelectWord(item),
                      onPlayAudio: () => widget.onPlayAudio?.call(item.word),
                    );
                  },
                ),
        ),

        // 3. Dòng link footer mở rộng toàn bộ từ điển (Dùng AppText, 1 dòng)
        if (!widget.isFullDictionaryMode)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Center(
              child: GestureDetector(
                onTap: widget.onSearchAllVocabulary,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_book_outlined,
                      size: 12.r,
                      color: AppColors.feedbackMossGreen,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      'Không thấy từ trong lịch sử?'
                      ' Nhấn để tìm trong toàn bộ từ điển',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.feedbackMossGreen,
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

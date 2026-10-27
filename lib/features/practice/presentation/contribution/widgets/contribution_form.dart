import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContributionForm extends StatefulWidget {
  const ContributionForm({
    required this.isPaperTheme,
    required this.isSubmitting,
    required this.onSubmit,
    this.initialContribution,
    this.autofilledDetail,
    this.onWordBlur,
    super.key,
  });

  final bool isPaperTheme;
  final bool isSubmitting;
  final Contribution? initialContribution;
  final DictionaryDetail? autofilledDetail;
  final ValueChanged<String>? onWordBlur;
  final void Function({
    required String wordEn,
    required String meaningVi,
    required String topicId,
    required String partOfSpeech,
    required String phonetic,
    required String exampleEn,
    required String exampleVi,
    String? editingId,
  })
  onSubmit;

  @override
  State<ContributionForm> createState() => _ContributionFormState();
}

class _ContributionFormState extends State<ContributionForm> {
  final _formKey = GlobalKey<FormState>();
  final _wordEnController = TextEditingController();
  final _meaningViController = TextEditingController();
  final _phoneticController = TextEditingController();
  final _exampleEnController = TextEditingController();
  final _exampleViController = TextEditingController();
  final _wordFocusNode = FocusNode();

  String _selectedTopic = 'daily';
  String _selectedPartOfSpeech = 'noun';
  String? _editingId;

  static const _partOfSpeechIds = {
    'noun',
    'verb',
    'adjective',
    'adverb',
    'phrase',
    'other',
  };

  @override
  void initState() {
    super.initState();
    _wordFocusNode.addListener(_onWordFocusChange);
    _populateInitialData();
  }

  @override
  void didUpdateWidget(ContributionForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialContribution != oldWidget.initialContribution &&
        widget.initialContribution != null) {
      _populateInitialData();
    }

    if (widget.autofilledDetail != oldWidget.autofilledDetail &&
        widget.autofilledDetail != null) {
      _applyAutofilledDetail(widget.autofilledDetail!);
    }
  }

  void _populateInitialData() {
    final c = widget.initialContribution;
    if (c != null) {
      _editingId = c.id;
      _wordEnController.text = c.wordEn;
      _meaningViController.text = c.meaningVi;
      _phoneticController.text = c.phonetic;
      _exampleEnController.text = c.exampleEn;
      _exampleViController.text = c.exampleVi;
      if (c.topicId.isNotEmpty) _selectedTopic = c.topicId;
      if (c.partOfSpeech.isNotEmpty) _selectedPartOfSpeech = c.partOfSpeech;
    }
  }

  void _applyAutofilledDetail(DictionaryDetail detail) {
    if (!detail.valid) return;
    if (_phoneticController.text.trim().isEmpty && detail.phonetic.isNotEmpty) {
      _phoneticController.text = detail.phonetic;
    }
    if (_meaningViController.text.trim().isEmpty && detail.meaning.isNotEmpty) {
      _meaningViController.text = detail.meaning;
    }
    if (_exampleEnController.text.trim().isEmpty && detail.example.isNotEmpty) {
      _exampleEnController.text = detail.example;
    }
    if (_exampleViController.text.trim().isEmpty &&
        detail.exampleTranslation.isNotEmpty) {
      _exampleViController.text = detail.exampleTranslation;
    }
    if (detail.partOfSpeech.isNotEmpty) {
      final pos = detail.partOfSpeech.toLowerCase();
      if (_partOfSpeechIds.contains(pos)) {
        setState(() => _selectedPartOfSpeech = pos);
      }
    }
  }

  void _onWordFocusChange() {
    if (!_wordFocusNode.hasFocus) {
      final word = _wordEnController.text.trim();
      if (word.isNotEmpty) {
        widget.onWordBlur?.call(word);
      }
    }
  }

  @override
  void dispose() {
    _wordFocusNode.removeListener(_onWordFocusChange);
    _wordFocusNode.dispose();
    _wordEnController.dispose();
    _meaningViController.dispose();
    _phoneticController.dispose();
    _exampleEnController.dispose();
    _exampleViController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final wordEn = _wordEnController.text.trim();
    final meaningVi = _meaningViController.text.trim();

    if (wordEn.isEmpty) {
      AppToast.showWarning(context, context.l10n.pleaseEnterEnglishWord);
      return;
    }

    if (meaningVi.isEmpty) {
      AppToast.showWarning(context, context.l10n.pleaseEnterVietnameseMeaning);
      return;
    }

    widget.onSubmit(
      wordEn: wordEn,
      meaningVi: meaningVi,
      topicId: _selectedTopic,
      partOfSpeech: _selectedPartOfSpeech,
      phonetic: _phoneticController.text.trim(),
      exampleEn: _exampleEnController.text.trim(),
      exampleVi: _exampleViController.text.trim(),
      editingId: _editingId,
    );

    // Reset nếu không phải chế độ sửa
    if (_editingId == null) {
      _wordEnController.clear();
      _meaningViController.clear();
      _phoneticController.clear();
      _exampleEnController.clear();
      _exampleViController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = widget.isPaperTheme;

    final l10n = context.l10n;
    final topics = [
      {'id': 'daily', 'name': l10n.dailyLifeSubtitle},
      {'id': 'business', 'name': l10n.jobsSubtitle},
      {'id': 'toeic', 'name': l10n.toeicSubtitle},
      {'id': 'travel', 'name': l10n.travelSubtitle},
      {'id': 'technology', 'name': l10n.technologySubtitle},
      {'id': 'food', 'name': l10n.foodSubtitle},
      {'id': 'sports', 'name': l10n.sportsSubtitle},
      {'id': 'academic', 'name': l10n.academicSubtitle},
    ];

    final partsOfSpeech = [
      {'id': 'noun', 'name': l10n.posNoun},
      {'id': 'verb', 'name': l10n.posVerb},
      {'id': 'adjective', 'name': l10n.posAdjective},
      {'id': 'adverb', 'name': l10n.posAdverb},
      {'id': 'phrase', 'name': l10n.posPhrase},
      {'id': 'other', 'name': l10n.posUnknown},
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Tag & Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: isPaper
                        ? AppColors.levelBadgeBg
                        : AppColors.orange.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isPaper
                          ? AppColors.levelBadgeBorder
                          : AppColors.orange,
                    ),
                  ),
                  child: AppText.c1(
                    _editingId != null
                        ? l10n.editWordBadge
                        : l10n.newContributionBadge,
                    color: isPaper
                        ? AppColors.levelBadgeText
                        : AppColors.orangeDark,
                    fontWeight: FontWeight.w700,
                    fontSize: 10.sp,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: isPaper
                        ? AppColors.paperSurface
                        : AppColors.lightBackground,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isPaper
                          ? AppColors.paperBorder
                          : AppColors.grayLight,
                    ),
                  ),
                  child: AppText.c1(
                    l10n.dailyContributionLimit(10),
                    color: isPaper
                        ? AppColors.paperTextMuted
                        : AppColors.grayMedium,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),

            SizedBox(height: 6.h),

            AppText.t2(
              _editingId != null
                  ? l10n.editContributedWord
                  : l10n.addAnEnglishWord,
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              fontWeight: FontWeight.w700,
            ),

            SizedBox(height: 12.h),

            // Row 1: English word & Vietnamese meaning
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    controller: _wordEnController,
                    focusNode: _wordFocusNode,
                    label: l10n.englishWordField,
                    hint: 'example',
                    isPaper: isPaper,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: _buildTextField(
                    controller: _meaningViController,
                    label: l10n.vietnameseMeaningField,
                    hint: 'ví dụ',
                    isPaper: isPaper,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            // Row 2: Topic & Part of speech dropdowns
            Row(
              children: [
                Expanded(
                  child: _buildDropdown(
                    label: l10n.topicField,
                    value: _selectedTopic,
                    items: topics,
                    isPaper: isPaper,
                    onChanged: (val) {
                      if (val != null) setState(() => _selectedTopic = val);
                    },
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: _buildDropdown(
                    label: l10n.partOfSpeechField,
                    value: _selectedPartOfSpeech,
                    items: partsOfSpeech,
                    isPaper: isPaper,
                    onChanged: (val) {
                      if (val != null) {
                        setState(() => _selectedPartOfSpeech = val);
                      }
                    },
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            // Row 3: Phonetic transcription
            _buildTextField(
              controller: _phoneticController,
              label: l10n.phoneticField,
              hint: '/ɪɡˈzæm.pəl/',
              isPaper: isPaper,
            ),

            SizedBox(height: 10.h),

            // Row 4: Example in English
            _buildTextField(
              controller: _exampleEnController,
              label: l10n.exampleSentenceField,
              hint: l10n.exampleSentenceHint,
              isPaper: isPaper,
              maxLines: 2,
            ),

            SizedBox(height: 10.h),

            // Row 5: Example translation
            _buildTextField(
              controller: _exampleViController,
              label: l10n.exampleTranslationField,
              hint: l10n.exampleTranslationHint,
              isPaper: isPaper,
              maxLines: 2,
            ),

            SizedBox(height: 12.h),

            // Info note
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: isPaper
                    ? AppColors.paperSurfaceWarm
                    : AppColors.lightBackground,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    size: 16.r,
                    color: isPaper ? AppColors.paperTextMuted : AppColors.blue,
                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: AppText.c1(
                      l10n.contributionGuidelines,
                      color: isPaper
                          ? AppColors.paperTextMuted
                          : AppColors.grayMedium,
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),

            // Submit Button
            AppButton(
              text: widget.isSubmitting
                  ? l10n.submitting
                  : (_editingId != null
                        ? l10n.saveChanges
                        : l10n.submitContribution),
              icon: const Icon(Icons.send_rounded),
              isLoading: widget.isSubmitting,
              onPressed: widget.isSubmitting ? null : _handleSubmit,
              height: 44.h,
              backgroundColor: isPaper
                  ? AppColors.paperGreen
                  : AppColors.greenDark,
              borderColor: isPaper
                  ? AppColors.paperGreenBorder
                  : AppColors.greenLight,
              extrusionColor: isPaper
                  ? AppColors.paperGreenExtrusion
                  : AppColors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required bool isPaper,
    FocusNode? focusNode,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.c1(
          label,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 4.h),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: 12.sp,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            ),
            filled: true,
            fillColor: isPaper ? AppColors.paperSurface : AppColors.white,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 8.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: isPaper ? AppColors.paperGreen : AppColors.blue,
                width: 1.5.w,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required List<Map<String, String>> items,
    required bool isPaper,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.c1(
          label,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 4.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperSurface : AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              dropdownColor: isPaper ? AppColors.paperCardBg : AppColors.white,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 18.r,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              style: TextStyle(
                fontSize: 12.sp,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              items: items.map((item) {
                return DropdownMenuItem<String>(
                  value: item['id'],
                  child: Text(
                    item['name']!,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}

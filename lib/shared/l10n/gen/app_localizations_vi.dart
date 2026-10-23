// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get counterAppBarTitle => 'Bộ đếm';

  @override
  String get navHome => 'Khám phá';

  @override
  String get navMap => 'Bản đồ';

  @override
  String get navChat => 'Tin nhắn';

  @override
  String get navProfile => 'Cá nhân';

  @override
  String get unknownError => 'Đã xảy ra lỗi không xác định';

  @override
  String get networkError => 'Lỗi kết nối mạng. Vui lòng kiểm tra lại đường truyền.';

  @override
  String get timeoutError => 'Kết nối quá thời gian chờ. Vui lòng thử lại.';

  @override
  String get sessionExpiredError => 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập lại.';

  @override
  String get unauthorizedError => 'Không có quyền truy cập. Vui lòng đăng nhập.';

  @override
  String get forbiddenError => 'Truy cập bị từ chối.';

  @override
  String get notFoundError => 'Không tìm thấy dữ liệu yêu cầu.';

  @override
  String get serverError => 'Lỗi máy chủ. Vui lòng thử lại sau.';

  @override
  String get year => 'năm trước';

  @override
  String get month => 'tháng trước';

  @override
  String get day => 'ngày trước';

  @override
  String get hour => 'giờ trước';

  @override
  String get minute => 'phút trước';

  @override
  String get justNow => 'Vừa xong';

  @override
  String get ok => 'Đồng ý';

  @override
  String get cancel => 'Hủy bỏ';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get close => 'Đóng';

  @override
  String get save => 'Lưu';

  @override
  String get back => 'Quay lại';

  @override
  String get loading => 'Đang tải...';

  @override
  String get success => 'Thành công';

  @override
  String get error => 'Lỗi';

  @override
  String get retry => 'Thử lại';

  @override
  String get quit => 'Thoát';

  @override
  String get home => 'Về trang chủ';

  @override
  String get playAgain => 'Chơi lại';

  @override
  String get rematch => 'Tái đấu';

  @override
  String get rematchNow => 'Tái đấu ngay';

  @override
  String get waiting => 'Đang chờ...';

  @override
  String get unlock => 'Mở khóa';

  @override
  String get playNow => 'CHƠI NGAY';

  @override
  String get practice => 'LUYỆN TẬP';

  @override
  String get explore => 'KHÁM PHÁ';

  @override
  String get startNow => 'BẮT ĐẦU NGAY';

  @override
  String get nextWord => 'Từ tiếp theo';

  @override
  String get finishReview => 'Hoàn thành ôn tập';

  @override
  String get loginRequired => 'CẦN ĐĂNG NHẬP';

  @override
  String get onState => 'ĐANG BẬT';

  @override
  String get offState => 'ĐÃ TẮT';

  @override
  String get profileBtn => 'HỒ SƠ';

  @override
  String get diffEasy => 'Dễ';

  @override
  String get diffMedium => 'Trung bình';

  @override
  String get diffHard => 'Nâng cao';

  @override
  String get multiTopic => 'Đa chủ đề';

  @override
  String wordsCount(int count) {
    return '$count từ';
  }

  @override
  String roundBadge(int current, int total) {
    return 'VÒNG $current / $total';
  }

  @override
  String get leaveBattle => 'Rời trận';

  @override
  String get menuQuizTitle => 'Trắc nghiệm';

  @override
  String get menuQuizSubtitle => 'Chọn chủ đề hoặc đấu ngẫu nhiên';

  @override
  String get menuWordChainTitle => 'Nối từ';

  @override
  String get menuWordChainSubtitle => 'Nối từ tự do, học phát âm và ngữ cảnh';

  @override
  String get menuWordGuessTitle => 'Đoán từ khuyết';

  @override
  String get menuWordGuessSubtitle => 'Đoán từ bí ẩn điền vào ô trống';

  @override
  String get menuStudyHubTitle => 'Góc luyện tập';

  @override
  String get menuStudyHubSubtitle => 'Ôn tập và nơi lưu trữ kiến thức';

  @override
  String get settingsTitle => 'Cài đặt trò chơi';

  @override
  String get account => 'Tài khoản';

  @override
  String guestNotLinked(String name) {
    return 'Khách: $name (Chưa liên kết Google)';
  }

  @override
  String accountLinked(String name) {
    return 'Tài khoản: $name';
  }

  @override
  String get viewProfile => 'Xem hồ sơ';

  @override
  String get logIn => 'ĐĂNG NHẬP';

  @override
  String get logOut => 'ĐĂNG XUẤT';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSubtitle => 'Ngôn ngữ hiển thị của trò chơi';

  @override
  String get theme => 'Giao diện';

  @override
  String get themeSubtitle => 'Đổi phong cách hiển thị';

  @override
  String get music => 'Nhạc nền';

  @override
  String get musicSubtitle => 'Bật / tắt âm nhạc trong game';

  @override
  String get soundEffects => 'Hiệu ứng âm thanh';

  @override
  String get soundEffectsSubtitle => 'Bật / tắt tiếng bấm, lật thẻ, kết quả';

  @override
  String get feedback => 'Đóng góp ý kiến';

  @override
  String get feedbackSubtitle => 'Góp ý hoặc báo lỗi câu hỏi';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get privacyPolicySubtitle => 'Điều khoản và bảo mật người dùng';

  @override
  String get logoutConfirmTitle => 'Đăng xuất tài khoản';

  @override
  String get logoutConfirmMessage => 'Bạn có chắc chắn muốn đăng xuất?';

  @override
  String get playerProfile => 'Hồ sơ người chơi';

  @override
  String get studyStreak => 'Chuỗi học';

  @override
  String get winStreak => 'Chuỗi thắng';

  @override
  String level(int level) {
    return 'Cấp độ $level';
  }

  @override
  String get copyPlayerId => 'Sao chép ID';

  @override
  String get copiedPlayerId => 'Đã sao chép ID người chơi!';

  @override
  String get profileUpdated => 'Cập nhật hồ sơ thành công!';

  @override
  String get avatarUpdated => 'Đã cập nhật ảnh đại diện!';

  @override
  String get editName => 'Đổi tên';

  @override
  String get saveChanges => 'LƯU THAY ĐỔI';

  @override
  String get enterPlayerName => 'Nhập tên người chơi';

  @override
  String get chooseCompanion => 'CHỌN BẠN ĐỒNG HÀNH';

  @override
  String get companionSubtitle => 'Chọn bạn đồng hành bạn yêu thích nhất';

  @override
  String get studyHubTitle => 'GÓC LUYỆN TẬP';

  @override
  String get studyHubFooter => '⭐ Tự động lưu tiến độ & Cải thiện phản xạ ⭐';

  @override
  String get reviewWeakWords => 'Ôn lại từ yếu';

  @override
  String get reviewWeakWordsSubtitle => 'Luyện tập các từ trả lời sai hoặc phản xạ chậm';

  @override
  String get contributeVocab => 'Đóng góp từ vựng';

  @override
  String get contributeVocabSubtitle => 'Làm giàu kho từ cùng cộng đồng Bufopia';

  @override
  String get badgeNew => 'MỚI';

  @override
  String get feedbackReport => 'Góp ý & Báo lỗi';

  @override
  String get feedbackReportSubtitle => 'Gửi phản hồi giúp cải thiện trải nghiệm game';

  @override
  String get badgeFeedback => 'GÓP Ý';

  @override
  String get chooseGameMode => 'CHỌN CHẾ ĐỘ CHƠI';

  @override
  String get chooseTopicTitle => 'Chọn Nội Dung';

  @override
  String get chooseTopicSubtitle => 'Chọn một chủ đề thi đấu';

  @override
  String get modeFooterVocab => '⭐ Chọn chế độ để bắt đầu so tài từ vựng ⭐';

  @override
  String get modeFooterGuess => '⭐ Chọn chế độ để bắt đầu đoán từ vựng ⭐';

  @override
  String get battleWithBot => 'Đấu với máy';

  @override
  String get battleWithBotDesc => 'Rèn luyện phản xạ từ vựng cùng AI Bot';

  @override
  String get duel2Players => 'Đấu 2 người';

  @override
  String get duel2PlayersDesc => 'Chơi đối kháng trên cùng một thiết bị';

  @override
  String get randomMatchmaking => 'Ghép cặp ngẫu nhiên';

  @override
  String get randomMatchmakingDesc => 'Tìm đối thủ trực tuyến trên toàn cầu';

  @override
  String get challengeById => 'Thách đấu ID';

  @override
  String get challengeByIdDesc => 'Tạo hoặc vào phòng riêng với bạn bè';

  @override
  String get wordChainModeTitle => 'CHỌN CÁCH LUYỆN\nNỐI TỪ';

  @override
  String get threeModesBadge => '3 CÁCH LUYỆN';

  @override
  String get onePlayerBadge => '1 NGƯỜI';

  @override
  String get findFriendBadge => 'TÌM BẠN';

  @override
  String get twoPlayersBadge => '2 NGƯỜI';

  @override
  String get practiceBot => 'Luyện với máy';

  @override
  String get practiceBotDesc => 'Rèn luyện phản xạ từ vựng cùng Bot';

  @override
  String get practiceOnline => 'Luyện cùng online';

  @override
  String get practiceOnlineDesc => 'Ghép trận ngẫu nhiên cùng người chơi';

  @override
  String get inviteFriends => 'Mời bạn';

  @override
  String get inviteFriendsDesc => 'Tạo phòng riêng so tài cùng bạn bè';

  @override
  String get timedPractice => 'LUYỆN TÍNH GIỜ';

  @override
  String get relaxedPractice => 'LUYỆN THƯ GIÃN';

  @override
  String get soloPractice => 'Luyện tập một mình';

  @override
  String get soloPracticeDesc => 'Đoán từ thư giãn nâng cao vốn từ';

  @override
  String get onlineMatch => 'Đấu trực tuyến';

  @override
  String get onlineMatchDesc => 'Ghép cặp so tài đoán từ nhanh';

  @override
  String get customRoom => 'Phòng riêng';

  @override
  String get customRoomDesc => 'Mời bạn bè cùng tham gia so tài';

  @override
  String get findingOpponent => 'ĐANG TÌM ĐỐI THỦ...';

  @override
  String get opponentFound => '🎉 ĐÃ TÌM THẤY ĐỐI THỦ!';

  @override
  String opponentFoundRival(String name) {
    return '🎉 ĐÃ TÌM THẤY: $name!';
  }

  @override
  String get cancelMatchmaking => 'HỦY TÌM TRẬN';

  @override
  String get enteringMatch => 'VÀO TRẬN NGAY...';

  @override
  String get battleRoom => 'PHÒNG THI ĐẤU';

  @override
  String get enterCodeTab => 'NHẬP MÃ';

  @override
  String get createRoomTab => 'TẠO PHÒNG';

  @override
  String get roomCode => 'Mã phòng';

  @override
  String get enterRoomCode => 'Nhập mã phòng 6 chữ số';

  @override
  String get joinRoom => 'Vào phòng';

  @override
  String get createRoom => 'Tạo phòng';

  @override
  String get matchResults => 'KẾT QUẢ TRẬN ĐẤU';

  @override
  String get victory => '🎉 CHIẾN THẮNG!';

  @override
  String get defeat => '😢 THUA CUỘC!';

  @override
  String get draw => '🤝 HÒA NHAU!';

  @override
  String playerWins(String name) {
    return '🎉 $name THẮNG!';
  }

  @override
  String get botOpponent => 'Bot';

  @override
  String get humanOpponent => 'Đối thủ';

  @override
  String get player2 => 'Người chơi 2';

  @override
  String get correctAnswers => 'Đã đoán đúng';

  @override
  String get xpEarned => 'Kinh nghiệm nhận được';

  @override
  String get opponentWantsRematch => 'Đối thủ muốn tái đấu cùng bạn!';

  @override
  String get leaderboardTitle => 'BẢNG XẾP HẠNG';

  @override
  String get leaderboardFooter => '⭐ Cùng học, cùng đấu và chinh phục vị trí dẫn đầu! ⭐';

  @override
  String get totalXp => 'Tổng XP';

  @override
  String get leaderboardWinStreak => 'Chuỗi thắng';

  @override
  String get leaderboardStudyStreak => 'Chuỗi học';

  @override
  String get chatWaiting => 'Đang chờ đối thủ...';

  @override
  String get chatHint => 'Nhắn cho bạn cùng luyện...';

  @override
  String get send => 'Gửi';

  @override
  String get accountConflictTitle => 'Xung đột tài khoản';

  @override
  String get accountConflictDefaultMsg => 'Tài khoản Google này đã có dữ liệu lưu trữ đám mây.';

  @override
  String get mergeData => 'HỢP NHẤT DỮ LIỆU';

  @override
  String get overwriteAccount => 'GHI ĐÈ TÀI KHOẢN';

  @override
  String get engToVie => 'ANH → VIỆT';

  @override
  String correctProgressSaved(String time) {
    return 'Chính xác! (${time}s) • Đã lưu tiến độ';
  }

  @override
  String get saveToVault => 'Lưu vào Kho';

  @override
  String get savingToVault => 'Đang lưu...';

  @override
  String get savedToVault => 'Đã lưu vào Kho từ vựng!';

  @override
  String get displayNameLabel => 'TÊN HIỂN THỊ';

  @override
  String get presetAvatars => 'Avatar có sẵn:';

  @override
  String get vocabWarrior => 'Chiến binh từ vựng';

  @override
  String get vocabWarriorSubtitle => 'Thắng trận đấu để nhận thêm điểm XP và nâng cấp danh hiệu!';

  @override
  String get levelProgress => 'TIẾN TRÌNH CẤP ĐỘ';

  @override
  String levelBadge(int level) {
    return 'CẤP $level';
  }

  @override
  String get saveProgressGoogle => 'LƯU TIẾN ĐỘ LÊN GOOGLE';

  @override
  String get logoutSuccess => 'Đã đăng xuất tài khoản!';

  @override
  String get enterNameHint => 'Nhập tên...';

  @override
  String get bunnyTag => 'Thỏ Tinh Anh';

  @override
  String get pipTag => 'Cáo Thông Thái';

  @override
  String get startWithBunny => 'BẮT ĐẦU VỚI BUNNY';

  @override
  String get startWithPip => 'BẮT ĐẦU VỚI PIP';

  @override
  String get welcomeChooseMascot => 'Chào mừng bạn đến với BuFoPia! Hãy chọn linh vật đại diện để bắt đầu hành trình từ vựng:';

  @override
  String welcomeUserReady(String name) {
    return 'Chào mừng $name đến với BuFoPia! Sẵn sàng so tài!';
  }

  @override
  String cannotUpdateMascot(String error) {
    return 'Không thể cập nhật linh vật: $error';
  }

  @override
  String get googleCloudSave => 'Bản lưu trên Google';

  @override
  String eloScore(int score) {
    return 'Điểm Elo: $score';
  }

  @override
  String matchesPlayed(int count) {
    return 'Số trận đã đấu: $count';
  }

  @override
  String lastActive(String time) {
    return 'Hoạt động gần nhất: $time';
  }

  @override
  String get mergeProgressRecommended => 'GỘP TIẾN ĐỘ (KHUYÊN DÙNG)';

  @override
  String get useCloudDataOverwrite => 'Dùng dữ liệu đám mây (Ghi đè)';

  @override
  String get weakWordsPractice => 'LUYỆN TẬP TỪ YẾU';

  @override
  String questionIndex(int current, int total) {
    return 'Câu $current/$total';
  }

  @override
  String get reviewCompletedMsg => 'Chúc mừng bạn đã hoàn thành bài ôn tập!';

  @override
  String get loginToSaveVault => 'Vui lòng đăng nhập để lưu từ vào kho cá nhân.';

  @override
  String savedWordToVault(String word) {
    return 'Đã lưu từ \"$word\" vào Kho của bạn!';
  }

  @override
  String get practiceSummary => 'TỔNG KẾT BUỔI LUYỆN';

  @override
  String get soloBadge => 'Luyện đơn';

  @override
  String get withFriendsBadge => 'Luyện cùng bạn';

  @override
  String get yourResults => 'KẾT QUẢ CỦA BẠN';

  @override
  String wordsFoundCount(int count) {
    return '$count từ đã tìm';
  }

  @override
  String get reviewWordsDesc => 'Xem kết quả và ôn lại những từ bạn đã gặp.';

  @override
  String get wordsFound => 'Bạn tìm được';

  @override
  String get wordsToReview => 'Từ cần ôn lại';

  @override
  String get addedToProfile => 'Đã cộng vào hồ sơ';

  @override
  String get resultsBoard => 'Bảng kết quả';

  @override
  String get you => 'Bạn';

  @override
  String get tiedScore => 'Điểm bằng nhau';

  @override
  String learnedWordsCount(int count) {
    return 'Các từ đã học ($count)';
  }

  @override
  String get skipped => 'Đã bỏ qua';

  @override
  String get saved => 'Đã lưu';

  @override
  String get suggestWordFeedback => 'Góp ý từ';

  @override
  String get practiceAgain => 'LUYỆN LẠI';

  @override
  String get changeTopic => 'ĐỔI CHỦ ĐỀ';

  @override
  String get chatExchange => 'TRAO ĐỔI';

  @override
  String get chatRoomOnlyToast => 'Tính năng trao đổi hoạt động trong phòng cùng bạn bè!';

  @override
  String get opponentLeftTitle => 'ĐỐI THỦ ĐÃ RỜI PHÒNG';

  @override
  String get honoraryVictory => 'CHIẾN THẮNG DANH DỰ! 🏆';

  @override
  String get opponentLeftMidwayDesc => 'Đối thủ đã thoát khỏi trận đấu giữa chừng.\nChiến thắng thuộc về bạn!';

  @override
  String get backToHome => 'VỀ TRANG CHỦ';

  @override
  String get oneVsOneRandom => '1 VS 1 NGẪU NHIÊN';

  @override
  String get roomOrInviteLink => 'Mã phòng hoặc link mời';

  @override
  String get enterCodeOrLinkHint => 'Nhập mã 6 số hoặc dán link mời';

  @override
  String get enterSharedCodeDesc => 'Nhập mã bạn bè đã chia sẻ.';

  @override
  String get createRoomPreDesc => 'Chọn chủ đề, thời gian rồi tạo phòng để mời bạn bè.';

  @override
  String get practiceDuration => 'Thời gian luyện';

  @override
  String minutesFormat(int minutes) {
    return '$minutes PHÚT';
  }

  @override
  String get copyCode => 'CHÉP MÃ';

  @override
  String get inviteLink => 'LINK MỜI';

  @override
  String get sendCodeOrLinkDesc => 'Gửi mã hoặc link này cho bạn bè để vào cùng phòng.';

  @override
  String membersCount(int count) {
    return 'Thành viên ($count)';
  }

  @override
  String get roomHost => 'Chủ phòng';

  @override
  String get ready => 'Đã sẵn sàng';

  @override
  String get preparing => 'Đang chuẩn bị';

  @override
  String get waitingFriendsMinPlayers => 'Đang chờ bạn bè vào phòng. Cần ít nhất 2 người để bắt đầu.';

  @override
  String get waitingFriendsReady => 'Đang chờ bạn bè sẵn sàng...';

  @override
  String get allReadyCanStart => 'Mọi người đã sẵn sàng! Bấm Bắt đầu để chơi.';

  @override
  String get guestReviewTopicGuidance => 'Xem chủ đề và thời gian, rồi bấm Sẵn sàng để chơi cùng bạn.';

  @override
  String get startGame => 'BẮT ĐẦU';

  @override
  String get readyBtn => 'SẴN SÀNG';

  @override
  String get cancelReadyBtn => 'HỦY SẴN SÀNG';

  @override
  String get leaveRoom => 'RỜI PHÒNG';

  @override
  String get randomPracticeTopic => 'Luyện ngẫu nhiên';

  @override
  String get earlyEndTitle => 'KẾT THÚC SỚM';

  @override
  String get surrenderConfirmDesc => 'Kết thúc sớm sẽ dừng lượt luyện và tính người còn lại dẫn đầu kết quả. Bạn chắc chứ?';

  @override
  String get stay => 'Ở LẠI';

  @override
  String get matchEnd => 'KẾT THÚC VÁN ĐẤU';

  @override
  String get opponentLivesDepleted => 'Đối thủ đã hết số mạng!';

  @override
  String get myLivesDepleted => 'Bạn đã hết số mạng!';

  @override
  String get opponentTimeout => 'Đối thủ đã hết thời gian!';

  @override
  String get myTimeout => 'Bạn đã hết thời gian!';

  @override
  String get opponentSurrendered => 'Đối thủ đã đầu hàng!';

  @override
  String get mySurrendered => 'Bạn đã kết thúc sớm ván đấu!';

  @override
  String get opponentAbandoned => 'Đối thủ đã thoát khỏi trận đấu!';

  @override
  String get victoryBelongsToYou => 'Chiến thắng thuộc về bạn!';

  @override
  String get betterLuckNextTime => 'Chúc bạn may mắn lần sau!';

  @override
  String get waitingForOpponent => 'ĐANG CHỜ ĐỐI PHƯƠNG...';

  @override
  String get rivalReady => 'ĐỐI THỦ ĐÃ SẴN SÀNG!';

  @override
  String get fastest => 'Nhanh nhất';

  @override
  String get accuracy => 'Chính xác';

  @override
  String get streak => 'Chuỗi';

  @override
  String get correct => 'Đúng';

  @override
  String get leaderBadge => 'DẪN ĐẦU';

  @override
  String remainingHearts(int count) {
    return 'Còn $count tim';
  }

  @override
  String leaderStreakChip(int streak) {
    return 'Chuỗi dẫn đầu: $streak';
  }

  @override
  String get onlinePracticePartner => 'Bạn cùng luyện online';

  @override
  String get leadingTurn => 'Dẫn đầu lượt luyện';

  @override
  String listenAndPracticeWord(String word) {
    return 'Lắng nghe & luyện phát âm từ \"$word\"!';
  }

  @override
  String get saveWordFailed => 'Lưu từ thất bại, vui lòng thử lại.';

  @override
  String get settings => 'Cài đặt';

  @override
  String get chat => 'Trò chuyện';

  @override
  String get player => 'Người chơi';

  @override
  String get anonymous => 'Ẩn danh';

  @override
  String get rank => 'HẠNG';

  @override
  String get matches => 'trận';

  @override
  String get days => 'ngày';

  @override
  String get enter => 'VÀO';

  @override
  String get maybeLater => 'ĐỂ SAU';

  @override
  String get loginGoogle => 'ĐĂNG NHẬP GOOGLE';

  @override
  String get loginPromptTitle => 'YÊU CẦU ĐĂNG NHẬP';

  @override
  String get loginToUnlock => 'Đăng nhập để mở khóa';

  @override
  String loginPromptDesc(String feature) {
    return 'Bạn đang chơi ở tài khoản Khách. Vui lòng đăng nhập Google để trải nghiệm $feature và lưu thành tích lên Bảng xếp hạng!';
  }

  @override
  String get defaultOnlineModeName => 'chế độ Thi đấu Online & Phòng riêng';

  @override
  String roundWithNumbers(int current, int total) {
    return 'VÒNG $current / $total';
  }

  @override
  String get leaveMatch => 'Rời trận';

  @override
  String get leaveMatchTitle => 'RỜI KHỎI TRẬN ĐẤU?';

  @override
  String get leaveMatchWarningSolo => '⚠️ Rời trận giữa chừng sẽ tính là bạn thua cuộc!';

  @override
  String get leaveMatchWarningMulti => '⚠️ Rời trận sẽ kết thúc ván đấu của cả 2 người chơi!';

  @override
  String get leaveMatchConfirm => 'Bạn có chắc chắn muốn rời khỏi trận đấu này không?';

  @override
  String get opponentLeftMatchTitle => 'ĐỐI THỦ ĐÃ RỜI TRẬN';

  @override
  String get matchEndedOpponentLeft => 'Trận đấu kết thúc do đối thủ rời phòng.';

  @override
  String get youLeftMatch => 'Bạn đã rời khỏi trận đấu.';

  @override
  String get exitedMatchTitle => 'ĐÃ THOÁT TRẬN';

  @override
  String get opponentLeftMatch => 'Đối thủ đã thoát khỏi trận đấu!';

  @override
  String get surrender => 'Đầu hàng';

  @override
  String get surrenderTitle => 'ĐẦU HÀNG';

  @override
  String get surrenderMessage => 'Đầu hàng sẽ tính bạn thua ván đấu này. Bạn có chắc không?';

  @override
  String get loadingData => 'ĐANG TẢI DỮ LIỆU...';

  @override
  String get waitingForOpponentReady => 'ĐANG CHỜ ĐỐI THỦ SẴN SÀNG...';

  @override
  String get waitingForOpponentToJoin => 'CHỜ ĐỐI THỦ VÀO...';

  @override
  String get createRoomNow => 'TẠO PHÒNG NGAY';

  @override
  String get creatingRoom => 'ĐANG TẠO PHÒNG...';

  @override
  String get copyCodeCaps => 'CHÉP MÃ';

  @override
  String get copyLinkCaps => 'CHÉP LINK';

  @override
  String recentOpponents(int count) {
    return '5 đối thủ gần nhất ($count)';
  }

  @override
  String get playOnlineToSaveOpponents => 'Chơi một trận online để lưu đối thủ tại đây.';

  @override
  String get playedRecently => 'Đã chơi gần đây';

  @override
  String get incomingInvitations => 'Lời mời đến';

  @override
  String get noNewInvitations => 'Chưa có lời mời mới.';

  @override
  String invitationCardDesc(String name, String roomCode) {
    return '$name mời vào phòng #$roomCode';
  }

  @override
  String get enterValid6DigitCode => 'Vui lòng nhập đúng mã phòng gồm 6 chữ số!';

  @override
  String get inviteCooldownWait => 'Chờ 10 giây trước khi gửi tiếp lời mời.';

  @override
  String get inviteSentSuccess => 'Đã gửi lời mời thi đấu thành công!';

  @override
  String get challengeRoomTitle => 'PHÒNG ĐẤU ONLINE';

  @override
  String get challengeRoomFooter => '⭐ Thách đấu từ vựng cùng bạn bè trực tuyến ⭐';

  @override
  String get wordChainTitle => 'Phòng nối từ';

  @override
  String get turnLabel => 'LƯỢT';

  @override
  String get yourTurn => 'Lượt của bạn';

  @override
  String get partnerTurn => 'Lượt bạn cùng luyện';

  @override
  String get relaxedUnlimited => 'Thư giãn (Không giới hạn)';

  @override
  String remainingSecondsFormat(int seconds) {
    return 'Còn ${seconds}s';
  }

  @override
  String get endTurn => 'Kết thúc';

  @override
  String yourTurnLetter(String letter) {
    return 'Đến lượt bạn — hãy nhập từ bắt đầu bằng $letter';
  }

  @override
  String get yourTurnAny => 'Đến lượt bạn — hãy nhập một từ bất kỳ để bắt đầu';

  @override
  String rivalThinking(String name) {
    return '$name đang nghĩ từ nối...';
  }

  @override
  String enterWordStartingWith(String letter) {
    return 'Nhập từ bắt đầu bằng $letter...';
  }

  @override
  String get enterWordToStart => 'Nhập từ tiếng Anh để bắt đầu...';

  @override
  String get startNewChain => 'Bắt đầu chuỗi từ mới';

  @override
  String get startNewChainDesc => 'Nhập một từ tiếng Anh bất kỳ để khởi động ván đấu!';

  @override
  String correctWordLabel(String word) {
    return 'Chính xác: $word';
  }

  @override
  String get wordChainRoomTitle => 'PHÒNG ĐẤU NỐI TỪ';

  @override
  String get wordChainRoomFooter => '⭐ Thách đấu nối từ cùng bạn bè trực tuyến ⭐';

  @override
  String get roomCreationNotConfirmed => 'Chưa nhận được xác nhận tạo phòng. Hãy thử lại.';

  @override
  String get roomCancelled => 'Đã hủy phòng thi đấu.';

  @override
  String invitationValidFor2Min(String name) {
    return 'Đã mời $name. Lời mời có hiệu lực trong 2 phút.';
  }

  @override
  String get wordGuess => 'Đoán từ khuyết';

  @override
  String get wordGuessRoomTitle => 'PHÒNG ĐOÁN TỪ';

  @override
  String get wordGuessVocab => 'Từ vựng Word Guess';

  @override
  String saveWordError(String error) {
    return 'Lỗi khi lưu từ: $error';
  }

  @override
  String feedbackSentForPlayer(String name) {
    return 'Đã gửi phản hồi về người chơi $name!';
  }

  @override
  String recentPartners(int count) {
    return '5 bạn cùng luyện gần nhất ($count)';
  }

  @override
  String get noRecentPartners => 'Chưa có bạn cùng luyện gần đây.';

  @override
  String get recentlyPracticed => 'Đã luyện gần đây';

  @override
  String practicedOnDate(int day, int month, int year) {
    return 'Đã luyện $day/$month/$year';
  }

  @override
  String get invite => 'Mời';

  @override
  String invitedPartner(String name) {
    return 'Đã gửi lời mời tới $name!';
  }

  @override
  String get roomCodeMinLength => 'Mã phòng phải có ít nhất 4 ký tự!';

  @override
  String get pleaseEnterRoomCode => 'Vui lòng nhập mã phòng hoặc dán link mời!';

  @override
  String get roomUnavailable => 'Phòng đoán từ không khả dụng hoặc đã kết thúc.';

  @override
  String joinRoomSuccess(String code) {
    return 'Đã vào phòng $code thành công!';
  }

  @override
  String joinRoomFailed(String error) {
    return 'Không thể vào phòng: $error';
  }

  @override
  String connectRoomFailed(String error) {
    return 'Không thể kết nối phòng: $error';
  }

  @override
  String get leftRoom => 'Đã rời phòng tạo.';

  @override
  String copiedRoomCode(String code) {
    return 'Đã chép mã phòng: $code';
  }

  @override
  String get copiedInviteLink => 'Đã chép liên kết mời!';

  @override
  String get matchmakingCancelled => 'Đã hủy tìm trận đấu.';

  @override
  String connectionError(String error) {
    return 'Lỗi kết nối: $error';
  }

  @override
  String findingTopic(String topic) {
    return 'ĐANG TÌM: $topic...';
  }

  @override
  String solvedCorrectlyPoint(String name) {
    return '$name đoán đúng · +1 điểm!';
  }

  @override
  String solvedFirst(String name) {
    return '$name đã đoán đúng trước';
  }

  @override
  String get greatJob => 'Tuyệt vời! 👍';

  @override
  String get plusGreat => '+ Tuyệt!';

  @override
  String get suggestSkipWord => 'Đồng đội đề xuất BỎ QUA từ này!';

  @override
  String get autoSkipCountdown => 'Tự động bỏ qua sau 5 giây nếu không ai từ chối';

  @override
  String get agree => 'Đồng ý';

  @override
  String get reject => 'Từ chối';

  @override
  String topicWithPlayers(String topic, int count) {
    return '$topic · $count người chơi';
  }

  @override
  String get translateToEnglish => 'DỊCH SANG TIẾNG ANH';

  @override
  String topicHeader(String topic) {
    return 'CHỦ ĐỀ: $topic';
  }

  @override
  String get choosingOption => 'Đang chọn...';

  @override
  String get thinkingOption => 'Đang nghĩ...';

  @override
  String get youColon => 'Bạn: ';

  @override
  String get opponentColon => 'Đối thủ: ';

  @override
  String get selectedBadge => 'Đã chọn';

  @override
  String get loadingVocabSet => 'ĐANG TẢI BỘ TỪ VỰNG...';

  @override
  String get weakWordsSRS => 'ÔN TẬP TỪ YẾU (SRS)';

  @override
  String get srsAlgorithmDesc => '⭐ Thuật toán Spaced Repetition tự động nhắc từ bạn hay quên ⭐';

  @override
  String get noWeakWordsTitle => 'Chưa có từ yếu nào cần ôn tập!';

  @override
  String get noWeakWordsSubtitle => 'Hãy tham gia Quick Battle để tích lũy và kiểm tra vốn từ!';

  @override
  String totalWordsInProfile(int count) {
    return 'Tổng cộng: $count từ trong hồ sơ ghi nhớ';
  }

  @override
  String get practiceNow => 'Luyện tập ngay';

  @override
  String familiarityInterval(int familiarity, int days) {
    return 'Quen thuộc: $familiarity/5 • Lặp lại: $days ngày';
  }

  @override
  String frequentlyForgotten(int count) {
    return 'Hay quên ($count)';
  }

  @override
  String get wellRemembered => 'Đã nhớ tốt';

  @override
  String chatWithRival(String name) {
    return 'Trò chuyện với $name';
  }

  @override
  String get noMessagesYet => 'Chưa có tin nhắn nào.\nHãy gửi lời chào đến bạn cùng chơi!';

  @override
  String get chatDefaultCheer => 'Cố lên nhé! Mình cùng luyện nối từ nào.';

  @override
  String get pronunciationScore => 'CHẤM ĐIỂM PHÁT ÂM';

  @override
  String get listenSampleAudio => 'Nghe giọng mẫu';

  @override
  String get accuracyMetric => 'Độ chính xác';

  @override
  String get fluencyMetric => 'Độ lưu loát';

  @override
  String get completenessMetric => 'Độ trọn vẹn';

  @override
  String get assessingPronunciation => 'Đang chấm điểm...';

  @override
  String get tapToAssess => 'Nhấn để kiểm tra phát âm';

  @override
  String get micInitFailed => 'Không thể khởi động ghi âm. Vui lòng thử lại!';

  @override
  String get pronScoreGood => 'Tốt';

  @override
  String get pronScoreFair => 'Tạm được';

  @override
  String get pronScoreWeak => 'Cần cải thiện';

  @override
  String get noWeakWordsToSave => 'Không có từ yếu nào cần lưu vào Kho!';

  @override
  String savedAllWeakWords(int count) {
    return 'Đã lưu toàn bộ $count từ cần ôn vào Kho của bạn!';
  }

  @override
  String get saveAllToVault => 'Lưu tất cả vào Kho';

  @override
  String get startPracticing => 'Bắt đầu luyện tập';

  @override
  String weakWordsList(int count) {
    return 'Danh sách $count từ cần ôn tập';
  }

  @override
  String get yourContributions => 'Đóng góp của bạn';

  @override
  String get contributionHistory => 'LỊCH SỬ';

  @override
  String get botMedium => 'BOT (VỪA)';

  @override
  String get calculatingReward => 'Đang tính thưởng & lưu kết quả...';

  @override
  String levelUpBanner(int oldLevel, int newLevel) {
    return 'LÊN CẤP! Lv.$oldLevel ➔ Lv.$newLevel';
  }

  @override
  String get waitingForRematchAccept => 'Đang đợi đối thủ đồng ý tái đấu...';

  @override
  String get leadPracticeRound => 'Dẫn đầu lượt luyện';

  @override
  String get cannotLoadLeaderboard => 'Không thể tải bảng xếp hạng';

  @override
  String get noLeaderboardData => 'Chưa có dữ liệu bảng xếp hạng';

  @override
  String get leaderboardFooterText => '⭐ Cùng học, cùng đấu và chinh phục vị trí dẫn đầu! ⭐';

  @override
  String get newContribution => 'Đóng góp mới';

  @override
  String get practiceWeakWordsTitle => 'LUYỆN TẬP TỪ YẾU';

  @override
  String questionProgress(int current, int total) {
    return 'Câu $current/$total';
  }

  @override
  String otherMeaning(int index) {
    return 'Nghĩa khác $index';
  }

  @override
  String get defaultGameDialogFooter => '⭐ Học vui mỗi ngày - Rèn luyện từ vựng tiếng Anh ⭐';

  @override
  String get feedbackFooter => '⭐ Ý kiến của bạn giúp Bufopia ngày một tốt hơn ⭐';

  @override
  String get privacyFooter => '⭐ Bufopia cam kết bảo vệ dữ liệu & quyền riêng tư ⭐';

  @override
  String get privacyPolicyTitle => 'CHÍNH SÁCH & ĐIỀU KHOẢN';

  @override
  String get privacyUnderstoodAgreed => 'TÔI ĐÃ HIỂU VÀ ĐỒNG Ý';

  @override
  String get historyWordsTab => 'Lịch sử từ đã chơi';

  @override
  String get generalFeedbackTab => 'Góp ý chung / Khác';

  @override
  String get feedbackQuestion => 'Bạn muốn Bufopia cải thiện điều gì?';

  @override
  String get feedbackCategoryIdea => 'Ý tưởng';

  @override
  String get feedbackCategoryBug => 'Báo lỗi app';

  @override
  String get feedbackCategoryFeature => 'Tính năng mới';

  @override
  String get feedbackCategoryUI => 'Giao diện & Âm thanh';

  @override
  String get feedbackCategoryOther => 'Khác';

  @override
  String get feedbackContent => 'Nội dung góp ý';

  @override
  String get feedbackContentHint => 'Mô tả ý tưởng, báo lỗi bạn gặp phải hoặc điểm bạn muốn game nâng cấp...';

  @override
  String get feedbackMinLength => 'Bạn vui lòng mô tả chi tiết hơn nhé — ít nhất 10 ký tự.';

  @override
  String get feedbackContact => 'Thông tin liên hệ (không bắt buộc)';

  @override
  String get feedbackContactHint => 'Email, Discord hoặc cách liên hệ khác...';

  @override
  String get sendFeedback => 'GỬI GÓP Ý';

  @override
  String get sendingFeedback => 'ĐANG GỬI...';

  @override
  String get feedbackThanks => 'Cảm ơn bạn đã đóng góp!';

  @override
  String feedbackWordReportSuccess(String word) {
    return 'Ý kiến chỉnh sửa từ vựng \'$word\' của bạn đã được chuyển tới Ban quản trị Bufopia để kiểm duyệt và cập nhật sớm nhất.';
  }

  @override
  String get feedbackGeneralSuccess => 'Góp ý của bạn đã được ghi nhận và sẽ giúp Bufopia hoàn thiện hơn mỗi ngày.';

  @override
  String get viewOtherWords => 'XEM TỪ KHÁC';

  @override
  String get sendOtherFeedback => 'GÓP Ý KHÁC';

  @override
  String get feedbackIssueMeaning => 'Sửa nghĩa tiếng Việt';

  @override
  String get feedbackIssueSpelling => 'Lỗi chính tả tiếng Anh';

  @override
  String get feedbackIssuePronunciation => 'Sửa phiên âm / phát âm';

  @override
  String get feedbackIssueContext => 'Nghĩa chưa tự nhiên / thiếu ngữ cảnh';

  @override
  String get feedbackIssueOther => 'Góp ý khác';

  @override
  String feedbackHintMeaning(String en, String vi) {
    return 'Ví dụ: Từ \'$en\' nên dịch là \'...\' thay vì \'$vi\' vì...';
  }

  @override
  String feedbackHintSpelling(String en) {
    return 'Ví dụ: Từ tiếng Anh \'$en\' viết đúng chính tả phải là...';
  }

  @override
  String feedbackHintPronunciation(String en) {
    return 'Ví dụ: Phiên âm đúng của \'$en\' nên là /.../';
  }

  @override
  String feedbackHintContext(String en) {
    return 'Mô tả ngữ cảnh phù hợp hơn cho từ \'$en\'...';
  }

  @override
  String feedbackHintOther(String en) {
    return 'Mô tả chi tiết góp ý chỉnh sửa của bạn cho từ \'$en\'...';
  }

  @override
  String get searchVocabularyHint => 'Tìm kiếm từ tiếng Anh, tiếng Việt, chủ đề...';

  @override
  String get report => 'Báo lỗi';

  @override
  String get noWordsFound => 'Không tìm thấy từ vựng phù hợp!';

  @override
  String get cannotFindWordInHistory => 'Không thấy từ trong lịch sử? Nhấn để tìm trong toàn bộ từ điển';

  @override
  String get allGameModes => 'Tất cả';

  @override
  String get wordChainMode => 'Nối từ';

  @override
  String get vocabBattleMode => 'Đấu từ';

  @override
  String get wordGuessMode => 'Đoán từ';

  @override
  String get reviewMode => 'Ôn tập';

  @override
  String streakDaysCount(int count) {
    return '$count ngày';
  }

  @override
  String streakMatchesCount(int count) {
    return '$count trận';
  }

  @override
  String get chooseAvatarTitle => 'Chọn ảnh đại diện';

  @override
  String get takePhoto => 'Chụp ảnh';

  @override
  String get openCamera => 'Mở máy ảnh';

  @override
  String get openGallery => 'Mở thư viện';

  @override
  String get photoGallery => 'Thư viện';

  @override
  String get chooseFromDevice => 'Chọn từ máy';

  @override
  String get photoGalleryTitle => 'Thư viện ảnh';

  @override
  String get photosTab => 'Ảnh';

  @override
  String get albumsTab => 'Album';

  @override
  String get cameraTile => 'Máy ảnh';

  @override
  String photosSelected(int count) {
    return '$count ảnh đã chọn';
  }

  @override
  String get tapPhotoToSelect => 'Chạm vào ảnh để chọn';

  @override
  String get nextButton => 'Tiếp theo';

  @override
  String get pickDirectlyFromStorage => 'Chọn ảnh trực tiếp từ bộ nhớ mà không cần cấp quyền.';

  @override
  String get noAlbumsFound => 'Không tìm thấy album';

  @override
  String albumPhotosCount(int count) {
    return '$count ảnh';
  }

  @override
  String get nameRequiredOnline => 'Vui lòng đặt tên hiển thị (2–25 ký tự) trước khi tham gia đấu Online!';

  @override
  String get nameInvalidNotice => 'Tên không hợp lệ. Vui lòng đặt từ 2–25 ký tự và không dùng tên mặc định.';

  @override
  String foundRivalEnteringMatch(String rivalName) {
    return 'Đã tìm thấy đối thủ $rivalName! Vào trận...';
  }

  @override
  String enteredRoomCode(String code) {
    return 'Đã vào phòng thi đấu #$code!';
  }

  @override
  String get randomBattle => 'Đấu ngẫu nhiên';

  @override
  String get autoTopicSubtitle => 'Hệ thống tự chọn chủ đề';

  @override
  String get dailyLifeSubtitle => 'Đời sống thường ngày';

  @override
  String get schoolSubtitle => 'Trường học & Học tập';

  @override
  String get travelSubtitle => 'Du lịch & Khám phá';

  @override
  String get foodSubtitle => 'Ẩm thực & Món ăn';

  @override
  String get familySubtitle => 'Gia đình & Mối quan hệ';

  @override
  String get bodySubtitle => 'Cơ thể & Sức khỏe';

  @override
  String get clothesSubtitle => 'Trang phục & Phụ kiện';

  @override
  String get shoppingSubtitle => 'Mua sắm & Tiền bạc';

  @override
  String get townSubtitle => 'Địa điểm thị trấn';

  @override
  String get directionsSubtitle => 'Phương hướng & Vị trí';

  @override
  String get jobsSubtitle => 'Nghề nghiệp & Nơi làm việc';

  @override
  String get hobbiesSubtitle => 'Sở thích & Thời gian rảnh';

  @override
  String get sportsSubtitle => 'Thể thao & Rèn luyện';

  @override
  String get animalsSubtitle => 'Động vật & Thú cưng';

  @override
  String get timeSubtitle => 'Thời gian & Ngày tháng';

  @override
  String get shapesSubtitle => 'Màu sắc & Hình khối';

  @override
  String get celebrationsSubtitle => 'Lễ hội & Ngày đặc biệt';

  @override
  String get feelingsSubtitle => 'Cảm xúc & Tính cách';

  @override
  String get environmentSubtitle => 'Môi trường & Tự nhiên';

  @override
  String get technologySubtitle => 'Công nghệ & Kỹ thuật số';

  @override
  String get communicationSubtitle => 'Giao tiếp & Kết nối';

  @override
  String get toeicSubtitle => 'Từ vựng TOEIC Công sở';

  @override
  String get ieltsSubtitle => 'Từ vựng IELTS Trọng tâm';

  @override
  String get topicVocabularySubtitle => 'Từ vựng chủ đề';

  @override
  String get privacyTab => 'Quyền riêng tư';

  @override
  String get termsTab => 'Điều khoản';

  @override
  String get cookiesTab => 'Cookie';

  @override
  String get deletionTab => 'Xóa dữ liệu';

  @override
  String get dataProtectionTag => 'Bảo vệ dữ liệu';

  @override
  String get codeOfConductTag => 'Văn hóa ứng xử';

  @override
  String get deviceStorageTag => 'Lưu trữ thiết bị';

  @override
  String get yourRightsTag => 'Quyền của bạn';

  @override
  String pointsCount(int count) {
    return '$count điểm';
  }

  @override
  String questionsCount(int count) {
    return '$count câu';
  }

  @override
  String get adjustPhoto => 'Căn chỉnh ảnh';

  @override
  String get done => 'Xong';

  @override
  String get cropPhotoInstruction => 'Dùng ngón tay kéo & phóng to để căn chỉnh ảnh vào khung vuông';

  @override
  String get findMatchOnline => 'TÌM TRẬN ONLINE';

  @override
  String get reviewVocabTitle => 'Ôn Từ Vựng';

  @override
  String get defaultPlayerName => 'Người Chơi';

  @override
  String get connectedStatus => 'Đã kết nối';

  @override
  String get wordsNeedReview => 'từ cần ôn';

  @override
  String get noWeakWordsReviewTitle => 'Tuyệt vời! Không có từ yếu nào cần ôn tập';

  @override
  String get noWeakWordsReviewSubtitle => 'Các từ bạn đã học đều đang trong trạng thái tốt.';

  @override
  String get wrongAnswer => 'Trả lời sai';

  @override
  String get slowResponse => 'Trả lời chậm';

  @override
  String get editWordBadge => 'CHỈNH SỬA TỪ';

  @override
  String get newContributionBadge => 'ĐÓNG GÓP MỚI';

  @override
  String dailyContributionLimit(int count) {
    return 'Tối đa $count từ/ngày';
  }

  @override
  String get addAnEnglishWord => 'Thêm một từ tiếng Anh';

  @override
  String get editContributedWord => 'Chỉnh sửa từ đóng góp';

  @override
  String get englishWordField => 'Từ tiếng Anh *';

  @override
  String get vietnameseMeaningField => 'Nghĩa tiếng Việt *';

  @override
  String get topicField => 'Chủ đề *';

  @override
  String get partOfSpeechField => 'Loại từ';

  @override
  String get phoneticField => 'Phiên âm';

  @override
  String get exampleSentenceField => 'Câu ví dụ tiếng Anh';

  @override
  String get exampleSentenceHint => 'Câu ví dụ phải chứa từ được đóng góp';

  @override
  String get exampleTranslationField => 'Dịch câu ví dụ';

  @override
  String get exampleTranslationHint => 'Bản dịch tiếng Việt';

  @override
  String get contributionGuidelines => 'Đóng góp sẽ được kiểm tra trước khi bổ sung vào kho từ. Hãy dùng nghĩa và ví dụ rõ ràng, không nhập thông tin cá nhân.';

  @override
  String get submitting => 'Đang gửi...';

  @override
  String get submitContribution => 'GỬI ĐÓNG GÓP';

  @override
  String get pleaseEnterEnglishWord => 'Vui lòng nhập từ tiếng Anh!';

  @override
  String get pleaseEnterVietnameseMeaning => 'Vui lòng nhập nghĩa tiếng Việt!';

  @override
  String nWordsCount(int count) {
    return '$count từ';
  }

  @override
  String get refreshAction => 'LÀM MỚI';

  @override
  String get noContributionsYet => 'Bạn chưa gửi từ nào. Hãy bắt đầu với một từ thật hữu ích nhé!';

  @override
  String get statusApproved => 'Đã duyệt';

  @override
  String get statusRejected => 'Từ chối';

  @override
  String get statusChangesRequested => 'Cần sửa đổi';

  @override
  String get statusPending => 'Chờ duyệt';

  @override
  String get reviewerFeedback => 'Nhận xét từ kiểm duyệt viên:';

  @override
  String get editAndResubmit => 'Sửa & gửi lại';

  @override
  String get randomPractice => 'Luyện ngẫu nhiên';

  @override
  String get leavePracticeRoomTitle => 'RỜI PHÒNG LUYỆN?';

  @override
  String get leavePracticeRoomConfirm => 'Bạn có chắc chắn muốn thoát khỏi phiên luyện tập này không?';

  @override
  String get leave => 'RỜI ĐI';

  @override
  String get endGameEarlyTitle => 'KẾT THÚC VÁN CHƠI';

  @override
  String get endGameEarlyConfirm => 'Bạn muốn dừng buổi luyện tập sớm và xem kết quả?';

  @override
  String get continuePlaying => 'CHƠI TIẾP';

  @override
  String get endGame => 'KẾT THÚC';

  @override
  String wordRoundFoundCount(int round, int found) {
    return 'Từ $round · $found từ đã tìm';
  }

  @override
  String wordRound(int round) {
    return 'Từ $round';
  }

  @override
  String get meaningClue => 'GỢI Ý NGHĨA';

  @override
  String get loadingClue => 'Đang tải gợi ý...';

  @override
  String nLettersCount(int count) {
    return '$count chữ cái';
  }

  @override
  String triedGuessesCount(int count) {
    return 'Đã thử ($count):';
  }

  @override
  String get noGuessesYet => 'Đã thử: Chưa có lượt đoán';

  @override
  String get skipWordAction => 'BỎ QUA';

  @override
  String get enterEnglishWordHint => 'Nhập từ tiếng Anh...';

  @override
  String get guessAction => 'ĐOÁN';

  @override
  String get academicSubtitle => 'Học thuật & Giáo dục';

  @override
  String get posNoun => 'Danh từ (noun)';

  @override
  String get posVerb => 'Động từ (verb)';

  @override
  String get posAdjective => 'Tính từ (adjective)';

  @override
  String get posAdverb => 'Trạng từ (adverb)';

  @override
  String get posPhrase => 'Cụm từ (phrase)';

  @override
  String get posUnknown => 'Không xác định';
}

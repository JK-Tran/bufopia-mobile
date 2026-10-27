import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Models
// ─────────────────────────────────────────────────────────────────────────────

/// Một mục nội dung điều khoản (tiêu đề + nội dung dạng text/gạch đầu dòng)
class PolicySection {
  const PolicySection({
    required this.id,
    required this.title,
    required this.content,
  });

  final String id;
  final String title;
  final String content;
}

/// Cấu hình dữ liệu cho từng Tab chính sách
class PolicyTabItem {
  const PolicyTabItem({
    required this.key,
    required this.tabLabel,
    required this.tabIcon,
    required this.tag,
    required this.title,
    required this.titleIcon,
    required this.intro,
    required this.sections,
  });

  final String key;
  final String tabLabel;
  final IconData tabIcon;
  final String tag;
  final String title;
  final IconData titleIcon;
  final String intro;
  final List<PolicySection> sections;
}

// ─────────────────────────────────────────────────────────────────────────────
// Data
// ─────────────────────────────────────────────────────────────────────────────

/// Toàn bộ nội dung pháp lý của Bufopia
class LegalPoliciesData {
  LegalPoliciesData._();

  static const String lastUpdated = 'Tháng 10/2026';

  static List<PolicyTabItem> getTabs([AppLocalizations? l10n]) {
    final isEn = l10n?.localeName.startsWith('en') ?? false;
    return isEn ? _enTabs(l10n) : _viTabs(l10n);
  }

  static List<PolicyTabItem> get tabs => _viTabs(null);

  static List<PolicyTabItem> _viTabs(AppLocalizations? l10n) => [
    // ── Tab 1: Quyền riêng tư ──────────────────────────────────────────────
    PolicyTabItem(
      key: 'privacy',
      tabLabel: l10n?.privacyTab ?? 'Quyền riêng tư',
      tabIcon: Icons.verified_user_rounded,
      tag: l10n?.dataProtectionTag ?? 'Bảo vệ dữ liệu',
      title: 'Chính sách Quyền riêng tư',
      titleIcon: Icons.lock_outline_rounded,
      intro:
          'Chúng tôi cam kết bảo vệ an toàn và quyền riêng tư cho mọi '
          'người chơi khi tham gia học tập và giải trí trên nền tảng Bufopia.',
      sections: const [
        PolicySection(
          id: 'collection',
          title: '1. Dữ liệu thu thập khi bạn tạo nhân vật',
          content:
              'Hệ thống chỉ lưu giữ thông tin tối thiểu cần thiết:\n'
              '• **Tên hiển thị:** Biệt danh do bạn tự đặt '
              '(không yêu cầu họ tên thật).\n'
              '• **Ảnh đại diện:** Ảnh mẫu mặc định hoặc ảnh bạn tự tải lên.\n'
              '• **Giới tính nhân vật (Nam / Nữ):** Để lựa chọn trang phục '
              'hiển thị trên Quảng trường trực tuyến.\n'
              '• **Tiến trình & Kết quả:** XP, Level, Streak, số trận thắng '
              'và từ vựng cần ôn luyện.\n'
              '• **Tương tác Quảng trường:** Chat công cộng và tin nhắn '
              'riêng gửi trực tiếp cho đối thủ thi đấu.\n'
              '• **Dữ liệu kỹ thuật ẩn danh:** Anonymous UID và thời gian '
              'truy cập để duy trì kết nối WebSocket ổn định.',
        ),
        PolicySection(
          id: 'no-sensitive',
          title: '2. Thông tin chúng tôi TUYỆT ĐỐI KHÔNG thu thập',
          content:
              '• **KHÔNG** yêu cầu Số điện thoại hay Địa chỉ nhà.\n'
              '• **KHÔNG** thu thập CCCD / CMND hay hộ chiếu.\n'
              '• **KHÔNG** theo dõi vị trí địa lý chính xác (GPS).\n'
              '• **KHÔNG** thu thập thông tin tài chính hay số thẻ tín dụng '
              '(Trò chơi hoàn toàn miễn phí).',
        ),
        PolicySection(
          id: 'purpose',
          title: '3. Mục đích sử dụng dữ liệu',
          content:
              '• Lưu tiến độ học từ vựng và cá nhân hóa lộ trình ôn tập '
              'lặp lại ngắt quãng (SRS).\n'
              '• Kết nối người chơi trong các trận thách đấu thời gian thực '
              '(1v1, thi đấu trực tuyến).\n'
              '• Vinh danh Top 3 người chơi xuất sắc trên bảng xếp hạng.\n'
              '• Đảm bảo ổn định và ngăn ngừa hành vi gian lận kỹ thuật.',
        ),
        PolicySection(
          id: 'sharing',
          title: '4. Lưu trữ & Cam kết không chia sẻ bên thứ ba',
          content:
              '• Dữ liệu lưu trên hạ tầng đám mây chuẩn quốc tế '
              '(Cloudflare D1 & R2, Firebase Authentication) với mã hóa '
              'SSL/TLS (HTTPS & WSS).\n'
              '• Chúng tôi **TUYỆT ĐỐI KHÔNG bán, cho thuê hoặc chia sẻ** '
              'thông tin cho bất kỳ bên thứ ba nào vì mục đích thương mại.',
        ),
        PolicySection(
          id: 'children',
          title: '5. Bảo vệ quyền riêng tư của trẻ em',
          content:
              '• Bufopia phù hợp với mọi lứa tuổi từ học sinh đến người '
              'đi làm.\n'
              '• Chúng tôi không thu thập dữ liệu nhạy cảm từ trẻ em dưới '
              '13 tuổi. Phụ huynh có toàn quyền yêu cầu xóa dữ liệu con '
              'em bất cứ lúc nào.',
        ),
      ],
    ),

    // ── Tab 2: Điều khoản & Quy tắc ────────────────────────────────────────
    PolicyTabItem(
      key: 'terms',
      tabLabel: l10n?.termsTab ?? 'Điều khoản',
      tabIcon: Icons.description_outlined,
      tag: l10n?.codeOfConductTag ?? 'Văn hóa ứng xử',
      title: 'Điều khoản Dịch vụ & Quy tắc Cộng đồng',
      titleIcon: Icons.gavel_rounded,
      intro:
          'Bằng việc tạo nhân vật và trải nghiệm Bufopia, bạn đồng ý '
          'tuân thủ các quy tắc văn minh nhằm xây dựng cộng đồng học tập '
          'tích cực, tôn trọng và an toàn.',
      sections: const [
        PolicySection(
          id: 'conduct',
          title: '1. Nghiêm cấm Nói tục, Chửi thề & Quấy rối',
          content:
              'Chúng tôi áp dụng chính sách **KHÔNG KHOAN NHƯỢNG**:\n'
              '• **Tuyệt đối KHÔNG nói tục, chửi thề:** Cấm từ ngữ thô '
              'thiển trong chat Quảng trường và tin nhắn riêng.\n'
              '• **Không quấy rối, bắt nạt:** Nghiêm cấm lăng mạ, đe dọa '
              'hoặc hạ nhục người chơi khác.\n'
              '• **Không phân biệt đối xử:** Cấm kỳ thị vùng miền, giới '
              'tính, dân tộc hay tôn giáo.\n'
              '• **Không spam:** Không gửi liên tục tin vô nghĩa hoặc quảng '
              'cáo trái phép.',
        ),
        PolicySection(
          id: 'naming',
          title: '2. Quy tắc Đặt tên & Ảnh đại diện Lịch sự',
          content:
              '• Tên hiển thị và ảnh đại diện phải phù hợp với mọi lứa tuổi.\n'
              '• Không đặt tên chứa từ ngữ bậy bạ, khiêu dâm hoặc bạo lực.\n'
              '• Không mạo danh ban quản trị hoặc gây hiểu lầm trong cộng '
              'đồng.\n'
              '• Hệ thống tự động kiểm tra và từ chối lưu tên vi phạm.',
        ),
        PolicySection(
          id: 'fair-play',
          title: '3. Tinh thần Thi đấu Công bằng (Fair-play)',
          content:
              '• Tôn trọng đối thủ trong mọi trận so tài từ vựng.\n'
              '• Nghiêm cấm sử dụng phần mềm can thiệp trái phép, bot tự '
              'động hoặc khai thác lỗi hệ thống để trục lợi điểm số.',
        ),
        PolicySection(
          id: 'enforcement',
          title: '4. Cơ chế Xử lý Vi phạm',
          content:
              '• **Thu hồi tên vi phạm:** Hệ thống tự động đặt lại tên mặc '
              'định.\n'
              '• **Khóa quyền trò chuyện:** Khóa chat đối với người chơi có '
              'ngôn từ khiếm nhã.\n'
              '• **Cấm vĩnh viễn:** Chặn truy cập với các trường hợp vi phạm '
              'nghiêm trọng hoặc cố tình tái phạm.',
        ),
      ],
    ),

    // ── Tab 3: Cookie & Bộ nhớ ─────────────────────────────────────────────
    PolicyTabItem(
      key: 'cookies',
      tabLabel: l10n?.cookiesTab ?? 'Cookie',
      tabIcon: Icons.cookie_outlined,
      tag: l10n?.deviceStorageTag ?? 'Lưu trữ thiết bị',
      title: 'Chính sách Cookie & Lưu trữ Cục bộ',
      titleIcon: Icons.storage_rounded,
      intro:
          'Giải thích cách Bufopia sử dụng bộ nhớ trình duyệt để tối ưu '
          'hóa trải nghiệm mượt mà cho bạn.',
      sections: const [
        PolicySection(
          id: 'storage',
          title: '1. LocalStorage & SessionStorage',
          content:
              'Bufopia sử dụng bộ nhớ cục bộ trên thiết bị của bạn để:\n'
              '• Ghi nhớ phiên đăng nhập ẩn danh (UID), tránh mất tiến '
              'trình khi tải lại trang.\n'
              '• Cache tên hiển thị, ảnh đại diện, giới tính và điểm số để '
              'tải game nhanh chóng.\n'
              '• Lưu tùy chọn cá nhân: Bật/Tắt âm thanh, chọn chủ đề giao '
              'diện (Paper / Classic).',
        ),
        PolicySection(
          id: 'no-tracking',
          title: '2. Không sử dụng Cookie theo dõi quảng cáo',
          content:
              '• Chúng tôi **KHÔNG** dùng cookie theo dõi hành vi xuyên '
              'trang web từ mạng quảng cáo bên thứ ba.\n'
              '• Bạn có thể xóa toàn bộ dữ liệu này bất cứ lúc nào qua '
              'tính năng "Xóa dữ liệu duyệt web" trên trình duyệt.',
        ),
      ],
    ),

    // ── Tab 4: Xóa dữ liệu ─────────────────────────────────────────────────
    PolicyTabItem(
      key: 'deletion',
      tabLabel: l10n?.deletionTab ?? 'Xóa dữ liệu',
      tabIcon: Icons.delete_outline_rounded,
      tag: l10n?.yourRightsTag ?? 'Quyền của bạn',
      title: 'Quyền Quản lý & Xóa Dữ liệu',
      titleIcon: Icons.manage_accounts_rounded,
      intro:
          'Bạn luôn có toàn quyền kiểm soát dữ liệu của mình trên Bufopia '
          'theo tiêu chuẩn bảo vệ dữ liệu cá nhân quốc tế.',
      sections: const [
        PolicySection(
          id: 'edit',
          title: '1. Quyền xem & Chỉnh sửa hồ sơ',
          content:
              '• Nhấn vào thẻ Hồ sơ người chơi ở góc trên màn hình để '
              'thay đổi Tên hiển thị, Ảnh đại diện hoặc Giới tính nhân vật '
              'bất cứ lúc nào.',
        ),
        PolicySection(
          id: 'delete',
          title: '2. Quy trình yêu cầu xóa dữ liệu hoàn toàn',
          content:
              '• **Xóa trên máy của bạn:** Nhấn "Xóa dữ liệu web" trên '
              'trình duyệt để loại bỏ toàn bộ dữ liệu lưu trữ cục bộ.\n'
              '• **Xóa trên máy chủ:** Gửi yêu cầu qua tính năng **"Góp ý"** '
              'trong Cài đặt. Chúng tôi sẽ xóa vĩnh viễn UID, tên, ảnh '
              'và điểm số trong vòng 48 giờ làm việc.',
        ),
      ],
    ),
  ];

  static List<PolicyTabItem> _enTabs(AppLocalizations? l10n) => [
    // ── Tab 1: Privacy ─────────────────────────────────────────────────────
    PolicyTabItem(
      key: 'privacy',
      tabLabel: l10n?.privacyTab ?? 'Privacy',
      tabIcon: Icons.verified_user_rounded,
      tag: l10n?.dataProtectionTag ?? 'Data Protection',
      title: 'Privacy Policy',
      titleIcon: Icons.lock_outline_rounded,
      intro:
          'We are committed to protecting the safety and privacy of all '
          'players when learning and enjoying entertainment on Bufopia.',
      sections: const [
        PolicySection(
          id: 'collection',
          title: '1. Data collected when creating a character',
          content:
              'The system only retains the minimum necessary information:\n'
              '• **Display Name:** A nickname chosen by you '
              '(real full name not required).\n'
              '• **Avatar:** Default avatar or your custom uploaded image.\n'
              '• **Character Gender (Boy / Girl):** To select character outfits '
              'on the online Plaza.\n'
              '• **Progress & Results:** XP, Level, Streak, win count, '
              'and vocabulary to review.\n'
              '• **Plaza Interactions:** Public chat and private direct '
              'messages sent to opponents.\n'
              '• **Anonymous Technical Data:** Anonymous UID and access '
              'timestamp to maintain stable WebSocket connectivity.',
        ),
        PolicySection(
          id: 'no-sensitive',
          title: '2. Information we strictly DO NOT collect',
          content:
              '• **NO** phone numbers or home addresses required.\n'
              '• **NO** citizen ID, passport, or identification documents '
              'collected.\n'
              '• **NO** precise GPS location tracking.\n'
              '• **NO** financial or credit card details required '
              '(the game is 100% free).',
        ),
        PolicySection(
          id: 'purpose',
          title: '3. Purpose of data usage',
          content:
              '• Store vocabulary learning progress and personalize the '
              'Spaced Repetition (SRS) schedule.\n'
              '• Connect players in real-time battles '
              '(1v1, online multiplayer).\n'
              '• Honor Top 3 players on the Leaderboard.\n'
              '• Ensure system stability and prevent unauthorized technical '
              'exploits.',
        ),
        PolicySection(
          id: 'sharing',
          title: '4. Storage & Zero third-party sharing commitment',
          content:
              '• Data is secured on international cloud infrastructure '
              '(Cloudflare D1 & R2, Firebase Authentication) with SSL/TLS '
              'encryption (HTTPS & WSS).\n'
              '• We **STRICTLY NEVER sell, rent, or share** your information '
              'with any third parties for commercial purposes.',
        ),
        PolicySection(
          id: 'children',
          title: '5. Child privacy protection',
          content:
              '• Bufopia is suitable for all ages from students to working '
              'adults.\n'
              '• We do not collect sensitive data from children under 13. '
              "Parents have full rights to request deletion of their child's "
              'data at any time.',
        ),
      ],
    ),

    // ── Tab 2: Terms & Conduct ─────────────────────────────────────────────
    PolicyTabItem(
      key: 'terms',
      tabLabel: l10n?.termsTab ?? 'Terms',
      tabIcon: Icons.description_outlined,
      tag: l10n?.codeOfConductTag ?? 'Code of Conduct',
      title: 'Terms of Service & Community Guidelines',
      titleIcon: Icons.gavel_rounded,
      intro:
          'By creating a character and playing Bufopia, you agree to follow '
          'civil rules to build a positive, respectful, and safe learning '
          'community.',
      sections: const [
        PolicySection(
          id: 'conduct',
          title: '1. Strict ban on vulgar language, profanity & harassment',
          content:
              'We enforce a **ZERO TOLERANCE** policy:\n'
              '• **Strictly NO profanity or vulgar language:** Rude words are '
              'forbidden in Plaza chat and private messages.\n'
              '• **No harassment or bullying:** Insults, threats, or '
              'humiliation of other players are strictly prohibited.\n'
              '• **No discrimination:** Discrimination based on region, '
              'gender, ethnicity, or religion is prohibited.\n'
              '• **No spam:** Repeated meaningless messages or unauthorized '
              'advertisements are strictly forbidden.',
        ),
        PolicySection(
          id: 'naming',
          title: '2. Respectful naming & avatar rules',
          content:
              '• Display names and avatars must be appropriate for all ages.\n'
              '• Do not choose names containing vulgar, obscene, or violent '
              'language.\n'
              '• Do not impersonate administrators or mislead community '
              'members.\n'
              '• Automated filters reject non-compliant names.',
        ),
        PolicySection(
          id: 'fair-play',
          title: '3. Fair-play spirit',
          content:
              '• Respect opponents in all vocabulary duels.\n'
              '• Using third-party software, automated bots, or exploiting '
              'system bugs to artificially boost scores is strictly '
              'prohibited.',
        ),
        PolicySection(
          id: 'enforcement',
          title: '4. Violation enforcement mechanism',
          content:
              '• **Reset violating names:** The system automatically reverts '
              'to a default safe name.\n'
              '• **Chat ban:** Mute chat privileges for players displaying '
              'uncivil language.\n'
              '• **Permanent ban:** Restrict access for severe or repeated '
              'violations.',
        ),
      ],
    ),

    // ── Tab 3: Cookies & Storage ───────────────────────────────────────────
    PolicyTabItem(
      key: 'cookies',
      tabLabel: l10n?.cookiesTab ?? 'Cookies',
      tabIcon: Icons.cookie_outlined,
      tag: l10n?.deviceStorageTag ?? 'Device Storage',
      title: 'Cookie & Local Storage Policy',
      titleIcon: Icons.storage_rounded,
      intro:
          'Explaining how Bufopia utilizes browser storage to deliver a smooth '
          'and optimized user experience.',
      sections: const [
        PolicySection(
          id: 'storage',
          title: '1. LocalStorage & SessionStorage',
          content:
              'Bufopia uses local storage on your device to:\n'
              '• Remember anonymous login session (UID), avoiding loss of '
              'progress on page reload.\n'
              '• Cache display name, avatar, gender, and scores for fast '
              'loading.\n'
              '• Save personal preferences: Sound toggles, UI theme selection '
              '(Paper / Classic).',
        ),
        PolicySection(
          id: 'no-tracking',
          title: '2. No advertising tracking cookies',
          content:
              '• We **DO NOT** use tracking cookies across websites from '
              'third-party advertising networks.\n'
              "• You can clear this data at any time via your browser's "
              '"Clear browsing data" settings.',
        ),
      ],
    ),

    // ── Tab 4: Delete Data ─────────────────────────────────────────────────
    PolicyTabItem(
      key: 'deletion',
      tabLabel: l10n?.deletionTab ?? 'Delete Data',
      tabIcon: Icons.delete_outline_rounded,
      tag: l10n?.yourRightsTag ?? 'Your Rights',
      title: 'Data Management & Deletion Rights',
      titleIcon: Icons.manage_accounts_rounded,
      intro:
          'You always retain full control over your data on Bufopia according '
          'to international privacy standards.',
      sections: const [
        PolicySection(
          id: 'edit',
          title: '1. Right to view & edit profile',
          content:
              '• Tap the Player Profile card at the top of the screen to '
              'change your Display Name, Avatar, or character gender at '
              'any time.',
        ),
        PolicySection(
          id: 'delete',
          title: '2. Procedure to request complete data deletion',
          content:
              '• **Delete on your device:** Tap "Clear browsing data" in '
              'your browser to remove all locally stored data.\n'
              '• **Delete on servers:** Submit a request via the '
              '**"Feedback"** feature in Settings. We will permanently '
              'delete your UID, name, avatar, and scores within 48 business '
              'hours.',
        ),
      ],
    ),
  ];
}

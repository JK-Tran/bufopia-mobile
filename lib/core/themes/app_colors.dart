import 'package:flutter/material.dart';

abstract final class AppColors {
  AppColors._();

  // --- 1. Vibrant Game Palette (Màu sắc chủ đạo cho app giải trí) ---
  // Cam & Vàng (Chủ đạo, Quick Battle, Thưởng, XP, Ngôi sao)
  static const Color orange = Color(0xFFFF9800);
  static const Color orangeLight = Color(0xFFFFC107);
  static const Color orangeDark = Color(0xFFFF8F00);
  static const Color orangeDeep = Color(0xFFE65100);
  static const Color yellow = Color(0xFFFFB300);
  static const Color gold = Color(0xFFFFC107);
  static const Color brownDark = Color(0xFF5D4037);

  // Xanh dương & Cyan (Choose Topic, Thông tin, Header action)
  static const Color blue = Color(0xFF0288D1);
  static const Color blueLight = Color(0xFF29B6F6);
  static const Color blueDark = Color(0xFF0288D1);
  static const Color blueDeep = Color(0xFF01579B);
  static const Color cyan = Color(0xFF4DD0E1);
  static const Color indigo = Color(0xFF5C6AC4);

  // Sky Blue (UI Profile, Header badges, Gallery actions)
  static const Color sky = Color(0xFF0284C7);
  static const Color skyDark = Color(0xFF0369A1);
  static const Color skyLight = Color(0xFFE0F2FE);
  static const Color skyBorder = Color(0xFFBAE6FD);
  static const Color skySurface = Color(0xFFF0F9FF);

  // Tím & Violet (Review Words, Level Badge, Hiệu ứng nổi bật)
  static const Color purple = Color(0xFF8B5CF6);
  static const Color purpleLight = Color(0xFFAB47BC);
  static const Color purpleDark = Color(0xFF7B1FA2);
  static const Color purpleDeep = Color(0xFF4A148C);
  static const Color purpleShadow = Color(0xFF6D28D9);

  // Xanh lá (Success, Play, Nền thiên nhiên)
  static const Color green = Color(0xFF2ED573);
  static const Color greenLight = Color(0xFF81C784);
  static const Color greenDark = Color(0xFF2E7D32);

  // Đỏ (Streak Flame, Trái tim, Cảnh báo)
  static const Color red = Color(0xFFFF5722);
  static const Color redDark = Color(0xFFD63031);
  static const Color redDeep = Color(0xFF991B1B);
  static const Color redLight = Color(0xFFFFEAEA);

  // Khác (Tone da, gỗ)
  static const Color peach = Color(0xFFFFCC80);
  static const Color woodLight = Color(0xFFF9DC96);
  static const Color woodDark = Color(0xFFE5A93C);
  static const Color woodParchmentLight = Color(0xFFFFFDE7);
  static const Color woodParchmentDark = Color(0xFFFFECB3);
  static const Color woodBoardBorder = Color(0xFF6D4C41);
  static const Color woodBoardShadow = Color(0xFF4E342E);

  // --- 2. Neutrals & 3D Extrusions (Màu nền, chữ, bóng 3D) ---
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grayDark = Color(0xFF1E293B); // Chữ chính
  static const Color grayMedium = Color(0xFF64748B); // Chữ phụ
  static const Color grayLight = Color(0xFFE2E8F0); // Viền, track
  static const Color grayExtrusion = Color(0xFFCBD5E1); // Viền 3D nút trắng
  static const Color grayShadow = Color(0xFFD1D5DB); // Bóng đổ nút tròn

  // --- 3. Semantic Roles (Tiện dùng chung theo vai trò) ---
  static const Color primary = orangeDark;
  static const Color primaryLight = orangeLight;
  static const Color primaryDark = orangeDeep;
  static const Color secondary = blue;
  static const Color accent = purple;
  static const Color success = green;
  static const Color error = redDark;
  static const Color warning = yellow;
  static const Color info = blueLight;

  // --- 4. Light/Dark Theme Specifics ---
  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightOnBackground = Color(0xFF1E293B);
  static const Color lightOnSurface = Color(0xFF1E293B);
  static const Color lightOnError = Color(0xFFFFFFFF);

  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkSurface = Color(0xFF1E293B);
  static const Color darkSurfaceVariant = Color(0xFF334155);
  static const Color darkOnBackground = Color(0xFFF8FAFC);
  static const Color darkOnSurface = Color(0xFFE2E8F0);
  static const Color darkOnSurfaceVariant = Color(0xFF94A3B8);
  static const Color darkOutline = Color(0xFF475569);
  static const Color darkError = Color(0xFFEF4444);
  static const Color darkOnError = Color(0xFF0F172A);

  // --- 5. Mode Selection Dialog & Cards ---
  // Mode Bot (Xanh lá / Mint)
  static const Color modeBotBorder = Color(0xFFA7F3D0);
  static const Color modeBotShadow = Color(0xFF6EE7B7);
  static const Color modeBotButton = Color(0xFF10B981);
  static const Color modeBotButtonDark = Color(0xFF059669);
  static const Color modeBotButtonExtrusion = Color(0xFF047857);

  // Mode PvP (Tím / Purple)
  static const Color modePvpBorder = Color(0xFFDDD6FE);
  static const Color modePvpShadow = Color(0xFFC4B5FD);
  static const Color modePvpButton = Color(0xFF8B5CF6);
  static const Color modePvpButtonDark = Color(0xFF7C3AED);
  static const Color modePvpButtonExtrusion = Color(0xFF6D28D9);

  // Mode Online (Cam / Amber)
  static const Color modeOnlineBorder = Color(0xFFFED7AA);
  static const Color modeOnlineShadow = Color(0xFFFDBA74);
  static const Color modeOnlineButton = Color(0xFFF97316);
  static const Color modeOnlineButtonDark = Color(0xFFEA580C);
  static const Color modeOnlineButtonExtrusion = Color(0xFFC2410C);

  // Mode ID (Xanh dương / Cyan-Blue)
  static const Color modeIdBorder = Color(0xFFBAE6FD);
  static const Color modeIdShadow = Color(0xFF7DD3FC);
  static const Color modeIdButton = Color(0xFF3B82F6);
  static const Color modeIdButtonDark = Color(0xFF2563EB);
  static const Color modeIdButtonExtrusion = Color(0xFF1D4ED8);

  // Dialog Close Button
  static const Color dialogCloseBg = Color(0xFFFFEEEE);
  static const Color dialogCloseBorder = Color(0xFFFFCDD2);
  static const Color dialogCloseExtrusion = Color(0xFFEF9A9A);
  static const Color dialogCloseIcon = Color(0xFFE53935);

  // Matchmaking Radar
  static const Color radarGreen = Color(0xFF00C853);
  static const Color radarGreenLight = Color(0xFF00E676);

  // --- 6. Quick Battle Player Badges ---
  static const Color playerPink = Color(0xFFFF4081);
  static const Color playerPinkLight = Color(0xFFFF659C);
  static const Color playerPinkDark = Color(0xFFE91E63);
  static const Color playerPinkBorder = Color(0xFFFF80AB);
  static const Color playerPinkShadow = Color(0xFFC2185B);
  static const Color playerPinkExtrusion = Color(0xFFF3C4D8);
  static const Color playerPinkTagBg = Color(0xFFFFE4EE);

  static const Color playerBlue = Color(0xFF0288D1);
  static const Color playerBlueLight = Color(0xFF29B6F6);
  static const Color playerBlueDark = Color(0xFF01579B);
  static const Color playerBlueBorder = Color(0xFF81D4FA);
  static const Color playerBlueShadow = Color(0xFF0277BD);
  static const Color playerBlueExtrusion = Color(0xFFBCE1F5);
  static const Color playerBlueTagBg = Color(0xFFE0F2FE);

  // --- 7. Home Header Profile Capsule Badges ---
  static const Color levelBadgeBg = Color(0xFFFEF3C7);
  static const Color levelBadgeBorder = Color(0xFFFDE68A);
  static const Color levelBadgeText = Color(0xFFB45309);
  static const Color streakBadgeBg = Color(0xFFFFF1F2);
  static const Color streakBadgeBorder = Color(0xFFFECDD3);

  // --- 8. Topic Selection Badges ---
  static const Color topicEasyBg = Color(0xFFECFDF5);
  static const Color topicMediumBg = Color(0xFFFFF7ED);

  // --- 8b. Leaderboard Podium Colors ---
  static const Color podiumGold1Bg = Color(0xFFFEF9C3);
  static const Color podiumGold1BgEnd = Color(0xFFFDE68A);
  static const Color podiumGold1Border = Color(0xFFF59E0B);
  static const Color podiumSilver2Bg = Color(0xFFF8FAFC);
  static const Color podiumSilver2BgEnd = Color(0xFFE2E8F0);
  static const Color podiumSilver2Border = Color(0xFFCBD5E1);
  static const Color podiumBronze3Bg = Color(0xFFFFF7ED);
  static const Color podiumBronze3BgEnd = Color(0xFFFED7AA);
  static const Color podiumBronze3Border = Color(0xFFFB923C);
  static const Color leaderboardTabSelectedBg = Color(0xFFECFDF5);
  static const Color leaderboardTabSelectedBorder = Color(0xFF16A34A);
  static const Color leaderboardRowBg = Color(0xFFFCFBF7);


  // --- 9. Paper Theme Palette ---
  // Backgrounds & Surfaces
  static const Color paperBackground = Color(0xFFFCF9F2);
  static const Color paperSurface = Color(0xFFFBF8F1);
  static const Color paperSurfaceWarm = Color(0xFFFCFBF7);
  static const Color paperCardBg = Color(0xFFFCF9F2);
  static const Color paperBorder = Color(0xFFE2DACB);
  static const Color paperBorderDark = Color(0xFFE8DFD0);
  static const Color paperExtrusion = Color(0xFFDDD5C5);
  static const Color paperDottedLine = Color(0xFFB8B0A2);

  // Typography
  static const Color paperTextDark = Color(0xFF2D3748);
  static const Color paperTextMedium = Color(0xFF4A5568);
  static const Color paperTextMuted = Color(0xFF718096);
  static const Color paperHeaderIcon = Color(0xFF4B5563);
  static const Color paperSectionTitle = Color(0xFF1F2937);

  // Paper Green Buttons & Highlights
  static const Color paperGreen = Color(0xFF3E824A);
  static const Color paperGreenLight = Color(0xFF4ADE80);
  static const Color paperGreenDark = Color(0xFF2A5A32);
  static const Color paperGreenExtrusion = Color(0xFF2A5A32);
  static const Color paperGreenBorder = Color(0xFF16A34A);
  static const Color paperExpGreen = Color(0xFF16A34A);

  // Paper Badges
  static const Color paperBadgeBg = Color(0xFFECE7DA);
  static const Color paperBadgeBorder = Color(0xFFDDD5C5);
  static const Color paperBadgeText = Color(0xFF4A463E);

  static const Color paperAmberBadgeBg = Color(0xFFFEF3C7);
  static const Color paperAmberBadgeBorder = Color(0xFFFDE68A);
  static const Color paperAmberBadgeText = Color(0xFFB45309);

  static const Color paperStreakFlame = Color(0xFFEA580C);
  static const Color paperStreakText = Color(0xFFC2410C);

  // Paper Motivation Card Gradient
  static const Color paperCardGradientStart = Color(0xFFFFFDF5);
  static const Color paperCardGradientEnd = Color(0xFFFBF4E6);

  // --- 10. Classic Theme Palette ---
  static const Color classicBorder = Color(0xFFE2E8F0);
  static const Color classicBadgePurpleBg = Color(0xFFF3E8FF);
  static const Color classicBadgePurpleBorder = Color(0xFFE9D5FF);
  static const Color classicBadgePurpleText = Color(0xFF7C3AED);
  static const Color classicButtonBlue = Color(0xFF2563EB);
  static const Color classicButtonBlueExtrusion = Color(0xFF1D4ED8);
  static const Color classicButtonEmerald = Color(0xFF059669);
  static const Color classicButtonEmeraldExtrusion = Color(0xFF047857);
  static const Color classicShadowIndigo = Color(0xFF6366F1);

  // --- 11. Spiral Rings & Notebook Details ---
  static const Color spiralRingHole = Color(0xFF1E293B);
  static const Color spiralRingHoleBorder = Color(0xFFD1D5DB);
  static const Color spiralRingGrad1 = Color(0xFF64748B);
  static const Color spiralRingGrad2 = Color(0xFFCBD5E1);
  static const Color spiralRingGrad3 = Color(0xFFE2E8F0);
  static const Color spiralRingGrad4 = Color(0xFF475569);

  // --- 12. Menu Action Specifics (Classic 3D) ---
  static const Color menuQuizRed = Color(0xFFE53935);
  static const Color menuQuizRedExtrusion = Color(0xFFB71C1C);
  static const Color menuQuizRedTitle = Color(0xFFD84315);
  static const Color menuQuizRedTitleShadow = Color(0xFFBF360C);

  static const Color menuChainGreen = Color(0xFF00A86B);
  static const Color menuChainGreenExtrusion = Color(0xFF00754A);
  static const Color menuChainGreenTitle = Color(0xFF00796B);
  static const Color menuChainGreenTitleShadow = Color(0xFF004D40);

  static const Color menuReviewPurple = Color(0xFF7C3AED);
  static const Color menuReviewPurpleExtrusion = Color(0xFF5B21B6);
  static const Color menuReviewPurpleTitle = Color(0xFFB78103);
  static const Color menuReviewPurpleTitleShadow = Color(0xFF7F4D00);

  // --- 13. System Pill & Setting Selector ---
  static const Color pillBg = Color(0xFFEFEBF5);
  static const Color pillBorder = Color(0xFFE5DEF0);
  static const Color pillTextSelected = Color(0xFF5B21B6);
  static const Color pillTextUnselected = Color(0xFF6B7280);
  static const Color pillCloseBg = Color(0xFFFEE2E2);
  static const Color pillCloseIcon = Color(0xFFDC2626);
  static const Color dividerDotted = Color(0xFFD1D5DB);
  static const Color neutralDisabled = Color(0xFF9CA3AF);
  static const Color neutralDisabledExtrusion = Color(0xFF6B7280);
  static const Color themePink = Color(0xFFEC4899);
  static const Color themePurpleBorder = Color(0xFFA855F7);

  // --- Dimensions ---
  static const double radiusS = 8;
  static const double radiusM = 16;
  static const double radiusL = 24;
  static const double radiusXL = 32;
}

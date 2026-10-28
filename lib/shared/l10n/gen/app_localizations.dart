// dart format off
// coverage:ignore-file
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// Text shown in the AppBar of the Counter Page
  ///
  /// In en, this message translates to:
  /// **'Counter'**
  String get counterAppBarTitle;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get navHome;

  /// No description provided for @navMap.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get navMap;

  /// No description provided for @navChat.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get navChat;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred'**
  String get unknownError;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Network connection error. Please check your internet connection.'**
  String get networkError;

  /// No description provided for @timeoutError.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out. Please try again.'**
  String get timeoutError;

  /// No description provided for @sessionExpiredError.
  ///
  /// In en, this message translates to:
  /// **'Session has expired. Please log in again.'**
  String get sessionExpiredError;

  /// No description provided for @unauthorizedError.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized access. Please log in.'**
  String get unauthorizedError;

  /// No description provided for @forbiddenError.
  ///
  /// In en, this message translates to:
  /// **'Access forbidden.'**
  String get forbiddenError;

  /// No description provided for @notFoundError.
  ///
  /// In en, this message translates to:
  /// **'Requested resource not found.'**
  String get notFoundError;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again later.'**
  String get serverError;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'year(s) ago'**
  String get year;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'month(s) ago'**
  String get month;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'day(s) ago'**
  String get day;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'hour(s) ago'**
  String get hour;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'minute(s) ago'**
  String get minute;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @quit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get quit;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @playAgain.
  ///
  /// In en, this message translates to:
  /// **'Play Again'**
  String get playAgain;

  /// No description provided for @rematch.
  ///
  /// In en, this message translates to:
  /// **'Rematch'**
  String get rematch;

  /// No description provided for @rematchNow.
  ///
  /// In en, this message translates to:
  /// **'Rematch Now'**
  String get rematchNow;

  /// No description provided for @waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting...'**
  String get waiting;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @playNow.
  ///
  /// In en, this message translates to:
  /// **'PLAY NOW'**
  String get playNow;

  /// No description provided for @practice.
  ///
  /// In en, this message translates to:
  /// **'PRACTICE'**
  String get practice;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE'**
  String get explore;

  /// No description provided for @startNow.
  ///
  /// In en, this message translates to:
  /// **'START NOW'**
  String get startNow;

  /// No description provided for @nextWord.
  ///
  /// In en, this message translates to:
  /// **'Next Word'**
  String get nextWord;

  /// No description provided for @finishReview.
  ///
  /// In en, this message translates to:
  /// **'Finish Review'**
  String get finishReview;

  /// No description provided for @loginRequired.
  ///
  /// In en, this message translates to:
  /// **'LOGIN REQUIRED'**
  String get loginRequired;

  /// No description provided for @onState.
  ///
  /// In en, this message translates to:
  /// **'ON'**
  String get onState;

  /// No description provided for @offState.
  ///
  /// In en, this message translates to:
  /// **'OFF'**
  String get offState;

  /// No description provided for @profileBtn.
  ///
  /// In en, this message translates to:
  /// **'PROFILE'**
  String get profileBtn;

  /// No description provided for @diffEasy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get diffEasy;

  /// No description provided for @diffMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get diffMedium;

  /// No description provided for @diffHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get diffHard;

  /// No description provided for @multiTopic.
  ///
  /// In en, this message translates to:
  /// **'Multi-topic'**
  String get multiTopic;

  /// No description provided for @wordsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} words'**
  String wordsCount(int count);

  /// No description provided for @roundBadge.
  ///
  /// In en, this message translates to:
  /// **'ROUND {current} / {total}'**
  String roundBadge(int current, int total);

  /// No description provided for @leaveBattle.
  ///
  /// In en, this message translates to:
  /// **'Leave Battle'**
  String get leaveBattle;

  /// No description provided for @menuQuizTitle.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get menuQuizTitle;

  /// No description provided for @menuQuizSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose topic or random duel'**
  String get menuQuizSubtitle;

  /// No description provided for @menuWordChainTitle.
  ///
  /// In en, this message translates to:
  /// **'Word Chain'**
  String get menuWordChainTitle;

  /// No description provided for @menuWordChainSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Link words freely, learn pronunciation & context'**
  String get menuWordChainSubtitle;

  /// No description provided for @menuWordGuessTitle.
  ///
  /// In en, this message translates to:
  /// **'Missing Word'**
  String get menuWordGuessTitle;

  /// No description provided for @menuWordGuessSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Guess mysterious words to fill blanks'**
  String get menuWordGuessSubtitle;

  /// No description provided for @menuStudyHubTitle.
  ///
  /// In en, this message translates to:
  /// **'Study Hub'**
  String get menuStudyHubTitle;

  /// No description provided for @menuStudyHubSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Review and store your knowledge'**
  String get menuStudyHubSubtitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Game Settings'**
  String get settingsTitle;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @guestNotLinked.
  ///
  /// In en, this message translates to:
  /// **'Guest: {name} (Google not linked)'**
  String guestNotLinked(String name);

  /// No description provided for @accountLinked.
  ///
  /// In en, this message translates to:
  /// **'Account: {name}'**
  String accountLinked(String name);

  /// No description provided for @viewProfile.
  ///
  /// In en, this message translates to:
  /// **'View profile'**
  String get viewProfile;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'LOG IN'**
  String get logIn;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'LOG OUT'**
  String get logOut;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Game display language'**
  String get languageSubtitle;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Change display style'**
  String get themeSubtitle;

  /// No description provided for @music.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// No description provided for @musicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Toggle in-game background music'**
  String get musicSubtitle;

  /// No description provided for @soundEffects.
  ///
  /// In en, this message translates to:
  /// **'Sound Effects'**
  String get soundEffects;

  /// No description provided for @soundEffectsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Toggle button clicks, tile flips, and result sounds'**
  String get soundEffectsSubtitle;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @feedbackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Submit suggestions or report questions'**
  String get feedbackSubtitle;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyPolicySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of service and user privacy'**
  String get privacyPolicySubtitle;

  /// No description provided for @logoutConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Log out account'**
  String get logoutConfirmTitle;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get logoutConfirmMessage;

  /// No description provided for @playerProfile.
  ///
  /// In en, this message translates to:
  /// **'Player Profile'**
  String get playerProfile;

  /// No description provided for @studyStreak.
  ///
  /// In en, this message translates to:
  /// **'Study Streak'**
  String get studyStreak;

  /// No description provided for @winStreak.
  ///
  /// In en, this message translates to:
  /// **'Win Streak'**
  String get winStreak;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'Level {level}'**
  String level(int level);

  /// No description provided for @copyPlayerId.
  ///
  /// In en, this message translates to:
  /// **'Copy ID'**
  String get copyPlayerId;

  /// No description provided for @copiedPlayerId.
  ///
  /// In en, this message translates to:
  /// **'Player ID copied!'**
  String get copiedPlayerId;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully!'**
  String get profileUpdated;

  /// No description provided for @avatarUpdated.
  ///
  /// In en, this message translates to:
  /// **'Avatar updated!'**
  String get avatarUpdated;

  /// No description provided for @editName.
  ///
  /// In en, this message translates to:
  /// **'Edit Name'**
  String get editName;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'SAVE CHANGES'**
  String get saveChanges;

  /// No description provided for @enterPlayerName.
  ///
  /// In en, this message translates to:
  /// **'Enter player name'**
  String get enterPlayerName;

  /// No description provided for @chooseCompanion.
  ///
  /// In en, this message translates to:
  /// **'CHOOSE COMPANION'**
  String get chooseCompanion;

  /// No description provided for @companionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your favorite companion mascot'**
  String get companionSubtitle;

  /// No description provided for @studyHubTitle.
  ///
  /// In en, this message translates to:
  /// **'STUDY HUB'**
  String get studyHubTitle;

  /// No description provided for @studyHubFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Auto-save progress & Boost your reflexes ⭐'**
  String get studyHubFooter;

  /// No description provided for @reviewWeakWords.
  ///
  /// In en, this message translates to:
  /// **'Review Weak Words'**
  String get reviewWeakWords;

  /// No description provided for @reviewWeakWordsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Practice words with incorrect answers or slow reflexes'**
  String get reviewWeakWordsSubtitle;

  /// No description provided for @contributeVocab.
  ///
  /// In en, this message translates to:
  /// **'Contribute Vocabulary'**
  String get contributeVocab;

  /// No description provided for @contributeVocabSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enrich vocabulary with Bufopia community'**
  String get contributeVocabSubtitle;

  /// No description provided for @badgeNew.
  ///
  /// In en, this message translates to:
  /// **'NEW'**
  String get badgeNew;

  /// No description provided for @feedbackReport.
  ///
  /// In en, this message translates to:
  /// **'Feedback & Bug Report'**
  String get feedbackReport;

  /// No description provided for @feedbackReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send feedback to help improve the game experience'**
  String get feedbackReportSubtitle;

  /// No description provided for @badgeFeedback.
  ///
  /// In en, this message translates to:
  /// **'FEEDBACK'**
  String get badgeFeedback;

  /// No description provided for @chooseGameMode.
  ///
  /// In en, this message translates to:
  /// **'CHOOSE GAME MODE'**
  String get chooseGameMode;

  /// No description provided for @chooseTopicTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Content'**
  String get chooseTopicTitle;

  /// No description provided for @chooseTopicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a battle topic'**
  String get chooseTopicSubtitle;

  /// No description provided for @modeFooterVocab.
  ///
  /// In en, this message translates to:
  /// **'⭐ Choose a mode to start vocabulary duel ⭐'**
  String get modeFooterVocab;

  /// No description provided for @modeFooterGuess.
  ///
  /// In en, this message translates to:
  /// **'⭐ Choose a mode to start guessing vocabulary ⭐'**
  String get modeFooterGuess;

  /// No description provided for @battleWithBot.
  ///
  /// In en, this message translates to:
  /// **'Battle with Bot'**
  String get battleWithBot;

  /// No description provided for @battleWithBotDesc.
  ///
  /// In en, this message translates to:
  /// **'Train vocabulary reflexes with AI Bot'**
  String get battleWithBotDesc;

  /// No description provided for @duel2Players.
  ///
  /// In en, this message translates to:
  /// **'2 Players'**
  String get duel2Players;

  /// No description provided for @duel2PlayersDesc.
  ///
  /// In en, this message translates to:
  /// **'Duel locally on the same device'**
  String get duel2PlayersDesc;

  /// No description provided for @randomMatchmaking.
  ///
  /// In en, this message translates to:
  /// **'Random Matchmaking'**
  String get randomMatchmaking;

  /// No description provided for @randomMatchmakingDesc.
  ///
  /// In en, this message translates to:
  /// **'Find online opponents worldwide'**
  String get randomMatchmakingDesc;

  /// No description provided for @challengeById.
  ///
  /// In en, this message translates to:
  /// **'Challenge by ID'**
  String get challengeById;

  /// No description provided for @challengeByIdDesc.
  ///
  /// In en, this message translates to:
  /// **'Create or join private room with friends'**
  String get challengeByIdDesc;

  /// No description provided for @wordChainModeTitle.
  ///
  /// In en, this message translates to:
  /// **'CHOOSE WORD CHAIN\nPRACTICE MODE'**
  String get wordChainModeTitle;

  /// No description provided for @threeModesBadge.
  ///
  /// In en, this message translates to:
  /// **'3 MODES'**
  String get threeModesBadge;

  /// No description provided for @onePlayerBadge.
  ///
  /// In en, this message translates to:
  /// **'1 PLAYER'**
  String get onePlayerBadge;

  /// No description provided for @findFriendBadge.
  ///
  /// In en, this message translates to:
  /// **'FIND MATCH'**
  String get findFriendBadge;

  /// No description provided for @twoPlayersBadge.
  ///
  /// In en, this message translates to:
  /// **'2 PLAYERS'**
  String get twoPlayersBadge;

  /// No description provided for @practiceBot.
  ///
  /// In en, this message translates to:
  /// **'Practice with Bot'**
  String get practiceBot;

  /// No description provided for @practiceBotDesc.
  ///
  /// In en, this message translates to:
  /// **'Train vocabulary reflexes with Bot'**
  String get practiceBotDesc;

  /// No description provided for @practiceOnline.
  ///
  /// In en, this message translates to:
  /// **'Online Match'**
  String get practiceOnline;

  /// No description provided for @practiceOnlineDesc.
  ///
  /// In en, this message translates to:
  /// **'Random matchmaking with players'**
  String get practiceOnlineDesc;

  /// No description provided for @inviteFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends'**
  String get inviteFriends;

  /// No description provided for @inviteFriendsDesc.
  ///
  /// In en, this message translates to:
  /// **'Create private room to compete with friends'**
  String get inviteFriendsDesc;

  /// No description provided for @timedPractice.
  ///
  /// In en, this message translates to:
  /// **'TIMED PRACTICE'**
  String get timedPractice;

  /// No description provided for @relaxedPractice.
  ///
  /// In en, this message translates to:
  /// **'RELAXED'**
  String get relaxedPractice;

  /// No description provided for @soloPractice.
  ///
  /// In en, this message translates to:
  /// **'Solo Practice'**
  String get soloPractice;

  /// No description provided for @soloPracticeDesc.
  ///
  /// In en, this message translates to:
  /// **'Relaxed word guessing to expand vocabulary'**
  String get soloPracticeDesc;

  /// No description provided for @onlineMatch.
  ///
  /// In en, this message translates to:
  /// **'Online Match'**
  String get onlineMatch;

  /// No description provided for @onlineMatchDesc.
  ///
  /// In en, this message translates to:
  /// **'Matchmaking for quick guessing duel'**
  String get onlineMatchDesc;

  /// No description provided for @customRoom.
  ///
  /// In en, this message translates to:
  /// **'Custom Room'**
  String get customRoom;

  /// No description provided for @customRoomDesc.
  ///
  /// In en, this message translates to:
  /// **'Invite friends to compete together'**
  String get customRoomDesc;

  /// No description provided for @findingOpponent.
  ///
  /// In en, this message translates to:
  /// **'FINDING OPPONENT...'**
  String get findingOpponent;

  /// No description provided for @opponentFound.
  ///
  /// In en, this message translates to:
  /// **'🎉 OPPONENT FOUND!'**
  String get opponentFound;

  /// No description provided for @opponentFoundRival.
  ///
  /// In en, this message translates to:
  /// **'🎉 FOUND: {name}!'**
  String opponentFoundRival(String name);

  /// No description provided for @cancelMatchmaking.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get cancelMatchmaking;

  /// No description provided for @enteringMatch.
  ///
  /// In en, this message translates to:
  /// **'ENTERING MATCH...'**
  String get enteringMatch;

  /// No description provided for @battleRoom.
  ///
  /// In en, this message translates to:
  /// **'BATTLE ROOM'**
  String get battleRoom;

  /// No description provided for @enterCodeTab.
  ///
  /// In en, this message translates to:
  /// **'ENTER CODE'**
  String get enterCodeTab;

  /// No description provided for @createRoomTab.
  ///
  /// In en, this message translates to:
  /// **'CREATE ROOM'**
  String get createRoomTab;

  /// No description provided for @roomCode.
  ///
  /// In en, this message translates to:
  /// **'Room Code'**
  String get roomCode;

  /// No description provided for @enterRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Enter 6-digit room code'**
  String get enterRoomCode;

  /// No description provided for @joinRoom.
  ///
  /// In en, this message translates to:
  /// **'Join Room'**
  String get joinRoom;

  /// No description provided for @createRoom.
  ///
  /// In en, this message translates to:
  /// **'Create Room'**
  String get createRoom;

  /// No description provided for @matchResults.
  ///
  /// In en, this message translates to:
  /// **'MATCH RESULTS'**
  String get matchResults;

  /// No description provided for @victory.
  ///
  /// In en, this message translates to:
  /// **'🎉 VICTORY!'**
  String get victory;

  /// No description provided for @defeat.
  ///
  /// In en, this message translates to:
  /// **'😢 DEFEAT!'**
  String get defeat;

  /// No description provided for @draw.
  ///
  /// In en, this message translates to:
  /// **'🤝 DRAW!'**
  String get draw;

  /// No description provided for @playerWins.
  ///
  /// In en, this message translates to:
  /// **'🎉 {name} WINS!'**
  String playerWins(String name);

  /// No description provided for @botOpponent.
  ///
  /// In en, this message translates to:
  /// **'Bot'**
  String get botOpponent;

  /// No description provided for @humanOpponent.
  ///
  /// In en, this message translates to:
  /// **'Opponent'**
  String get humanOpponent;

  /// No description provided for @player2.
  ///
  /// In en, this message translates to:
  /// **'Player 2'**
  String get player2;

  /// No description provided for @correctAnswers.
  ///
  /// In en, this message translates to:
  /// **'Correct Answers'**
  String get correctAnswers;

  /// No description provided for @xpEarned.
  ///
  /// In en, this message translates to:
  /// **'XP Earned'**
  String get xpEarned;

  /// No description provided for @opponentWantsRematch.
  ///
  /// In en, this message translates to:
  /// **'Opponent wants a rematch with you!'**
  String get opponentWantsRematch;

  /// No description provided for @leaderboardTitle.
  ///
  /// In en, this message translates to:
  /// **'LEADERBOARD'**
  String get leaderboardTitle;

  /// No description provided for @leaderboardFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Learn, duel and conquer the top spot! ⭐'**
  String get leaderboardFooter;

  /// No description provided for @totalXp.
  ///
  /// In en, this message translates to:
  /// **'Total XP'**
  String get totalXp;

  /// No description provided for @leaderboardWinStreak.
  ///
  /// In en, this message translates to:
  /// **'Win Streak'**
  String get leaderboardWinStreak;

  /// No description provided for @leaderboardStudyStreak.
  ///
  /// In en, this message translates to:
  /// **'Study Streak'**
  String get leaderboardStudyStreak;

  /// No description provided for @chatWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for opponent...'**
  String get chatWaiting;

  /// No description provided for @chatHint.
  ///
  /// In en, this message translates to:
  /// **'Message your partner...'**
  String get chatHint;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @accountConflictTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Conflict'**
  String get accountConflictTitle;

  /// No description provided for @accountConflictDefaultMsg.
  ///
  /// In en, this message translates to:
  /// **'This Google account already has data saved in the cloud.'**
  String get accountConflictDefaultMsg;

  /// No description provided for @mergeData.
  ///
  /// In en, this message translates to:
  /// **'MERGE DATA'**
  String get mergeData;

  /// No description provided for @overwriteAccount.
  ///
  /// In en, this message translates to:
  /// **'OVERWRITE'**
  String get overwriteAccount;

  /// No description provided for @engToVie.
  ///
  /// In en, this message translates to:
  /// **'ENG → VIE'**
  String get engToVie;

  /// No description provided for @correctProgressSaved.
  ///
  /// In en, this message translates to:
  /// **'Correct! ({time}s) • Progress saved'**
  String correctProgressSaved(String time);

  /// No description provided for @saveToVault.
  ///
  /// In en, this message translates to:
  /// **'Save to Vault'**
  String get saveToVault;

  /// No description provided for @savingToVault.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get savingToVault;

  /// No description provided for @savedToVault.
  ///
  /// In en, this message translates to:
  /// **'Saved to Vault!'**
  String get savedToVault;

  /// No description provided for @displayNameLabel.
  ///
  /// In en, this message translates to:
  /// **'DISPLAY NAME'**
  String get displayNameLabel;

  /// No description provided for @presetAvatars.
  ///
  /// In en, this message translates to:
  /// **'Available Avatars:'**
  String get presetAvatars;

  /// No description provided for @vocabWarrior.
  ///
  /// In en, this message translates to:
  /// **'Vocabulary Warrior'**
  String get vocabWarrior;

  /// No description provided for @vocabWarriorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Win battles to earn more XP and upgrade badges!'**
  String get vocabWarriorSubtitle;

  /// No description provided for @levelProgress.
  ///
  /// In en, this message translates to:
  /// **'LEVEL PROGRESS'**
  String get levelProgress;

  /// No description provided for @levelBadge.
  ///
  /// In en, this message translates to:
  /// **'LEVEL {level}'**
  String levelBadge(int level);

  /// No description provided for @saveProgressGoogle.
  ///
  /// In en, this message translates to:
  /// **'SAVE PROGRESS TO GOOGLE'**
  String get saveProgressGoogle;

  /// No description provided for @logoutSuccess.
  ///
  /// In en, this message translates to:
  /// **'Logged out successfully!'**
  String get logoutSuccess;

  /// No description provided for @enterNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter name...'**
  String get enterNameHint;

  /// No description provided for @bunnyTag.
  ///
  /// In en, this message translates to:
  /// **'Elite Bunny'**
  String get bunnyTag;

  /// No description provided for @pipTag.
  ///
  /// In en, this message translates to:
  /// **'Wise Fox'**
  String get pipTag;

  /// No description provided for @startWithBunny.
  ///
  /// In en, this message translates to:
  /// **'START WITH BUNNY'**
  String get startWithBunny;

  /// No description provided for @startWithPip.
  ///
  /// In en, this message translates to:
  /// **'START WITH PIP'**
  String get startWithPip;

  /// No description provided for @welcomeChooseMascot.
  ///
  /// In en, this message translates to:
  /// **'Welcome to BuFoPia! Choose your companion mascot to start your vocabulary journey:'**
  String get welcomeChooseMascot;

  /// No description provided for @welcomeUserReady.
  ///
  /// In en, this message translates to:
  /// **'Welcome {name} to BuFoPia! Ready to duel!'**
  String welcomeUserReady(String name);

  /// No description provided for @cannotUpdateMascot.
  ///
  /// In en, this message translates to:
  /// **'Cannot update mascot: {error}'**
  String cannotUpdateMascot(String error);

  /// No description provided for @googleCloudSave.
  ///
  /// In en, this message translates to:
  /// **'Google Cloud Save'**
  String get googleCloudSave;

  /// No description provided for @eloScore.
  ///
  /// In en, this message translates to:
  /// **'Elo Score: {score}'**
  String eloScore(int score);

  /// No description provided for @matchesPlayed.
  ///
  /// In en, this message translates to:
  /// **'Matches played: {count}'**
  String matchesPlayed(int count);

  /// No description provided for @lastActive.
  ///
  /// In en, this message translates to:
  /// **'Last active: {time}'**
  String lastActive(String time);

  /// No description provided for @mergeProgressRecommended.
  ///
  /// In en, this message translates to:
  /// **'MERGE PROGRESS (RECOMMENDED)'**
  String get mergeProgressRecommended;

  /// No description provided for @useCloudDataOverwrite.
  ///
  /// In en, this message translates to:
  /// **'Use cloud data (Overwrite)'**
  String get useCloudDataOverwrite;

  /// No description provided for @syncCloudSave.
  ///
  /// In en, this message translates to:
  /// **'SYNC CLOUD SAVE'**
  String get syncCloudSave;

  /// No description provided for @syncCloudPrompt.
  ///
  /// In en, this message translates to:
  /// **'Sync this cloud save to continue your journey?'**
  String get syncCloudPrompt;

  /// No description provided for @weakWordsPractice.
  ///
  /// In en, this message translates to:
  /// **'WEAK WORDS PRACTICE'**
  String get weakWordsPractice;

  /// No description provided for @questionIndex.
  ///
  /// In en, this message translates to:
  /// **'Question {current}/{total}'**
  String questionIndex(int current, int total);

  /// No description provided for @reviewCompletedMsg.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! You have completed the review!'**
  String get reviewCompletedMsg;

  /// No description provided for @loginToSaveVault.
  ///
  /// In en, this message translates to:
  /// **'Please log in to save words to your personal vault.'**
  String get loginToSaveVault;

  /// No description provided for @savedWordToVault.
  ///
  /// In en, this message translates to:
  /// **'Saved \"{word}\" to your Vault!'**
  String savedWordToVault(String word);

  /// No description provided for @practiceSummary.
  ///
  /// In en, this message translates to:
  /// **'PRACTICE SUMMARY'**
  String get practiceSummary;

  /// No description provided for @soloBadge.
  ///
  /// In en, this message translates to:
  /// **'Solo Practice'**
  String get soloBadge;

  /// No description provided for @withFriendsBadge.
  ///
  /// In en, this message translates to:
  /// **'Practice with Friends'**
  String get withFriendsBadge;

  /// No description provided for @yourResults.
  ///
  /// In en, this message translates to:
  /// **'YOUR RESULTS'**
  String get yourResults;

  /// No description provided for @wordsFoundCount.
  ///
  /// In en, this message translates to:
  /// **'{count} words found'**
  String wordsFoundCount(int count);

  /// No description provided for @reviewWordsDesc.
  ///
  /// In en, this message translates to:
  /// **'Review results and words you encountered.'**
  String get reviewWordsDesc;

  /// No description provided for @wordsFound.
  ///
  /// In en, this message translates to:
  /// **'Words Found'**
  String get wordsFound;

  /// No description provided for @wordsToReview.
  ///
  /// In en, this message translates to:
  /// **'Words to Review'**
  String get wordsToReview;

  /// No description provided for @addedToProfile.
  ///
  /// In en, this message translates to:
  /// **'Added to Profile'**
  String get addedToProfile;

  /// No description provided for @resultsBoard.
  ///
  /// In en, this message translates to:
  /// **'Results Board'**
  String get resultsBoard;

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @tiedScore.
  ///
  /// In en, this message translates to:
  /// **'Tied Score'**
  String get tiedScore;

  /// No description provided for @learnedWordsCount.
  ///
  /// In en, this message translates to:
  /// **'Learned Words ({count})'**
  String learnedWordsCount(int count);

  /// No description provided for @skipped.
  ///
  /// In en, this message translates to:
  /// **'Skipped'**
  String get skipped;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @suggestWordFeedback.
  ///
  /// In en, this message translates to:
  /// **'Suggest Word'**
  String get suggestWordFeedback;

  /// No description provided for @practiceAgain.
  ///
  /// In en, this message translates to:
  /// **'PRACTICE AGAIN'**
  String get practiceAgain;

  /// No description provided for @changeTopic.
  ///
  /// In en, this message translates to:
  /// **'CHANGE TOPIC'**
  String get changeTopic;

  /// No description provided for @chatExchange.
  ///
  /// In en, this message translates to:
  /// **'EXCHANGE'**
  String get chatExchange;

  /// No description provided for @chatRoomOnlyToast.
  ///
  /// In en, this message translates to:
  /// **'Chat feature is only available in friend rooms!'**
  String get chatRoomOnlyToast;

  /// No description provided for @opponentLeftTitle.
  ///
  /// In en, this message translates to:
  /// **'OPPONENT LEFT'**
  String get opponentLeftTitle;

  /// No description provided for @opponentLeftPrompt.
  ///
  /// In en, this message translates to:
  /// **'Opponent ({rivalName}) left the room. Do you want to end the match or continue playing solo?'**
  String opponentLeftPrompt(String rivalName);

  /// No description provided for @continueSolo.
  ///
  /// In en, this message translates to:
  /// **'Play Solo'**
  String get continueSolo;

  /// No description provided for @honoraryVictory.
  ///
  /// In en, this message translates to:
  /// **'HONORABLE VICTORY! 🏆'**
  String get honoraryVictory;

  /// No description provided for @opponentLeftMidwayDesc.
  ///
  /// In en, this message translates to:
  /// **'The opponent left the match midway.\nVictory is yours!'**
  String get opponentLeftMidwayDesc;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'BACK TO HOME'**
  String get backToHome;

  /// No description provided for @oneVsOneRandom.
  ///
  /// In en, this message translates to:
  /// **'1 VS 1 RANDOM'**
  String get oneVsOneRandom;

  /// No description provided for @roomOrInviteLink.
  ///
  /// In en, this message translates to:
  /// **'Room code or invite link'**
  String get roomOrInviteLink;

  /// No description provided for @enterCodeOrLinkHint.
  ///
  /// In en, this message translates to:
  /// **'Enter 6-digit code or paste invite link'**
  String get enterCodeOrLinkHint;

  /// No description provided for @enterSharedCodeDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter the code shared by your friend.'**
  String get enterSharedCodeDesc;

  /// No description provided for @createRoomPreDesc.
  ///
  /// In en, this message translates to:
  /// **'Select topic and duration, then create a room to invite friends.'**
  String get createRoomPreDesc;

  /// No description provided for @practiceDuration.
  ///
  /// In en, this message translates to:
  /// **'Practice Duration'**
  String get practiceDuration;

  /// No description provided for @minutesFormat.
  ///
  /// In en, this message translates to:
  /// **'{minutes} MIN'**
  String minutesFormat(int minutes);

  /// No description provided for @copyCode.
  ///
  /// In en, this message translates to:
  /// **'COPY CODE'**
  String get copyCode;

  /// No description provided for @inviteLink.
  ///
  /// In en, this message translates to:
  /// **'INVITE LINK'**
  String get inviteLink;

  /// No description provided for @sendCodeOrLinkDesc.
  ///
  /// In en, this message translates to:
  /// **'Send this code or link to your friends to join the room.'**
  String get sendCodeOrLinkDesc;

  /// No description provided for @membersCount.
  ///
  /// In en, this message translates to:
  /// **'Members ({count})'**
  String membersCount(int count);

  /// No description provided for @roomHost.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get roomHost;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get ready;

  /// No description provided for @preparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing'**
  String get preparing;

  /// No description provided for @waitingFriendsMinPlayers.
  ///
  /// In en, this message translates to:
  /// **'Waiting for friends to join. At least 2 players needed to start.'**
  String get waitingFriendsMinPlayers;

  /// No description provided for @waitingFriendsReady.
  ///
  /// In en, this message translates to:
  /// **'Waiting for friends to get ready...'**
  String get waitingFriendsReady;

  /// No description provided for @allReadyCanStart.
  ///
  /// In en, this message translates to:
  /// **'Everyone is ready! Tap Start to play.'**
  String get allReadyCanStart;

  /// No description provided for @guestReviewTopicGuidance.
  ///
  /// In en, this message translates to:
  /// **'Check topic and time, then tap Ready to duel.'**
  String get guestReviewTopicGuidance;

  /// No description provided for @startGame.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get startGame;

  /// No description provided for @readyBtn.
  ///
  /// In en, this message translates to:
  /// **'READY'**
  String get readyBtn;

  /// No description provided for @cancelReadyBtn.
  ///
  /// In en, this message translates to:
  /// **'CANCEL READY'**
  String get cancelReadyBtn;

  /// No description provided for @leaveRoom.
  ///
  /// In en, this message translates to:
  /// **'LEAVE ROOM'**
  String get leaveRoom;

  /// No description provided for @randomPracticeTopic.
  ///
  /// In en, this message translates to:
  /// **'Random Practice'**
  String get randomPracticeTopic;

  /// No description provided for @earlyEndTitle.
  ///
  /// In en, this message translates to:
  /// **'EARLY END'**
  String get earlyEndTitle;

  /// No description provided for @surrenderConfirmDesc.
  ///
  /// In en, this message translates to:
  /// **'Ending early will stop this practice turn and count the opponent as leading. Are you sure?'**
  String get surrenderConfirmDesc;

  /// No description provided for @stay.
  ///
  /// In en, this message translates to:
  /// **'STAY'**
  String get stay;

  /// No description provided for @matchEnd.
  ///
  /// In en, this message translates to:
  /// **'MATCH END'**
  String get matchEnd;

  /// No description provided for @opponentLivesDepleted.
  ///
  /// In en, this message translates to:
  /// **'Opponent ran out of lives!'**
  String get opponentLivesDepleted;

  /// No description provided for @myLivesDepleted.
  ///
  /// In en, this message translates to:
  /// **'You ran out of lives!'**
  String get myLivesDepleted;

  /// No description provided for @opponentTimeout.
  ///
  /// In en, this message translates to:
  /// **'Opponent ran out of time!'**
  String get opponentTimeout;

  /// No description provided for @myTimeout.
  ///
  /// In en, this message translates to:
  /// **'You ran out of time!'**
  String get myTimeout;

  /// No description provided for @opponentSurrendered.
  ///
  /// In en, this message translates to:
  /// **'Opponent surrendered!'**
  String get opponentSurrendered;

  /// No description provided for @mySurrendered.
  ///
  /// In en, this message translates to:
  /// **'You ended the match early!'**
  String get mySurrendered;

  /// No description provided for @opponentAbandoned.
  ///
  /// In en, this message translates to:
  /// **'Opponent left the match!'**
  String get opponentAbandoned;

  /// No description provided for @victoryBelongsToYou.
  ///
  /// In en, this message translates to:
  /// **'Victory is yours!'**
  String get victoryBelongsToYou;

  /// No description provided for @betterLuckNextTime.
  ///
  /// In en, this message translates to:
  /// **'Better luck next time!'**
  String get betterLuckNextTime;

  /// No description provided for @waitingForOpponent.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR OPPONENT...'**
  String get waitingForOpponent;

  /// No description provided for @rivalReady.
  ///
  /// In en, this message translates to:
  /// **'OPPONENT IS READY!'**
  String get rivalReady;

  /// No description provided for @fastest.
  ///
  /// In en, this message translates to:
  /// **'Fastest'**
  String get fastest;

  /// No description provided for @accuracy.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get accuracy;

  /// No description provided for @streak.
  ///
  /// In en, this message translates to:
  /// **'Streak'**
  String get streak;

  /// No description provided for @correct.
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get correct;

  /// No description provided for @leaderBadge.
  ///
  /// In en, this message translates to:
  /// **'LEADER'**
  String get leaderBadge;

  /// No description provided for @remainingHearts.
  ///
  /// In en, this message translates to:
  /// **'{count} hearts left'**
  String remainingHearts(int count);

  /// No description provided for @leaderStreakChip.
  ///
  /// In en, this message translates to:
  /// **'Leader Streak: {streak}'**
  String leaderStreakChip(int streak);

  /// No description provided for @onlinePracticePartner.
  ///
  /// In en, this message translates to:
  /// **'Online Practice Partner'**
  String get onlinePracticePartner;

  /// No description provided for @leadingTurn.
  ///
  /// In en, this message translates to:
  /// **'Leading Practice Turn'**
  String get leadingTurn;

  /// No description provided for @listenAndPracticeWord.
  ///
  /// In en, this message translates to:
  /// **'Listen & practice pronouncing \"{word}\"!'**
  String listenAndPracticeWord(String word);

  /// No description provided for @saveWordFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save word, please try again.'**
  String get saveWordFailed;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @player.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get player;

  /// No description provided for @anonymous.
  ///
  /// In en, this message translates to:
  /// **'Anonymous'**
  String get anonymous;

  /// No description provided for @rank.
  ///
  /// In en, this message translates to:
  /// **'RANK'**
  String get rank;

  /// No description provided for @matches.
  ///
  /// In en, this message translates to:
  /// **'matches'**
  String get matches;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'ENTER'**
  String get enter;

  /// No description provided for @maybeLater.
  ///
  /// In en, this message translates to:
  /// **'MAYBE LATER'**
  String get maybeLater;

  /// No description provided for @loginGoogle.
  ///
  /// In en, this message translates to:
  /// **'LOG IN WITH GOOGLE'**
  String get loginGoogle;

  /// No description provided for @loginPromptTitle.
  ///
  /// In en, this message translates to:
  /// **'LOGIN REQUIRED'**
  String get loginPromptTitle;

  /// No description provided for @loginToUnlock.
  ///
  /// In en, this message translates to:
  /// **'Log in to unlock'**
  String get loginToUnlock;

  /// No description provided for @loginPromptDesc.
  ///
  /// In en, this message translates to:
  /// **'You are playing as a Guest. Please log in with Google to experience {feature} and save your progress to the Leaderboard!'**
  String loginPromptDesc(String feature);

  /// No description provided for @defaultOnlineModeName.
  ///
  /// In en, this message translates to:
  /// **'Online Match & Custom Room'**
  String get defaultOnlineModeName;

  /// No description provided for @roundWithNumbers.
  ///
  /// In en, this message translates to:
  /// **'ROUND {current} / {total}'**
  String roundWithNumbers(int current, int total);

  /// No description provided for @leaveMatch.
  ///
  /// In en, this message translates to:
  /// **'Leave Match'**
  String get leaveMatch;

  /// No description provided for @leaveMatchTitle.
  ///
  /// In en, this message translates to:
  /// **'LEAVE MATCH?'**
  String get leaveMatchTitle;

  /// No description provided for @leaveMatchWarningSolo.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Leaving midway counts as a loss!'**
  String get leaveMatchWarningSolo;

  /// No description provided for @leaveMatchWarningMulti.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Leaving will end the match for both players!'**
  String get leaveMatchWarningMulti;

  /// No description provided for @leaveMatchConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave this match?'**
  String get leaveMatchConfirm;

  /// No description provided for @opponentLeftMatchTitle.
  ///
  /// In en, this message translates to:
  /// **'OPPONENT LEFT MATCH'**
  String get opponentLeftMatchTitle;

  /// No description provided for @matchEndedOpponentLeft.
  ///
  /// In en, this message translates to:
  /// **'Match ended because the opponent left.'**
  String get matchEndedOpponentLeft;

  /// No description provided for @youLeftMatch.
  ///
  /// In en, this message translates to:
  /// **'You left the match.'**
  String get youLeftMatch;

  /// No description provided for @exitedMatchTitle.
  ///
  /// In en, this message translates to:
  /// **'MATCH EXITED'**
  String get exitedMatchTitle;

  /// No description provided for @opponentLeftMatch.
  ///
  /// In en, this message translates to:
  /// **'Opponent left the match!'**
  String get opponentLeftMatch;

  /// No description provided for @surrender.
  ///
  /// In en, this message translates to:
  /// **'Surrender'**
  String get surrender;

  /// No description provided for @surrenderTitle.
  ///
  /// In en, this message translates to:
  /// **'SURRENDER'**
  String get surrenderTitle;

  /// No description provided for @surrenderMessage.
  ///
  /// In en, this message translates to:
  /// **'Surrendering will count as a loss for this match. Are you sure?'**
  String get surrenderMessage;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'LOADING DATA...'**
  String get loadingData;

  /// No description provided for @waitingForOpponentReady.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR OPPONENT TO BE READY...'**
  String get waitingForOpponentReady;

  /// No description provided for @waitingForOpponentToJoin.
  ///
  /// In en, this message translates to:
  /// **'WAITING FOR OPPONENT TO JOIN...'**
  String get waitingForOpponentToJoin;

  /// No description provided for @createRoomNow.
  ///
  /// In en, this message translates to:
  /// **'CREATE ROOM NOW'**
  String get createRoomNow;

  /// No description provided for @creatingRoom.
  ///
  /// In en, this message translates to:
  /// **'CREATING ROOM...'**
  String get creatingRoom;

  /// No description provided for @copyCodeCaps.
  ///
  /// In en, this message translates to:
  /// **'COPY CODE'**
  String get copyCodeCaps;

  /// No description provided for @copyLinkCaps.
  ///
  /// In en, this message translates to:
  /// **'COPY LINK'**
  String get copyLinkCaps;

  /// No description provided for @recentOpponents.
  ///
  /// In en, this message translates to:
  /// **'5 Recent Opponents ({count})'**
  String recentOpponents(int count);

  /// No description provided for @playOnlineToSaveOpponents.
  ///
  /// In en, this message translates to:
  /// **'Play an online match to save opponents here.'**
  String get playOnlineToSaveOpponents;

  /// No description provided for @playedRecently.
  ///
  /// In en, this message translates to:
  /// **'Played recently'**
  String get playedRecently;

  /// No description provided for @incomingInvitations.
  ///
  /// In en, this message translates to:
  /// **'Incoming invitations'**
  String get incomingInvitations;

  /// No description provided for @noNewInvitations.
  ///
  /// In en, this message translates to:
  /// **'No new invitations.'**
  String get noNewInvitations;

  /// No description provided for @invitationCardDesc.
  ///
  /// In en, this message translates to:
  /// **'{name} invited you to room #{roomCode}'**
  String invitationCardDesc(String name, String roomCode);

  /// No description provided for @enterValid6DigitCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid 6-digit room code!'**
  String get enterValid6DigitCode;

  /// No description provided for @inviteCooldownWait.
  ///
  /// In en, this message translates to:
  /// **'Wait 10 seconds before sending another invite.'**
  String get inviteCooldownWait;

  /// No description provided for @inviteSentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Challenge invitation sent successfully!'**
  String get inviteSentSuccess;

  /// No description provided for @challengeRoomTitle.
  ///
  /// In en, this message translates to:
  /// **'ONLINE BATTLE ROOM'**
  String get challengeRoomTitle;

  /// No description provided for @challengeRoomFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Compete in vocabulary duels with online friends ⭐'**
  String get challengeRoomFooter;

  /// No description provided for @wordChainTitle.
  ///
  /// In en, this message translates to:
  /// **'Word Chain Room'**
  String get wordChainTitle;

  /// No description provided for @turnLabel.
  ///
  /// In en, this message translates to:
  /// **'TURN'**
  String get turnLabel;

  /// No description provided for @yourTurn.
  ///
  /// In en, this message translates to:
  /// **'Your turn'**
  String get yourTurn;

  /// No description provided for @partnerTurn.
  ///
  /// In en, this message translates to:
  /// **'Partner\'s turn'**
  String get partnerTurn;

  /// No description provided for @relaxedUnlimited.
  ///
  /// In en, this message translates to:
  /// **'Relaxed (Unlimited)'**
  String get relaxedUnlimited;

  /// No description provided for @remainingSecondsFormat.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s left'**
  String remainingSecondsFormat(int seconds);

  /// No description provided for @endTurn.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get endTurn;

  /// No description provided for @yourTurnLetter.
  ///
  /// In en, this message translates to:
  /// **'Your turn — enter a word starting with {letter}'**
  String yourTurnLetter(String letter);

  /// No description provided for @yourTurnAny.
  ///
  /// In en, this message translates to:
  /// **'Your turn — enter any word to start'**
  String get yourTurnAny;

  /// No description provided for @rivalThinking.
  ///
  /// In en, this message translates to:
  /// **'{name} is thinking of a connecting word...'**
  String rivalThinking(String name);

  /// No description provided for @enterWordStartingWith.
  ///
  /// In en, this message translates to:
  /// **'Enter a word starting with {letter}...'**
  String enterWordStartingWith(String letter);

  /// No description provided for @enterWordToStart.
  ///
  /// In en, this message translates to:
  /// **'Enter an English word to start...'**
  String get enterWordToStart;

  /// No description provided for @startNewChain.
  ///
  /// In en, this message translates to:
  /// **'Start a new word chain'**
  String get startNewChain;

  /// No description provided for @startNewChainDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter any English word to kick off the match!'**
  String get startNewChainDesc;

  /// No description provided for @correctWordLabel.
  ///
  /// In en, this message translates to:
  /// **'Correct: {word}'**
  String correctWordLabel(String word);

  /// No description provided for @wordChainRoomTitle.
  ///
  /// In en, this message translates to:
  /// **'WORD CHAIN BATTLE ROOM'**
  String get wordChainRoomTitle;

  /// No description provided for @wordChainRoomFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Compete in word chaining with online friends ⭐'**
  String get wordChainRoomFooter;

  /// No description provided for @roomCreationNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Did not receive room creation confirmation. Please try again.'**
  String get roomCreationNotConfirmed;

  /// No description provided for @roomCancelled.
  ///
  /// In en, this message translates to:
  /// **'Battle room cancelled.'**
  String get roomCancelled;

  /// No description provided for @invitationValidFor2Min.
  ///
  /// In en, this message translates to:
  /// **'Invited {name}. Invitation is valid for 2 minutes.'**
  String invitationValidFor2Min(String name);

  /// No description provided for @wordGuess.
  ///
  /// In en, this message translates to:
  /// **'Missing Word'**
  String get wordGuess;

  /// No description provided for @wordGuessRoomTitle.
  ///
  /// In en, this message translates to:
  /// **'WORD GUESS ROOM'**
  String get wordGuessRoomTitle;

  /// No description provided for @wordGuessVocab.
  ///
  /// In en, this message translates to:
  /// **'Word Guess Vocabulary'**
  String get wordGuessVocab;

  /// No description provided for @saveWordError.
  ///
  /// In en, this message translates to:
  /// **'Error saving word: {error}'**
  String saveWordError(String error);

  /// No description provided for @feedbackSentForPlayer.
  ///
  /// In en, this message translates to:
  /// **'Feedback sent for player {name}!'**
  String feedbackSentForPlayer(String name);

  /// No description provided for @recentPartners.
  ///
  /// In en, this message translates to:
  /// **'5 Recent practice partners ({count})'**
  String recentPartners(int count);

  /// No description provided for @noRecentPartners.
  ///
  /// In en, this message translates to:
  /// **'No recent practice partners.'**
  String get noRecentPartners;

  /// No description provided for @recentlyPracticed.
  ///
  /// In en, this message translates to:
  /// **'Recently practiced'**
  String get recentlyPracticed;

  /// No description provided for @practicedOnDate.
  ///
  /// In en, this message translates to:
  /// **'Practiced on {day}/{month}/{year}'**
  String practicedOnDate(int day, int month, int year);

  /// No description provided for @invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get invite;

  /// No description provided for @invitedPartner.
  ///
  /// In en, this message translates to:
  /// **'Invited {name}!'**
  String invitedPartner(String name);

  /// No description provided for @roomCodeMinLength.
  ///
  /// In en, this message translates to:
  /// **'Room code must have at least 4 characters!'**
  String get roomCodeMinLength;

  /// No description provided for @pleaseEnterRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter room code or paste invite link!'**
  String get pleaseEnterRoomCode;

  /// No description provided for @roomUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Word guess room is unavailable or has ended.'**
  String get roomUnavailable;

  /// No description provided for @joinRoomSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully joined room {code}!'**
  String joinRoomSuccess(String code);

  /// No description provided for @joinRoomFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to join room: {error}'**
  String joinRoomFailed(String error);

  /// No description provided for @connectRoomFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect to room: {error}'**
  String connectRoomFailed(String error);

  /// No description provided for @leftRoom.
  ///
  /// In en, this message translates to:
  /// **'Left room.'**
  String get leftRoom;

  /// No description provided for @copiedRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Copied room code: {code}'**
  String copiedRoomCode(String code);

  /// No description provided for @copiedInviteLink.
  ///
  /// In en, this message translates to:
  /// **'Copied invite link!'**
  String get copiedInviteLink;

  /// No description provided for @matchmakingCancelled.
  ///
  /// In en, this message translates to:
  /// **'Matchmaking cancelled.'**
  String get matchmakingCancelled;

  /// No description provided for @matchedOpponentFound.
  ///
  /// In en, this message translates to:
  /// **'OPPONENT FOUND'**
  String get matchedOpponentFound;

  /// No description provided for @readyToCompete.
  ///
  /// In en, this message translates to:
  /// **'READY TO COMPETE'**
  String get readyToCompete;

  /// No description provided for @waitingForOpponentReadyDesc.
  ///
  /// In en, this message translates to:
  /// **'Waiting for opponent to be ready...'**
  String get waitingForOpponentReadyDesc;

  /// No description provided for @preparingMatch.
  ///
  /// In en, this message translates to:
  /// **'Preparing match...'**
  String get preparingMatch;

  /// No description provided for @preparingMatchDesc.
  ///
  /// In en, this message translates to:
  /// **'You will enter the match as soon as connection and deck are ready.'**
  String get preparingMatchDesc;

  /// No description provided for @connectionError.
  ///
  /// In en, this message translates to:
  /// **'Connection error: {error}'**
  String connectionError(String error);

  /// No description provided for @findingTopic.
  ///
  /// In en, this message translates to:
  /// **'FINDING: {topic}...'**
  String findingTopic(String topic);

  /// No description provided for @solvedCorrectlyPoint.
  ///
  /// In en, this message translates to:
  /// **'{name} guessed correctly · +1 pt!'**
  String solvedCorrectlyPoint(String name);

  /// No description provided for @solvedFirst.
  ///
  /// In en, this message translates to:
  /// **'{name} guessed correctly first'**
  String solvedFirst(String name);

  /// No description provided for @greatJob.
  ///
  /// In en, this message translates to:
  /// **'Great! 👍'**
  String get greatJob;

  /// No description provided for @plusGreat.
  ///
  /// In en, this message translates to:
  /// **'+ Great!'**
  String get plusGreat;

  /// No description provided for @suggestSkipWord.
  ///
  /// In en, this message translates to:
  /// **'Teammate suggested SKIPPING this word!'**
  String get suggestSkipWord;

  /// No description provided for @autoSkipCountdown.
  ///
  /// In en, this message translates to:
  /// **'Auto-skips in 5 seconds if no one objects'**
  String get autoSkipCountdown;

  /// No description provided for @agree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get agree;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @topicWithPlayers.
  ///
  /// In en, this message translates to:
  /// **'{topic} · {count} players'**
  String topicWithPlayers(String topic, int count);

  /// No description provided for @translateToEnglish.
  ///
  /// In en, this message translates to:
  /// **'TRANSLATE TO ENGLISH'**
  String get translateToEnglish;

  /// No description provided for @topicHeader.
  ///
  /// In en, this message translates to:
  /// **'TOPIC: {topic}'**
  String topicHeader(String topic);

  /// No description provided for @choosingOption.
  ///
  /// In en, this message translates to:
  /// **'Choosing...'**
  String get choosingOption;

  /// No description provided for @thinkingOption.
  ///
  /// In en, this message translates to:
  /// **'Thinking...'**
  String get thinkingOption;

  /// No description provided for @youColon.
  ///
  /// In en, this message translates to:
  /// **'You: '**
  String get youColon;

  /// No description provided for @opponentColon.
  ///
  /// In en, this message translates to:
  /// **'Opponent: '**
  String get opponentColon;

  /// No description provided for @selectedBadge.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selectedBadge;

  /// No description provided for @loadingVocabSet.
  ///
  /// In en, this message translates to:
  /// **'LOADING VOCABULARY SET...'**
  String get loadingVocabSet;

  /// No description provided for @weakWordsSRS.
  ///
  /// In en, this message translates to:
  /// **'WEAK WORDS REVIEW (SRS)'**
  String get weakWordsSRS;

  /// No description provided for @srsAlgorithmDesc.
  ///
  /// In en, this message translates to:
  /// **'⭐ Spaced Repetition Algorithm automatically reminds you of forgotten words ⭐'**
  String get srsAlgorithmDesc;

  /// No description provided for @noWeakWordsTitle.
  ///
  /// In en, this message translates to:
  /// **'No weak words to review!'**
  String get noWeakWordsTitle;

  /// No description provided for @noWeakWordsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Join Quick Battle to accumulate and test your vocabulary!'**
  String get noWeakWordsSubtitle;

  /// No description provided for @totalWordsInProfile.
  ///
  /// In en, this message translates to:
  /// **'Total: {count} words in memory profile'**
  String totalWordsInProfile(int count);

  /// No description provided for @practiceNow.
  ///
  /// In en, this message translates to:
  /// **'Practice Now'**
  String get practiceNow;

  /// No description provided for @familiarityInterval.
  ///
  /// In en, this message translates to:
  /// **'Familiarity: {familiarity}/5 • Repeat: {days} days'**
  String familiarityInterval(int familiarity, int days);

  /// No description provided for @frequentlyForgotten.
  ///
  /// In en, this message translates to:
  /// **'Frequently forgotten ({count})'**
  String frequentlyForgotten(int count);

  /// No description provided for @wellRemembered.
  ///
  /// In en, this message translates to:
  /// **'Well remembered'**
  String get wellRemembered;

  /// No description provided for @chatWithRival.
  ///
  /// In en, this message translates to:
  /// **'Chat with {name}'**
  String chatWithRival(String name);

  /// No description provided for @noMessagesYet.
  ///
  /// In en, this message translates to:
  /// **'No messages yet.\nSay hello to your partner!'**
  String get noMessagesYet;

  /// No description provided for @chatDefaultCheer.
  ///
  /// In en, this message translates to:
  /// **'Keep it up! Let\'s chain words together.'**
  String get chatDefaultCheer;

  /// No description provided for @pronunciationScore.
  ///
  /// In en, this message translates to:
  /// **'PRONUNCIATION ASSESSMENT'**
  String get pronunciationScore;

  /// No description provided for @listenSampleAudio.
  ///
  /// In en, this message translates to:
  /// **'Listen to sample'**
  String get listenSampleAudio;

  /// No description provided for @accuracyMetric.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get accuracyMetric;

  /// No description provided for @fluencyMetric.
  ///
  /// In en, this message translates to:
  /// **'Fluency'**
  String get fluencyMetric;

  /// No description provided for @completenessMetric.
  ///
  /// In en, this message translates to:
  /// **'Completeness'**
  String get completenessMetric;

  /// No description provided for @assessingPronunciation.
  ///
  /// In en, this message translates to:
  /// **'Assessing...'**
  String get assessingPronunciation;

  /// No description provided for @tapToAssess.
  ///
  /// In en, this message translates to:
  /// **'Tap to check pronunciation'**
  String get tapToAssess;

  /// No description provided for @micInitFailed.
  ///
  /// In en, this message translates to:
  /// **'Cannot start microphone recording. Please try again!'**
  String get micInitFailed;

  /// No description provided for @pronScoreGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get pronScoreGood;

  /// No description provided for @pronScoreFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get pronScoreFair;

  /// No description provided for @pronScoreWeak.
  ///
  /// In en, this message translates to:
  /// **'Needs improvement'**
  String get pronScoreWeak;

  /// No description provided for @noWeakWordsToSave.
  ///
  /// In en, this message translates to:
  /// **'No weak words to save to Vault!'**
  String get noWeakWordsToSave;

  /// No description provided for @savedAllWeakWords.
  ///
  /// In en, this message translates to:
  /// **'Saved all {count} review words to your Vault!'**
  String savedAllWeakWords(int count);

  /// No description provided for @saveAllToVault.
  ///
  /// In en, this message translates to:
  /// **'Save All to Vault'**
  String get saveAllToVault;

  /// No description provided for @startPracticing.
  ///
  /// In en, this message translates to:
  /// **'Start Practicing'**
  String get startPracticing;

  /// No description provided for @weakWordsList.
  ///
  /// In en, this message translates to:
  /// **'List of {count} words to review'**
  String weakWordsList(int count);

  /// No description provided for @yourContributions.
  ///
  /// In en, this message translates to:
  /// **'Your contributions'**
  String get yourContributions;

  /// No description provided for @contributionHistory.
  ///
  /// In en, this message translates to:
  /// **'HISTORY'**
  String get contributionHistory;

  /// No description provided for @botMedium.
  ///
  /// In en, this message translates to:
  /// **'BOT (MEDIUM)'**
  String get botMedium;

  /// No description provided for @calculatingReward.
  ///
  /// In en, this message translates to:
  /// **'Calculating rewards & saving results...'**
  String get calculatingReward;

  /// No description provided for @levelUpBanner.
  ///
  /// In en, this message translates to:
  /// **'LEVEL UP! Lv.{oldLevel} ➔ Lv.{newLevel}'**
  String levelUpBanner(int oldLevel, int newLevel);

  /// No description provided for @waitingForRematchAccept.
  ///
  /// In en, this message translates to:
  /// **'Waiting for opponent to accept rematch...'**
  String get waitingForRematchAccept;

  /// No description provided for @leadPracticeRound.
  ///
  /// In en, this message translates to:
  /// **'Leading practice round'**
  String get leadPracticeRound;

  /// No description provided for @cannotLoadLeaderboard.
  ///
  /// In en, this message translates to:
  /// **'Unable to load leaderboard'**
  String get cannotLoadLeaderboard;

  /// No description provided for @noLeaderboardData.
  ///
  /// In en, this message translates to:
  /// **'No leaderboard data yet'**
  String get noLeaderboardData;

  /// No description provided for @leaderboardFooterText.
  ///
  /// In en, this message translates to:
  /// **'⭐ Learn, duel and conquer the top ranking! ⭐'**
  String get leaderboardFooterText;

  /// No description provided for @newContribution.
  ///
  /// In en, this message translates to:
  /// **'New Contribution'**
  String get newContribution;

  /// No description provided for @practiceWeakWordsTitle.
  ///
  /// In en, this message translates to:
  /// **'WEAK WORDS PRACTICE'**
  String get practiceWeakWordsTitle;

  /// No description provided for @questionProgress.
  ///
  /// In en, this message translates to:
  /// **'Question {current}/{total}'**
  String questionProgress(int current, int total);

  /// No description provided for @otherMeaning.
  ///
  /// In en, this message translates to:
  /// **'Other meaning {index}'**
  String otherMeaning(int index);

  /// No description provided for @defaultGameDialogFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Happy Learning Daily - Practice English Vocabulary ⭐'**
  String get defaultGameDialogFooter;

  /// No description provided for @feedbackFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Your feedback helps Bufopia improve every day ⭐'**
  String get feedbackFooter;

  /// No description provided for @privacyFooter.
  ///
  /// In en, this message translates to:
  /// **'⭐ Bufopia is committed to data protection & privacy ⭐'**
  String get privacyFooter;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'POLICIES & TERMS'**
  String get privacyPolicyTitle;

  /// No description provided for @privacyUnderstoodAgreed.
  ///
  /// In en, this message translates to:
  /// **'I UNDERSTAND AND AGREE'**
  String get privacyUnderstoodAgreed;

  /// No description provided for @historyWordsTab.
  ///
  /// In en, this message translates to:
  /// **'Played Words History'**
  String get historyWordsTab;

  /// No description provided for @generalFeedbackTab.
  ///
  /// In en, this message translates to:
  /// **'General Feedback / Other'**
  String get generalFeedbackTab;

  /// No description provided for @feedbackQuestion.
  ///
  /// In en, this message translates to:
  /// **'What would you like Bufopia to improve?'**
  String get feedbackQuestion;

  /// No description provided for @feedbackCategoryIdea.
  ///
  /// In en, this message translates to:
  /// **'Idea'**
  String get feedbackCategoryIdea;

  /// No description provided for @feedbackCategoryBug.
  ///
  /// In en, this message translates to:
  /// **'App Bug'**
  String get feedbackCategoryBug;

  /// No description provided for @feedbackCategoryFeature.
  ///
  /// In en, this message translates to:
  /// **'New Feature'**
  String get feedbackCategoryFeature;

  /// No description provided for @feedbackCategoryUI.
  ///
  /// In en, this message translates to:
  /// **'UI & Audio'**
  String get feedbackCategoryUI;

  /// No description provided for @feedbackCategoryOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get feedbackCategoryOther;

  /// No description provided for @feedbackContent.
  ///
  /// In en, this message translates to:
  /// **'Feedback content'**
  String get feedbackContent;

  /// No description provided for @feedbackContentHint.
  ///
  /// In en, this message translates to:
  /// **'Describe ideas, bugs encountered, or areas you wish to upgrade...'**
  String get feedbackContentHint;

  /// No description provided for @feedbackMinLength.
  ///
  /// In en, this message translates to:
  /// **'Please describe in more detail — at least 10 characters.'**
  String get feedbackMinLength;

  /// No description provided for @feedbackContact.
  ///
  /// In en, this message translates to:
  /// **'Contact info (optional)'**
  String get feedbackContact;

  /// No description provided for @feedbackContactHint.
  ///
  /// In en, this message translates to:
  /// **'Email, Discord or other contact method...'**
  String get feedbackContactHint;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'SEND FEEDBACK'**
  String get sendFeedback;

  /// No description provided for @sendingFeedback.
  ///
  /// In en, this message translates to:
  /// **'SENDING...'**
  String get sendingFeedback;

  /// No description provided for @feedbackThanks.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your feedback!'**
  String get feedbackThanks;

  /// No description provided for @feedbackWordReportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your suggestion for \'{word}\' has been forwarded to Bufopia moderators for review and early update.'**
  String feedbackWordReportSuccess(String word);

  /// No description provided for @feedbackGeneralSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your feedback has been recorded and will help Bufopia improve every day.'**
  String get feedbackGeneralSuccess;

  /// No description provided for @viewOtherWords.
  ///
  /// In en, this message translates to:
  /// **'VIEW OTHER WORDS'**
  String get viewOtherWords;

  /// No description provided for @sendOtherFeedback.
  ///
  /// In en, this message translates to:
  /// **'SEND ANOTHER FEEDBACK'**
  String get sendOtherFeedback;

  /// No description provided for @feedbackIssueMeaning.
  ///
  /// In en, this message translates to:
  /// **'Correct Vietnamese meaning'**
  String get feedbackIssueMeaning;

  /// No description provided for @feedbackIssueSpelling.
  ///
  /// In en, this message translates to:
  /// **'English spelling error'**
  String get feedbackIssueSpelling;

  /// No description provided for @feedbackIssuePronunciation.
  ///
  /// In en, this message translates to:
  /// **'Correct phonetics / pronunciation'**
  String get feedbackIssuePronunciation;

  /// No description provided for @feedbackIssueContext.
  ///
  /// In en, this message translates to:
  /// **'Unnatural meaning / missing context'**
  String get feedbackIssueContext;

  /// No description provided for @feedbackIssueOther.
  ///
  /// In en, this message translates to:
  /// **'Other suggestions'**
  String get feedbackIssueOther;

  /// No description provided for @feedbackHintMeaning.
  ///
  /// In en, this message translates to:
  /// **'Example: \'{en}\' should be translated as \'...\' instead of \'{vi}\' because...'**
  String feedbackHintMeaning(String en, String vi);

  /// No description provided for @feedbackHintSpelling.
  ///
  /// In en, this message translates to:
  /// **'Example: English word \'{en}\' correct spelling is...'**
  String feedbackHintSpelling(String en);

  /// No description provided for @feedbackHintPronunciation.
  ///
  /// In en, this message translates to:
  /// **'Example: Correct phonetic of \'{en}\' should be /.../'**
  String feedbackHintPronunciation(String en);

  /// No description provided for @feedbackHintContext.
  ///
  /// In en, this message translates to:
  /// **'Describe more suitable context for \'{en}\'...'**
  String feedbackHintContext(String en);

  /// No description provided for @feedbackHintOther.
  ///
  /// In en, this message translates to:
  /// **'Describe your detailed feedback for \'{en}\'...'**
  String feedbackHintOther(String en);

  /// No description provided for @searchVocabularyHint.
  ///
  /// In en, this message translates to:
  /// **'Search English, Vietnamese, topic...'**
  String get searchVocabularyHint;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @noWordsFound.
  ///
  /// In en, this message translates to:
  /// **'No matching vocabulary found!'**
  String get noWordsFound;

  /// No description provided for @cannotFindWordInHistory.
  ///
  /// In en, this message translates to:
  /// **'Can\'t find word in history? Tap to search entire dictionary'**
  String get cannotFindWordInHistory;

  /// No description provided for @allGameModes.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allGameModes;

  /// No description provided for @wordChainMode.
  ///
  /// In en, this message translates to:
  /// **'Word Chain'**
  String get wordChainMode;

  /// No description provided for @vocabBattleMode.
  ///
  /// In en, this message translates to:
  /// **'Vocab Battle'**
  String get vocabBattleMode;

  /// No description provided for @wordGuessMode.
  ///
  /// In en, this message translates to:
  /// **'Word Guess'**
  String get wordGuessMode;

  /// No description provided for @reviewMode.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get reviewMode;

  /// No description provided for @streakDaysCount.
  ///
  /// In en, this message translates to:
  /// **'{count} days'**
  String streakDaysCount(int count);

  /// No description provided for @streakMatchesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} matches'**
  String streakMatchesCount(int count);

  /// No description provided for @chooseAvatarTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Avatar'**
  String get chooseAvatarTitle;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// No description provided for @openCamera.
  ///
  /// In en, this message translates to:
  /// **'Open Camera'**
  String get openCamera;

  /// No description provided for @openGallery.
  ///
  /// In en, this message translates to:
  /// **'Open Gallery'**
  String get openGallery;

  /// No description provided for @photoGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get photoGallery;

  /// No description provided for @chooseFromDevice.
  ///
  /// In en, this message translates to:
  /// **'Choose from Device'**
  String get chooseFromDevice;

  /// No description provided for @photoGalleryTitle.
  ///
  /// In en, this message translates to:
  /// **'Photo Gallery'**
  String get photoGalleryTitle;

  /// No description provided for @photosTab.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get photosTab;

  /// No description provided for @albumsTab.
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get albumsTab;

  /// No description provided for @cameraTile.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get cameraTile;

  /// No description provided for @photosSelected.
  ///
  /// In en, this message translates to:
  /// **'{count} photo selected'**
  String photosSelected(int count);

  /// No description provided for @tapPhotoToSelect.
  ///
  /// In en, this message translates to:
  /// **'Tap photo to select'**
  String get tapPhotoToSelect;

  /// No description provided for @nextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// No description provided for @pickDirectlyFromStorage.
  ///
  /// In en, this message translates to:
  /// **'Pick photos directly from storage without granting permissions.'**
  String get pickDirectlyFromStorage;

  /// No description provided for @noAlbumsFound.
  ///
  /// In en, this message translates to:
  /// **'No albums found'**
  String get noAlbumsFound;

  /// No description provided for @albumPhotosCount.
  ///
  /// In en, this message translates to:
  /// **'{count} photos'**
  String albumPhotosCount(int count);

  /// No description provided for @cannotOpenCameraPermission.
  ///
  /// In en, this message translates to:
  /// **'Cannot open camera. Please grant camera permission in Settings.'**
  String get cannotOpenCameraPermission;

  /// No description provided for @noCameraAvailable.
  ///
  /// In en, this message translates to:
  /// **'No available camera found.'**
  String get noCameraAvailable;

  /// No description provided for @cameraInitError.
  ///
  /// In en, this message translates to:
  /// **'Camera initialization error: {error}'**
  String cameraInitError(String error);

  /// No description provided for @takePictureError.
  ///
  /// In en, this message translates to:
  /// **'Failed to take picture: {error}'**
  String takePictureError(String error);

  /// No description provided for @retake.
  ///
  /// In en, this message translates to:
  /// **'Retake'**
  String get retake;

  /// No description provided for @useThisPhoto.
  ///
  /// In en, this message translates to:
  /// **'Use this photo'**
  String get useThisPhoto;

  /// No description provided for @alignFaceInCircle.
  ///
  /// In en, this message translates to:
  /// **'Align face inside the circle'**
  String get alignFaceInCircle;

  /// No description provided for @toggleFlash.
  ///
  /// In en, this message translates to:
  /// **'Toggle flash'**
  String get toggleFlash;

  /// No description provided for @switchCamera.
  ///
  /// In en, this message translates to:
  /// **'Switch camera'**
  String get switchCamera;

  /// No description provided for @nameRequiredOnline.
  ///
  /// In en, this message translates to:
  /// **'Please enter a display name (2–25 characters) before joining Online match!'**
  String get nameRequiredOnline;

  /// No description provided for @nameInvalidNotice.
  ///
  /// In en, this message translates to:
  /// **'Invalid name. Please use 2–25 characters and avoid default names.'**
  String get nameInvalidNotice;

  /// No description provided for @foundRivalEnteringMatch.
  ///
  /// In en, this message translates to:
  /// **'Found rival {rivalName}! Entering match...'**
  String foundRivalEnteringMatch(String rivalName);

  /// No description provided for @enteredRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Entered battle room #{code}!'**
  String enteredRoomCode(String code);

  /// No description provided for @randomBattle.
  ///
  /// In en, this message translates to:
  /// **'Random Battle'**
  String get randomBattle;

  /// No description provided for @autoTopicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'System auto-selects topics'**
  String get autoTopicSubtitle;

  /// No description provided for @dailyLifeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Daily life & routines'**
  String get dailyLifeSubtitle;

  /// No description provided for @schoolSubtitle.
  ///
  /// In en, this message translates to:
  /// **'School & studying'**
  String get schoolSubtitle;

  /// No description provided for @travelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Travel & exploration'**
  String get travelSubtitle;

  /// No description provided for @foodSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Food & dining'**
  String get foodSubtitle;

  /// No description provided for @familySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Family & relationships'**
  String get familySubtitle;

  /// No description provided for @bodySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Body & health'**
  String get bodySubtitle;

  /// No description provided for @clothesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Clothing & accessories'**
  String get clothesSubtitle;

  /// No description provided for @shoppingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Shopping & money'**
  String get shoppingSubtitle;

  /// No description provided for @townSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Places in town'**
  String get townSubtitle;

  /// No description provided for @directionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Directions & positions'**
  String get directionsSubtitle;

  /// No description provided for @jobsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Jobs & workplaces'**
  String get jobsSubtitle;

  /// No description provided for @hobbiesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hobbies & leisure'**
  String get hobbiesSubtitle;

  /// No description provided for @sportsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sports & fitness'**
  String get sportsSubtitle;

  /// No description provided for @animalsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Animals & pets'**
  String get animalsSubtitle;

  /// No description provided for @timeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Time & calendar'**
  String get timeSubtitle;

  /// No description provided for @shapesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Colors & shapes'**
  String get shapesSubtitle;

  /// No description provided for @celebrationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Festivals & celebrations'**
  String get celebrationsSubtitle;

  /// No description provided for @feelingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Feelings & personality'**
  String get feelingsSubtitle;

  /// No description provided for @environmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Nature & environment'**
  String get environmentSubtitle;

  /// No description provided for @technologySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Technology & digital'**
  String get technologySubtitle;

  /// No description provided for @communicationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Communication & social'**
  String get communicationSubtitle;

  /// No description provided for @toeicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Workplace TOEIC vocabulary'**
  String get toeicSubtitle;

  /// No description provided for @ieltsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Core IELTS vocabulary'**
  String get ieltsSubtitle;

  /// No description provided for @topicVocabularySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Topic vocabulary'**
  String get topicVocabularySubtitle;

  /// No description provided for @privacyTab.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyTab;

  /// No description provided for @termsTab.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get termsTab;

  /// No description provided for @cookiesTab.
  ///
  /// In en, this message translates to:
  /// **'Cookies'**
  String get cookiesTab;

  /// No description provided for @deletionTab.
  ///
  /// In en, this message translates to:
  /// **'Delete Data'**
  String get deletionTab;

  /// No description provided for @dataProtectionTag.
  ///
  /// In en, this message translates to:
  /// **'Data Protection'**
  String get dataProtectionTag;

  /// No description provided for @codeOfConductTag.
  ///
  /// In en, this message translates to:
  /// **'Code of Conduct'**
  String get codeOfConductTag;

  /// No description provided for @deviceStorageTag.
  ///
  /// In en, this message translates to:
  /// **'Device Storage'**
  String get deviceStorageTag;

  /// No description provided for @yourRightsTag.
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get yourRightsTag;

  /// No description provided for @pointsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} pts'**
  String pointsCount(int count);

  /// No description provided for @questionsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} questions'**
  String questionsCount(int count);

  /// No description provided for @adjustPhoto.
  ///
  /// In en, this message translates to:
  /// **'Adjust Photo'**
  String get adjustPhoto;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @cropPhotoInstruction.
  ///
  /// In en, this message translates to:
  /// **'Drag & pinch to fit the photo inside the square'**
  String get cropPhotoInstruction;

  /// No description provided for @findMatchOnline.
  ///
  /// In en, this message translates to:
  /// **'FIND MATCH ONLINE'**
  String get findMatchOnline;

  /// No description provided for @reviewVocabTitle.
  ///
  /// In en, this message translates to:
  /// **'Review Vocabulary'**
  String get reviewVocabTitle;

  /// No description provided for @defaultPlayerName.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get defaultPlayerName;

  /// No description provided for @connectedStatus.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connectedStatus;

  /// No description provided for @wordsNeedReview.
  ///
  /// In en, this message translates to:
  /// **'words to review'**
  String get wordsNeedReview;

  /// No description provided for @noWeakWordsReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Great! No weak words to review'**
  String get noWeakWordsReviewTitle;

  /// No description provided for @noWeakWordsReviewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All words you learned are in good shape.'**
  String get noWeakWordsReviewSubtitle;

  /// No description provided for @wrongAnswer.
  ///
  /// In en, this message translates to:
  /// **'Incorrect answer'**
  String get wrongAnswer;

  /// No description provided for @slowResponse.
  ///
  /// In en, this message translates to:
  /// **'Slow response'**
  String get slowResponse;

  /// No description provided for @editWordBadge.
  ///
  /// In en, this message translates to:
  /// **'EDIT WORD'**
  String get editWordBadge;

  /// No description provided for @newContributionBadge.
  ///
  /// In en, this message translates to:
  /// **'NEW CONTRIBUTION'**
  String get newContributionBadge;

  /// No description provided for @dailyContributionLimit.
  ///
  /// In en, this message translates to:
  /// **'Max {count} words/day'**
  String dailyContributionLimit(int count);

  /// No description provided for @addAnEnglishWord.
  ///
  /// In en, this message translates to:
  /// **'Add an English word'**
  String get addAnEnglishWord;

  /// No description provided for @editContributedWord.
  ///
  /// In en, this message translates to:
  /// **'Edit contributed word'**
  String get editContributedWord;

  /// No description provided for @englishWordField.
  ///
  /// In en, this message translates to:
  /// **'English word *'**
  String get englishWordField;

  /// No description provided for @vietnameseMeaningField.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese meaning *'**
  String get vietnameseMeaningField;

  /// No description provided for @topicField.
  ///
  /// In en, this message translates to:
  /// **'Topic *'**
  String get topicField;

  /// No description provided for @partOfSpeechField.
  ///
  /// In en, this message translates to:
  /// **'Part of speech'**
  String get partOfSpeechField;

  /// No description provided for @phoneticField.
  ///
  /// In en, this message translates to:
  /// **'Phonetic transcription'**
  String get phoneticField;

  /// No description provided for @exampleSentenceField.
  ///
  /// In en, this message translates to:
  /// **'English example sentence'**
  String get exampleSentenceField;

  /// No description provided for @exampleSentenceHint.
  ///
  /// In en, this message translates to:
  /// **'Example sentence must contain the contributed word'**
  String get exampleSentenceHint;

  /// No description provided for @exampleTranslationField.
  ///
  /// In en, this message translates to:
  /// **'Example translation'**
  String get exampleTranslationField;

  /// No description provided for @exampleTranslationHint.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese translation'**
  String get exampleTranslationHint;

  /// No description provided for @contributionGuidelines.
  ///
  /// In en, this message translates to:
  /// **'Contributions will be reviewed before being added to the vocabulary pool. Please provide clear meanings and examples, and do not submit personal info.'**
  String get contributionGuidelines;

  /// No description provided for @submitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get submitting;

  /// No description provided for @submitContribution.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT CONTRIBUTION'**
  String get submitContribution;

  /// No description provided for @pleaseEnterEnglishWord.
  ///
  /// In en, this message translates to:
  /// **'Please enter an English word!'**
  String get pleaseEnterEnglishWord;

  /// No description provided for @pleaseEnterVietnameseMeaning.
  ///
  /// In en, this message translates to:
  /// **'Please enter the Vietnamese meaning!'**
  String get pleaseEnterVietnameseMeaning;

  /// No description provided for @nWordsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} words'**
  String nWordsCount(int count);

  /// No description provided for @refreshAction.
  ///
  /// In en, this message translates to:
  /// **'REFRESH'**
  String get refreshAction;

  /// No description provided for @noContributionsYet.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t submitted any words yet. Start with a useful word!'**
  String get noContributionsYet;

  /// No description provided for @statusApproved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get statusApproved;

  /// No description provided for @statusRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get statusRejected;

  /// No description provided for @statusChangesRequested.
  ///
  /// In en, this message translates to:
  /// **'Changes requested'**
  String get statusChangesRequested;

  /// No description provided for @statusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get statusPending;

  /// No description provided for @reviewerFeedback.
  ///
  /// In en, this message translates to:
  /// **'Reviewer feedback:'**
  String get reviewerFeedback;

  /// No description provided for @editAndResubmit.
  ///
  /// In en, this message translates to:
  /// **'Edit & resubmit'**
  String get editAndResubmit;

  /// No description provided for @randomPractice.
  ///
  /// In en, this message translates to:
  /// **'Random practice'**
  String get randomPractice;

  /// No description provided for @leavePracticeRoomTitle.
  ///
  /// In en, this message translates to:
  /// **'LEAVE PRACTICE ROOM?'**
  String get leavePracticeRoomTitle;

  /// No description provided for @leavePracticeRoomConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit this practice session?'**
  String get leavePracticeRoomConfirm;

  /// No description provided for @leave.
  ///
  /// In en, this message translates to:
  /// **'LEAVE'**
  String get leave;

  /// No description provided for @endGameEarlyTitle.
  ///
  /// In en, this message translates to:
  /// **'END GAME EARLY'**
  String get endGameEarlyTitle;

  /// No description provided for @endGameEarlyConfirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to end practice early and see results?'**
  String get endGameEarlyConfirm;

  /// No description provided for @continuePlaying.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get continuePlaying;

  /// No description provided for @endGame.
  ///
  /// In en, this message translates to:
  /// **'END GAME'**
  String get endGame;

  /// No description provided for @wordRoundFoundCount.
  ///
  /// In en, this message translates to:
  /// **'Word {round} · {found} found'**
  String wordRoundFoundCount(int round, int found);

  /// No description provided for @wordRound.
  ///
  /// In en, this message translates to:
  /// **'Word {round}'**
  String wordRound(int round);

  /// No description provided for @meaningClue.
  ///
  /// In en, this message translates to:
  /// **'MEANING CLUE'**
  String get meaningClue;

  /// No description provided for @loadingClue.
  ///
  /// In en, this message translates to:
  /// **'Loading clue...'**
  String get loadingClue;

  /// No description provided for @nLettersCount.
  ///
  /// In en, this message translates to:
  /// **'{count} letters'**
  String nLettersCount(int count);

  /// No description provided for @triedGuessesCount.
  ///
  /// In en, this message translates to:
  /// **'Tried ({count}):'**
  String triedGuessesCount(int count);

  /// No description provided for @noGuessesYet.
  ///
  /// In en, this message translates to:
  /// **'Tried: No guesses yet'**
  String get noGuessesYet;

  /// No description provided for @skipWordAction.
  ///
  /// In en, this message translates to:
  /// **'SKIP'**
  String get skipWordAction;

  /// No description provided for @enterEnglishWordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter English word...'**
  String get enterEnglishWordHint;

  /// No description provided for @guessAction.
  ///
  /// In en, this message translates to:
  /// **'GUESS'**
  String get guessAction;

  /// No description provided for @academicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Academic & Education'**
  String get academicSubtitle;

  /// No description provided for @posNoun.
  ///
  /// In en, this message translates to:
  /// **'Noun'**
  String get posNoun;

  /// No description provided for @posVerb.
  ///
  /// In en, this message translates to:
  /// **'Verb'**
  String get posVerb;

  /// No description provided for @posAdjective.
  ///
  /// In en, this message translates to:
  /// **'Adjective'**
  String get posAdjective;

  /// No description provided for @posAdverb.
  ///
  /// In en, this message translates to:
  /// **'Adverb'**
  String get posAdverb;

  /// No description provided for @posPhrase.
  ///
  /// In en, this message translates to:
  /// **'Phrase'**
  String get posPhrase;

  /// No description provided for @posUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unspecified'**
  String get posUnknown;

  /// No description provided for @autoDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get autoDifficulty;

  /// No description provided for @settingsFooterWish.
  ///
  /// In en, this message translates to:
  /// **'⭐ Have a wonderful experience with Bufopia! ⭐'**
  String get settingsFooterWish;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guest;

  /// No description provided for @noPracticeQuestionsFound.
  ///
  /// In en, this message translates to:
  /// **'No matching practice question set found.'**
  String get noPracticeQuestionsFound;

  /// No description provided for @errorLoadingPracticeQuestions.
  ///
  /// In en, this message translates to:
  /// **'Error loading practice questions: {error}'**
  String errorLoadingPracticeQuestions(String error);

  /// No description provided for @incorrectTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Incorrect, please try again!'**
  String get incorrectTryAgain;

  /// No description provided for @correctAddXp.
  ///
  /// In en, this message translates to:
  /// **'Correct! +{count} XP'**
  String correctAddXp(int count);

  /// No description provided for @errorSubmittingAnswer.
  ///
  /// In en, this message translates to:
  /// **'Error submitting answer: {error}'**
  String errorSubmittingAnswer(String error);

  /// No description provided for @correctWordIs.
  ///
  /// In en, this message translates to:
  /// **'Correct word: {word}'**
  String correctWordIs(String word);

  /// No description provided for @completedAllPracticeQuestions.
  ///
  /// In en, this message translates to:
  /// **'You have completed all practice questions!'**
  String get completedAllPracticeQuestions;

  /// No description provided for @cannotConnectMatchmaking.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to matchmaking: {error}'**
  String cannotConnectMatchmaking(String error);

  /// No description provided for @cannotConnectRoom.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to the room: {error}'**
  String cannotConnectRoom(String error);

  /// No description provided for @opponentGuessedFirstScore.
  ///
  /// In en, this message translates to:
  /// **'{name} guessed correctly first · +1 point · next question!'**
  String opponentGuessedFirstScore(String name);

  /// No description provided for @opponentGuessedFirstNext.
  ///
  /// In en, this message translates to:
  /// **'{name} guessed correctly first. Moving to next question...'**
  String opponentGuessedFirstNext(String name);

  /// No description provided for @wordIncorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect word'**
  String get wordIncorrect;

  /// No description provided for @messageBlocked.
  ///
  /// In en, this message translates to:
  /// **'Message blocked: {reason}'**
  String messageBlocked(String reason);

  /// No description provided for @skipVoteEnded.
  ///
  /// In en, this message translates to:
  /// **'Skip vote has ended ({reason})'**
  String skipVoteEnded(String reason);

  /// No description provided for @rewardReceivedXp.
  ///
  /// In en, this message translates to:
  /// **'Reward received: +{xp} XP'**
  String rewardReceivedXp(int xp);

  /// No description provided for @botRivalName.
  ///
  /// In en, this message translates to:
  /// **'Bot'**
  String get botRivalName;

  /// No description provided for @errorInitPracticeSession.
  ///
  /// In en, this message translates to:
  /// **'Unable to initialize practice session: {error}'**
  String errorInitPracticeSession(String error);

  /// No description provided for @errorConnectMatchmaking.
  ///
  /// In en, this message translates to:
  /// **'Connection error finding match: {error}'**
  String errorConnectMatchmaking(String error);

  /// No description provided for @errorEnteringRoom.
  ///
  /// In en, this message translates to:
  /// **'Error entering match room: {error}'**
  String errorEnteringRoom(String error);

  /// No description provided for @wordChainLengthError.
  ///
  /// In en, this message translates to:
  /// **'Word must be between 2 and 32 letters and contain only alphabet letters!'**
  String get wordChainLengthError;

  /// No description provided for @wordChainStartLetterError.
  ///
  /// In en, this message translates to:
  /// **'Word must start with letter \"{letter}\"'**
  String wordChainStartLetterError(String letter);

  /// No description provided for @wordAlreadyUsed.
  ///
  /// In en, this message translates to:
  /// **'Word \"{word}\" has already been used!'**
  String wordAlreadyUsed(String word);

  /// No description provided for @errorSendingWord.
  ///
  /// In en, this message translates to:
  /// **'Error sending word, please try again!'**
  String get errorSendingWord;

  /// No description provided for @wordNotInDictionary.
  ///
  /// In en, this message translates to:
  /// **'Word \"{word}\" is not in the dictionary!'**
  String wordNotInDictionary(String word);

  /// No description provided for @invalidOrUsedWordPenalty.
  ///
  /// In en, this message translates to:
  /// **'Invalid or already used word — no lives lost ({penalty}s penalty)!'**
  String invalidOrUsedWordPenalty(int penalty);

  /// No description provided for @invalidOrUsedWordNoHeart.
  ///
  /// In en, this message translates to:
  /// **'Invalid or already used word — no lives lost'**
  String get invalidOrUsedWordNoHeart;

  /// No description provided for @cannotLoadQuestionsFromServer.
  ///
  /// In en, this message translates to:
  /// **'Unable to load questions from server'**
  String get cannotLoadQuestionsFromServer;

  /// No description provided for @errorSyncingQuestions.
  ///
  /// In en, this message translates to:
  /// **'Error syncing questions from server: {error}'**
  String errorSyncingQuestions(String error);

  /// No description provided for @enterValidRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid 6-digit room code!'**
  String get enterValidRoomCode;

  /// No description provided for @roomCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Challenge room created successfully!'**
  String get roomCreatedSuccess;

  /// No description provided for @contributeWordSuccess.
  ///
  /// In en, this message translates to:
  /// **'Word contributed successfully'**
  String get contributeWordSuccess;

  /// No description provided for @updateWordSuccess.
  ///
  /// In en, this message translates to:
  /// **'Word updated successfully'**
  String get updateWordSuccess;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

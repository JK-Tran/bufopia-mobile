// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get navHome => 'Explore';

  @override
  String get navMap => 'Map';

  @override
  String get navChat => 'Messages';

  @override
  String get navProfile => 'Profile';

  @override
  String get unknownError => 'An unknown error occurred';

  @override
  String get networkError => 'Network connection error. Please check your internet connection.';

  @override
  String get timeoutError => 'Connection timed out. Please try again.';

  @override
  String get sessionExpiredError => 'Session has expired. Please log in again.';

  @override
  String get unauthorizedError => 'Unauthorized access. Please log in.';

  @override
  String get forbiddenError => 'Access forbidden.';

  @override
  String get notFoundError => 'Requested resource not found.';

  @override
  String get serverError => 'Server error. Please try again later.';

  @override
  String get year => 'year(s) ago';

  @override
  String get month => 'month(s) ago';

  @override
  String get day => 'day(s) ago';

  @override
  String get hour => 'hour(s) ago';

  @override
  String get minute => 'minute(s) ago';

  @override
  String get justNow => 'Just now';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get close => 'Close';

  @override
  String get save => 'Save';

  @override
  String get back => 'Back';

  @override
  String get loading => 'Loading...';

  @override
  String get success => 'Success';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get quit => 'Quit';

  @override
  String get home => 'Home';

  @override
  String get playAgain => 'Play Again';

  @override
  String get rematch => 'Rematch';

  @override
  String get rematchNow => 'Rematch Now';

  @override
  String get waiting => 'Waiting...';

  @override
  String get unlock => 'Unlock';

  @override
  String get playNow => 'PLAY NOW';

  @override
  String get practice => 'PRACTICE';

  @override
  String get explore => 'EXPLORE';

  @override
  String get startNow => 'START NOW';

  @override
  String get nextWord => 'Next Word';

  @override
  String get finishReview => 'Finish Review';

  @override
  String get loginRequired => 'LOGIN REQUIRED';

  @override
  String get onState => 'ON';

  @override
  String get offState => 'OFF';

  @override
  String get profileBtn => 'PROFILE';

  @override
  String get diffEasy => 'Easy';

  @override
  String get diffMedium => 'Medium';

  @override
  String get diffHard => 'Hard';

  @override
  String get multiTopic => 'Multi-topic';

  @override
  String wordsCount(int count) {
    return '$count words';
  }

  @override
  String roundBadge(int current, int total) {
    return 'ROUND $current / $total';
  }

  @override
  String get leaveBattle => 'Leave Battle';

  @override
  String get menuQuizTitle => 'Quiz';

  @override
  String get menuQuizSubtitle => 'Choose topic or random duel';

  @override
  String get menuWordChainTitle => 'Word Chain';

  @override
  String get menuWordChainSubtitle => 'Link words freely, learn pronunciation & context';

  @override
  String get menuWordGuessTitle => 'Missing Word';

  @override
  String get menuWordGuessSubtitle => 'Guess mysterious words to fill blanks';

  @override
  String get menuStudyHubTitle => 'Study Hub';

  @override
  String get menuStudyHubSubtitle => 'Review and store your knowledge';

  @override
  String get settingsTitle => 'Game Settings';

  @override
  String get account => 'Account';

  @override
  String guestNotLinked(String name) {
    return 'Guest: $name (Google not linked)';
  }

  @override
  String accountLinked(String name) {
    return 'Account: $name';
  }

  @override
  String get viewProfile => 'View profile';

  @override
  String get logIn => 'LOG IN';

  @override
  String get logOut => 'LOG OUT';

  @override
  String get language => 'Language';

  @override
  String get languageSubtitle => 'Game display language';

  @override
  String get theme => 'Theme';

  @override
  String get themeSubtitle => 'Change display style';

  @override
  String get music => 'Music';

  @override
  String get musicSubtitle => 'Toggle in-game background music';

  @override
  String get soundEffects => 'Sound Effects';

  @override
  String get soundEffectsSubtitle => 'Toggle button clicks, tile flips, and result sounds';

  @override
  String get feedback => 'Feedback';

  @override
  String get feedbackSubtitle => 'Submit suggestions or report questions';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get privacyPolicySubtitle => 'Terms of service and user privacy';

  @override
  String get logoutConfirmTitle => 'Log out account';

  @override
  String get logoutConfirmMessage => 'Are you sure you want to log out?';

  @override
  String get playerProfile => 'Player Profile';

  @override
  String get studyStreak => 'Study Streak';

  @override
  String get winStreak => 'Win Streak';

  @override
  String level(int level) {
    return 'Level $level';
  }

  @override
  String get copyPlayerId => 'Copy ID';

  @override
  String get copiedPlayerId => 'Player ID copied!';

  @override
  String get profileUpdated => 'Profile updated successfully!';

  @override
  String get avatarUpdated => 'Avatar updated!';

  @override
  String get editName => 'Edit Name';

  @override
  String get saveChanges => 'SAVE CHANGES';

  @override
  String get enterPlayerName => 'Enter player name';

  @override
  String get chooseCompanion => 'CHOOSE COMPANION';

  @override
  String get companionSubtitle => 'Choose your favorite companion mascot';

  @override
  String get studyHubTitle => 'STUDY HUB';

  @override
  String get studyHubFooter => '⭐ Auto-save progress & Boost your reflexes ⭐';

  @override
  String get reviewWeakWords => 'Review Weak Words';

  @override
  String get reviewWeakWordsSubtitle => 'Practice words with incorrect answers or slow reflexes';

  @override
  String get contributeVocab => 'Contribute Vocabulary';

  @override
  String get contributeVocabSubtitle => 'Enrich vocabulary with Bufopia community';

  @override
  String get badgeNew => 'NEW';

  @override
  String get feedbackReport => 'Feedback & Bug Report';

  @override
  String get feedbackReportSubtitle => 'Send feedback to help improve the game experience';

  @override
  String get badgeFeedback => 'FEEDBACK';

  @override
  String get chooseGameMode => 'CHOOSE GAME MODE';

  @override
  String get chooseTopicTitle => 'Select Content';

  @override
  String get chooseTopicSubtitle => 'Choose a battle topic';

  @override
  String get modeFooterVocab => '⭐ Choose a mode to start vocabulary duel ⭐';

  @override
  String get modeFooterGuess => '⭐ Choose a mode to start guessing vocabulary ⭐';

  @override
  String get battleWithBot => 'Battle with Bot';

  @override
  String get battleWithBotDesc => 'Train vocabulary reflexes with AI Bot';

  @override
  String get duel2Players => '2 Players';

  @override
  String get duel2PlayersDesc => 'Duel locally on the same device';

  @override
  String get randomMatchmaking => 'Random Matchmaking';

  @override
  String get randomMatchmakingDesc => 'Find online opponents worldwide';

  @override
  String get challengeById => 'Challenge by ID';

  @override
  String get challengeByIdDesc => 'Create or join private room with friends';

  @override
  String get wordChainModeTitle => 'CHOOSE WORD CHAIN\nPRACTICE MODE';

  @override
  String get threeModesBadge => '3 MODES';

  @override
  String get onePlayerBadge => '1 PLAYER';

  @override
  String get findFriendBadge => 'FIND MATCH';

  @override
  String get twoPlayersBadge => '2 PLAYERS';

  @override
  String get practiceBot => 'Practice with Bot';

  @override
  String get practiceBotDesc => 'Train vocabulary reflexes with Bot';

  @override
  String get practiceOnline => 'Online Match';

  @override
  String get practiceOnlineDesc => 'Random matchmaking with players';

  @override
  String get inviteFriends => 'Invite Friends';

  @override
  String get inviteFriendsDesc => 'Create private room to compete with friends';

  @override
  String get timedPractice => 'TIMED PRACTICE';

  @override
  String get relaxedPractice => 'RELAXED';

  @override
  String get soloPractice => 'Solo Practice';

  @override
  String get soloPracticeDesc => 'Relaxed word guessing to expand vocabulary';

  @override
  String get onlineMatch => 'Online Match';

  @override
  String get onlineMatchDesc => 'Matchmaking for quick guessing duel';

  @override
  String get customRoom => 'Custom Room';

  @override
  String get customRoomDesc => 'Invite friends to compete together';

  @override
  String get findingOpponent => 'FINDING OPPONENT...';

  @override
  String get opponentFound => '🎉 OPPONENT FOUND!';

  @override
  String opponentFoundRival(String name) {
    return '🎉 FOUND: $name!';
  }

  @override
  String get cancelMatchmaking => 'CANCEL';

  @override
  String get enteringMatch => 'ENTERING MATCH...';

  @override
  String get battleRoom => 'BATTLE ROOM';

  @override
  String get enterCodeTab => 'ENTER CODE';

  @override
  String get createRoomTab => 'CREATE ROOM';

  @override
  String get roomCode => 'Room Code';

  @override
  String get enterRoomCode => 'Enter 6-digit room code';

  @override
  String get joinRoom => 'Join Room';

  @override
  String get createRoom => 'Create Room';

  @override
  String get matchResults => 'MATCH RESULTS';

  @override
  String get victory => '🎉 VICTORY!';

  @override
  String get defeat => '😢 DEFEAT!';

  @override
  String get draw => '🤝 DRAW!';

  @override
  String playerWins(String name) {
    return '🎉 $name WINS!';
  }

  @override
  String get botOpponent => 'Bot';

  @override
  String get humanOpponent => 'Opponent';

  @override
  String get player2 => 'Player 2';

  @override
  String get correctAnswers => 'Correct Answers';

  @override
  String get xpEarned => 'XP Earned';

  @override
  String get opponentWantsRematch => 'Opponent wants a rematch with you!';

  @override
  String get leaderboardTitle => 'LEADERBOARD';

  @override
  String get leaderboardFooter => '⭐ Learn, duel and conquer the top spot! ⭐';

  @override
  String get totalXp => 'Total XP';

  @override
  String get leaderboardWinStreak => 'Win Streak';

  @override
  String get leaderboardStudyStreak => 'Study Streak';

  @override
  String get chatWaiting => 'Waiting for opponent...';

  @override
  String get chatHint => 'Message your partner...';

  @override
  String get send => 'Send';

  @override
  String get accountConflictTitle => 'Account Conflict';

  @override
  String get accountConflictDefaultMsg => 'This Google account already has data saved in the cloud.';

  @override
  String get mergeData => 'MERGE DATA';

  @override
  String get overwriteAccount => 'OVERWRITE';

  @override
  String get engToVie => 'ENG → VIE';

  @override
  String correctProgressSaved(String time) {
    return 'Correct! (${time}s) • Progress saved';
  }

  @override
  String get saveToVault => 'Save to Vault';

  @override
  String get savingToVault => 'Saving...';

  @override
  String get savedToVault => 'Saved to Vault!';

  @override
  String get displayNameLabel => 'DISPLAY NAME';

  @override
  String get presetAvatars => 'Available Avatars:';

  @override
  String get vocabWarrior => 'Vocabulary Warrior';

  @override
  String get vocabWarriorSubtitle => 'Win battles to earn more XP and upgrade badges!';

  @override
  String get levelProgress => 'LEVEL PROGRESS';

  @override
  String levelBadge(int level) {
    return 'LEVEL $level';
  }

  @override
  String get saveProgressGoogle => 'SAVE PROGRESS TO GOOGLE';

  @override
  String get logoutSuccess => 'Logged out successfully!';

  @override
  String get enterNameHint => 'Enter name...';

  @override
  String get bunnyTag => 'Elite Bunny';

  @override
  String get pipTag => 'Wise Fox';

  @override
  String get startWithBunny => 'START WITH BUNNY';

  @override
  String get startWithPip => 'START WITH PIP';

  @override
  String get welcomeChooseMascot => 'Welcome to BuFoPia! Choose your companion mascot to start your vocabulary journey:';

  @override
  String welcomeUserReady(String name) {
    return 'Welcome $name to BuFoPia! Ready to duel!';
  }

  @override
  String cannotUpdateMascot(String error) {
    return 'Cannot update mascot: $error';
  }

  @override
  String get googleCloudSave => 'Google Cloud Save';

  @override
  String eloScore(int score) {
    return 'Elo Score: $score';
  }

  @override
  String matchesPlayed(int count) {
    return 'Matches played: $count';
  }

  @override
  String lastActive(String time) {
    return 'Last active: $time';
  }

  @override
  String get mergeProgressRecommended => 'MERGE PROGRESS (RECOMMENDED)';

  @override
  String get useCloudDataOverwrite => 'Use cloud data (Overwrite)';

  @override
  String get syncCloudSave => 'SYNC CLOUD SAVE';

  @override
  String get syncCloudPrompt => 'Sync this cloud save to continue your journey?';

  @override
  String get weakWordsPractice => 'WEAK WORDS PRACTICE';

  @override
  String questionIndex(int current, int total) {
    return 'Question $current/$total';
  }

  @override
  String get reviewCompletedMsg => 'Congratulations! You have completed the review!';

  @override
  String get loginToSaveVault => 'Please log in to save words to your personal vault.';

  @override
  String savedWordToVault(String word) {
    return 'Saved \"$word\" to your Vault!';
  }

  @override
  String get practiceSummary => 'PRACTICE SUMMARY';

  @override
  String get soloBadge => 'Solo Practice';

  @override
  String get withFriendsBadge => 'Practice with Friends';

  @override
  String get yourResults => 'YOUR RESULTS';

  @override
  String wordsFoundCount(int count) {
    return '$count words found';
  }

  @override
  String get reviewWordsDesc => 'Review results and words you encountered.';

  @override
  String get wordsFound => 'Words Found';

  @override
  String get wordsToReview => 'Words to Review';

  @override
  String get addedToProfile => 'Added to Profile';

  @override
  String get resultsBoard => 'Results Board';

  @override
  String get you => 'You';

  @override
  String get tiedScore => 'Tied Score';

  @override
  String learnedWordsCount(int count) {
    return 'Learned Words ($count)';
  }

  @override
  String get skipped => 'Skipped';

  @override
  String get saved => 'Saved';

  @override
  String get suggestWordFeedback => 'Suggest Word';

  @override
  String get practiceAgain => 'PRACTICE AGAIN';

  @override
  String get changeTopic => 'CHANGE TOPIC';

  @override
  String get chatExchange => 'EXCHANGE';

  @override
  String get chatRoomOnlyToast => 'Chat feature is only available in friend rooms!';

  @override
  String get opponentLeftTitle => 'OPPONENT LEFT';

  @override
  String opponentLeftPrompt(String rivalName) {
    return 'Opponent ($rivalName) left the room. Do you want to end the match or continue playing solo?';
  }

  @override
  String get continueSolo => 'Play Solo';

  @override
  String get honoraryVictory => 'HONORABLE VICTORY! 🏆';

  @override
  String get opponentLeftMidwayDesc => 'The opponent left the match midway.\nVictory is yours!';

  @override
  String get backToHome => 'BACK TO HOME';

  @override
  String get oneVsOneRandom => '1 VS 1 RANDOM';

  @override
  String get roomOrInviteLink => 'Room code or invite link';

  @override
  String get enterCodeOrLinkHint => 'Enter 6-digit code or paste invite link';

  @override
  String get enterSharedCodeDesc => 'Enter the code shared by your friend.';

  @override
  String get createRoomPreDesc => 'Select topic and duration, then create a room to invite friends.';

  @override
  String get practiceDuration => 'Practice Duration';

  @override
  String minutesFormat(int minutes) {
    return '$minutes MIN';
  }

  @override
  String get copyCode => 'COPY CODE';

  @override
  String get inviteLink => 'INVITE LINK';

  @override
  String get sendCodeOrLinkDesc => 'Send this code or link to your friends to join the room.';

  @override
  String membersCount(int count) {
    return 'Members ($count)';
  }

  @override
  String get roomHost => 'Host';

  @override
  String get ready => 'Ready';

  @override
  String get preparing => 'Preparing';

  @override
  String get waitingFriendsMinPlayers => 'Waiting for friends to join. At least 2 players needed to start.';

  @override
  String get waitingFriendsReady => 'Waiting for friends to get ready...';

  @override
  String get allReadyCanStart => 'Everyone is ready! Tap Start to play.';

  @override
  String get guestReviewTopicGuidance => 'Check topic and time, then tap Ready to duel.';

  @override
  String get startGame => 'START';

  @override
  String get readyBtn => 'READY';

  @override
  String get cancelReadyBtn => 'CANCEL READY';

  @override
  String get leaveRoom => 'LEAVE ROOM';

  @override
  String get randomPracticeTopic => 'Random Practice';

  @override
  String get earlyEndTitle => 'EARLY END';

  @override
  String get surrenderConfirmDesc => 'Ending early will stop this practice turn and count the opponent as leading. Are you sure?';

  @override
  String get stay => 'STAY';

  @override
  String get matchEnd => 'MATCH END';

  @override
  String get opponentLivesDepleted => 'Opponent ran out of lives!';

  @override
  String get myLivesDepleted => 'You ran out of lives!';

  @override
  String get opponentTimeout => 'Opponent ran out of time!';

  @override
  String get myTimeout => 'You ran out of time!';

  @override
  String get opponentSurrendered => 'Opponent surrendered!';

  @override
  String get mySurrendered => 'You ended the match early!';

  @override
  String get opponentAbandoned => 'Opponent left the match!';

  @override
  String get victoryBelongsToYou => 'Victory is yours!';

  @override
  String get betterLuckNextTime => 'Better luck next time!';

  @override
  String get waitingForOpponent => 'WAITING FOR OPPONENT...';

  @override
  String get rivalReady => 'OPPONENT IS READY!';

  @override
  String get fastest => 'Fastest';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get streak => 'Streak';

  @override
  String get correct => 'Correct';

  @override
  String get leaderBadge => 'LEADER';

  @override
  String remainingHearts(int count) {
    return '$count hearts left';
  }

  @override
  String leaderStreakChip(int streak) {
    return 'Leader Streak: $streak';
  }

  @override
  String get onlinePracticePartner => 'Online Practice Partner';

  @override
  String get leadingTurn => 'Leading Practice Turn';

  @override
  String listenAndPracticeWord(String word) {
    return 'Listen & practice pronouncing \"$word\"!';
  }

  @override
  String get saveWordFailed => 'Failed to save word, please try again.';

  @override
  String get settings => 'Settings';

  @override
  String get chat => 'Chat';

  @override
  String get player => 'Player';

  @override
  String get anonymous => 'Anonymous';

  @override
  String get rank => 'RANK';

  @override
  String get matches => 'matches';

  @override
  String get days => 'days';

  @override
  String get enter => 'ENTER';

  @override
  String get maybeLater => 'MAYBE LATER';

  @override
  String get loginGoogle => 'LOG IN WITH GOOGLE';

  @override
  String get loginPromptTitle => 'LOGIN REQUIRED';

  @override
  String get loginToUnlock => 'Log in to unlock';

  @override
  String loginPromptDesc(String feature) {
    return 'You are playing as a Guest. Please log in with Google to experience $feature and save your progress to the Leaderboard!';
  }

  @override
  String get defaultOnlineModeName => 'Online Match & Custom Room';

  @override
  String roundWithNumbers(int current, int total) {
    return 'ROUND $current / $total';
  }

  @override
  String get leaveMatch => 'Leave Match';

  @override
  String get leaveMatchTitle => 'LEAVE MATCH?';

  @override
  String get leaveMatchWarningSolo => '⚠️ Leaving midway counts as a loss!';

  @override
  String get leaveMatchWarningMulti => '⚠️ Leaving will end the match for both players!';

  @override
  String get leaveMatchConfirm => 'Are you sure you want to leave this match?';

  @override
  String get opponentLeftMatchTitle => 'OPPONENT LEFT MATCH';

  @override
  String get matchEndedOpponentLeft => 'Match ended because the opponent left.';

  @override
  String get youLeftMatch => 'You left the match.';

  @override
  String get exitedMatchTitle => 'MATCH EXITED';

  @override
  String get opponentLeftMatch => 'Opponent left the match!';

  @override
  String get surrender => 'Surrender';

  @override
  String get surrenderTitle => 'SURRENDER';

  @override
  String get surrenderMessage => 'Surrendering will count as a loss for this match. Are you sure?';

  @override
  String get loadingData => 'LOADING DATA...';

  @override
  String get waitingForOpponentReady => 'WAITING FOR OPPONENT TO BE READY...';

  @override
  String get waitingForOpponentToJoin => 'WAITING FOR OPPONENT TO JOIN...';

  @override
  String get createRoomNow => 'CREATE ROOM NOW';

  @override
  String get creatingRoom => 'CREATING ROOM...';

  @override
  String get copyCodeCaps => 'COPY CODE';

  @override
  String get copyLinkCaps => 'COPY LINK';

  @override
  String recentOpponents(int count) {
    return '5 Recent Opponents ($count)';
  }

  @override
  String get playOnlineToSaveOpponents => 'Play an online match to save opponents here.';

  @override
  String get playedRecently => 'Played recently';

  @override
  String get incomingInvitations => 'Incoming invitations';

  @override
  String get noNewInvitations => 'No new invitations.';

  @override
  String invitationCardDesc(String name, String roomCode) {
    return '$name invited you to room #$roomCode';
  }

  @override
  String get enterValid6DigitCode => 'Please enter a valid 6-digit room code!';

  @override
  String get inviteCooldownWait => 'Wait 10 seconds before sending another invite.';

  @override
  String get inviteSentSuccess => 'Challenge invitation sent successfully!';

  @override
  String get challengeRoomTitle => 'ONLINE BATTLE ROOM';

  @override
  String get challengeRoomFooter => '⭐ Compete in vocabulary duels with online friends ⭐';

  @override
  String get wordChainTitle => 'Word Chain Room';

  @override
  String get turnLabel => 'TURN';

  @override
  String get yourTurn => 'Your turn';

  @override
  String get partnerTurn => 'Partner\'s turn';

  @override
  String get relaxedUnlimited => 'Relaxed (Unlimited)';

  @override
  String remainingSecondsFormat(int seconds) {
    return '${seconds}s left';
  }

  @override
  String get endTurn => 'End';

  @override
  String yourTurnLetter(String letter) {
    return 'Your turn — enter a word starting with $letter';
  }

  @override
  String get yourTurnAny => 'Your turn — enter any word to start';

  @override
  String rivalThinking(String name) {
    return '$name is thinking of a connecting word...';
  }

  @override
  String enterWordStartingWith(String letter) {
    return 'Enter a word starting with $letter...';
  }

  @override
  String get enterWordToStart => 'Enter an English word to start...';

  @override
  String get startNewChain => 'Start a new word chain';

  @override
  String get startNewChainDesc => 'Enter any English word to kick off the match!';

  @override
  String correctWordLabel(String word) {
    return 'Correct: $word';
  }

  @override
  String get wordChainRoomTitle => 'WORD CHAIN BATTLE ROOM';

  @override
  String get wordChainRoomFooter => '⭐ Compete in word chaining with online friends ⭐';

  @override
  String get roomCreationNotConfirmed => 'Did not receive room creation confirmation. Please try again.';

  @override
  String get roomCancelled => 'Battle room cancelled.';

  @override
  String invitationValidFor2Min(String name) {
    return 'Invited $name. Invitation is valid for 2 minutes.';
  }

  @override
  String get wordGuess => 'Missing Word';

  @override
  String get wordGuessRoomTitle => 'WORD GUESS ROOM';

  @override
  String get wordGuessVocab => 'Word Guess Vocabulary';

  @override
  String saveWordError(String error) {
    return 'Error saving word: $error';
  }

  @override
  String feedbackSentForPlayer(String name) {
    return 'Feedback sent for player $name!';
  }

  @override
  String recentPartners(int count) {
    return '5 Recent practice partners ($count)';
  }

  @override
  String get noRecentPartners => 'No recent practice partners.';

  @override
  String get recentlyPracticed => 'Recently practiced';

  @override
  String practicedOnDate(int day, int month, int year) {
    return 'Practiced on $day/$month/$year';
  }

  @override
  String get invite => 'Invite';

  @override
  String invitedPartner(String name) {
    return 'Invited $name!';
  }

  @override
  String get roomCodeMinLength => 'Room code must have at least 4 characters!';

  @override
  String get pleaseEnterRoomCode => 'Please enter room code or paste invite link!';

  @override
  String get roomUnavailable => 'Word guess room is unavailable or has ended.';

  @override
  String joinRoomSuccess(String code) {
    return 'Successfully joined room $code!';
  }

  @override
  String joinRoomFailed(String error) {
    return 'Failed to join room: $error';
  }

  @override
  String connectRoomFailed(String error) {
    return 'Failed to connect to room: $error';
  }

  @override
  String get leftRoom => 'Left room.';

  @override
  String copiedRoomCode(String code) {
    return 'Copied room code: $code';
  }

  @override
  String get copiedInviteLink => 'Copied invite link!';

  @override
  String get matchmakingCancelled => 'Matchmaking cancelled.';

  @override
  String get matchedOpponentFound => 'OPPONENT FOUND';

  @override
  String get readyToCompete => 'READY TO COMPETE';

  @override
  String get waitingForOpponentReadyDesc => 'Waiting for opponent to be ready...';

  @override
  String get preparingMatch => 'Preparing match...';

  @override
  String get preparingMatchDesc => 'You will enter the match as soon as connection and deck are ready.';

  @override
  String connectionError(String error) {
    return 'Connection error: $error';
  }

  @override
  String findingTopic(String topic) {
    return 'FINDING: $topic...';
  }

  @override
  String solvedCorrectlyPoint(String name) {
    return '$name guessed correctly · +1 pt!';
  }

  @override
  String solvedFirst(String name) {
    return '$name guessed correctly first';
  }

  @override
  String get greatJob => 'Great! 👍';

  @override
  String get plusGreat => '+ Great!';

  @override
  String get suggestSkipWord => 'Teammate suggested SKIPPING this word!';

  @override
  String get autoSkipCountdown => 'Auto-skips in 5 seconds if no one objects';

  @override
  String get agree => 'Agree';

  @override
  String get reject => 'Reject';

  @override
  String topicWithPlayers(String topic, int count) {
    return '$topic · $count players';
  }

  @override
  String get translateToEnglish => 'TRANSLATE TO ENGLISH';

  @override
  String topicHeader(String topic) {
    return 'TOPIC: $topic';
  }

  @override
  String get choosingOption => 'Choosing...';

  @override
  String get thinkingOption => 'Thinking...';

  @override
  String get youColon => 'You: ';

  @override
  String get opponentColon => 'Opponent: ';

  @override
  String get selectedBadge => 'Selected';

  @override
  String get loadingVocabSet => 'LOADING VOCABULARY SET...';

  @override
  String get weakWordsSRS => 'WEAK WORDS REVIEW (SRS)';

  @override
  String get srsAlgorithmDesc => '⭐ Spaced Repetition Algorithm automatically reminds you of forgotten words ⭐';

  @override
  String get noWeakWordsTitle => 'No weak words to review!';

  @override
  String get noWeakWordsSubtitle => 'Join Quick Battle to accumulate and test your vocabulary!';

  @override
  String totalWordsInProfile(int count) {
    return 'Total: $count words in memory profile';
  }

  @override
  String get practiceNow => 'Practice Now';

  @override
  String familiarityInterval(int familiarity, int days) {
    return 'Familiarity: $familiarity/5 • Repeat: $days days';
  }

  @override
  String frequentlyForgotten(int count) {
    return 'Frequently forgotten ($count)';
  }

  @override
  String get wellRemembered => 'Well remembered';

  @override
  String chatWithRival(String name) {
    return 'Chat with $name';
  }

  @override
  String get noMessagesYet => 'No messages yet.\nSay hello to your partner!';

  @override
  String get chatDefaultCheer => 'Keep it up! Let\'s chain words together.';

  @override
  String get pronunciationScore => 'PRONUNCIATION ASSESSMENT';

  @override
  String get listenSampleAudio => 'Listen to sample';

  @override
  String get accuracyMetric => 'Accuracy';

  @override
  String get fluencyMetric => 'Fluency';

  @override
  String get completenessMetric => 'Completeness';

  @override
  String get assessingPronunciation => 'Assessing...';

  @override
  String get tapToAssess => 'Tap to check pronunciation';

  @override
  String get micInitFailed => 'Cannot start microphone recording. Please try again!';

  @override
  String get pronScoreGood => 'Good';

  @override
  String get pronScoreFair => 'Fair';

  @override
  String get pronScoreWeak => 'Needs improvement';

  @override
  String get noWeakWordsToSave => 'No weak words to save to Vault!';

  @override
  String savedAllWeakWords(int count) {
    return 'Saved all $count review words to your Vault!';
  }

  @override
  String get saveAllToVault => 'Save All to Vault';

  @override
  String get startPracticing => 'Start Practicing';

  @override
  String weakWordsList(int count) {
    return 'List of $count words to review';
  }

  @override
  String get yourContributions => 'Your contributions';

  @override
  String get contributionHistory => 'HISTORY';

  @override
  String get botMedium => 'BOT (MEDIUM)';

  @override
  String get calculatingReward => 'Calculating rewards & saving results...';

  @override
  String levelUpBanner(int oldLevel, int newLevel) {
    return 'LEVEL UP! Lv.$oldLevel ➔ Lv.$newLevel';
  }

  @override
  String get waitingForRematchAccept => 'Waiting for opponent to accept rematch...';

  @override
  String get leadPracticeRound => 'Leading practice round';

  @override
  String get cannotLoadLeaderboard => 'Unable to load leaderboard';

  @override
  String get noLeaderboardData => 'No leaderboard data yet';

  @override
  String get leaderboardFooterText => '⭐ Learn, duel and conquer the top ranking! ⭐';

  @override
  String get newContribution => 'New Contribution';

  @override
  String get practiceWeakWordsTitle => 'WEAK WORDS PRACTICE';

  @override
  String questionProgress(int current, int total) {
    return 'Question $current/$total';
  }

  @override
  String otherMeaning(int index) {
    return 'Other meaning $index';
  }

  @override
  String get defaultGameDialogFooter => '⭐ Happy Learning Daily - Practice English Vocabulary ⭐';

  @override
  String get feedbackFooter => '⭐ Your feedback helps Bufopia improve every day ⭐';

  @override
  String get privacyFooter => '⭐ Bufopia is committed to data protection & privacy ⭐';

  @override
  String get privacyPolicyTitle => 'POLICIES & TERMS';

  @override
  String get privacyUnderstoodAgreed => 'I UNDERSTAND AND AGREE';

  @override
  String get historyWordsTab => 'Played Words History';

  @override
  String get generalFeedbackTab => 'General Feedback / Other';

  @override
  String get feedbackQuestion => 'What would you like Bufopia to improve?';

  @override
  String get feedbackCategoryIdea => 'Idea';

  @override
  String get feedbackCategoryBug => 'App Bug';

  @override
  String get feedbackCategoryFeature => 'New Feature';

  @override
  String get feedbackCategoryUI => 'UI & Audio';

  @override
  String get feedbackCategoryOther => 'Other';

  @override
  String get feedbackContent => 'Feedback content';

  @override
  String get feedbackContentHint => 'Describe ideas, bugs encountered, or areas you wish to upgrade...';

  @override
  String get feedbackMinLength => 'Please describe in more detail — at least 10 characters.';

  @override
  String get feedbackContact => 'Contact info (optional)';

  @override
  String get feedbackContactHint => 'Email, Discord or other contact method...';

  @override
  String get sendFeedback => 'SEND FEEDBACK';

  @override
  String get sendingFeedback => 'SENDING...';

  @override
  String get feedbackThanks => 'Thank you for your feedback!';

  @override
  String feedbackWordReportSuccess(String word) {
    return 'Your suggestion for \'$word\' has been forwarded to Bufopia moderators for review and early update.';
  }

  @override
  String get feedbackGeneralSuccess => 'Your feedback has been recorded and will help Bufopia improve every day.';

  @override
  String get viewOtherWords => 'VIEW OTHER WORDS';

  @override
  String get sendOtherFeedback => 'SEND ANOTHER FEEDBACK';

  @override
  String get feedbackIssueMeaning => 'Correct Vietnamese meaning';

  @override
  String get feedbackIssueSpelling => 'English spelling error';

  @override
  String get feedbackIssuePronunciation => 'Correct phonetics / pronunciation';

  @override
  String get feedbackIssueContext => 'Unnatural meaning / missing context';

  @override
  String get feedbackIssueOther => 'Other suggestions';

  @override
  String feedbackHintMeaning(String en, String vi) {
    return 'Example: \'$en\' should be translated as \'...\' instead of \'$vi\' because...';
  }

  @override
  String feedbackHintSpelling(String en) {
    return 'Example: English word \'$en\' correct spelling is...';
  }

  @override
  String feedbackHintPronunciation(String en) {
    return 'Example: Correct phonetic of \'$en\' should be /.../';
  }

  @override
  String feedbackHintContext(String en) {
    return 'Describe more suitable context for \'$en\'...';
  }

  @override
  String feedbackHintOther(String en) {
    return 'Describe your detailed feedback for \'$en\'...';
  }

  @override
  String get searchVocabularyHint => 'Search English, Vietnamese, topic...';

  @override
  String get report => 'Report';

  @override
  String get noWordsFound => 'No matching vocabulary found!';

  @override
  String get cannotFindWordInHistory => 'Can\'t find word in history? Tap to search entire dictionary';

  @override
  String get allGameModes => 'All';

  @override
  String get wordChainMode => 'Word Chain';

  @override
  String get vocabBattleMode => 'Vocab Battle';

  @override
  String get wordGuessMode => 'Word Guess';

  @override
  String get reviewMode => 'Review';

  @override
  String streakDaysCount(int count) {
    return '$count days';
  }

  @override
  String streakMatchesCount(int count) {
    return '$count matches';
  }

  @override
  String get chooseAvatarTitle => 'Choose Avatar';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get openCamera => 'Open Camera';

  @override
  String get openGallery => 'Open Gallery';

  @override
  String get photoGallery => 'Gallery';

  @override
  String get chooseFromDevice => 'Choose from Device';

  @override
  String get photoGalleryTitle => 'Photo Gallery';

  @override
  String get photosTab => 'Photos';

  @override
  String get albumsTab => 'Albums';

  @override
  String get cameraTile => 'Camera';

  @override
  String photosSelected(int count) {
    return '$count photo selected';
  }

  @override
  String get tapPhotoToSelect => 'Tap photo to select';

  @override
  String get nextButton => 'Next';

  @override
  String get pickDirectlyFromStorage => 'Pick photos directly from storage without granting permissions.';

  @override
  String get noAlbumsFound => 'No albums found';

  @override
  String albumPhotosCount(int count) {
    return '$count photos';
  }

  @override
  String get cannotOpenCameraPermission => 'Cannot open camera. Please grant camera permission in Settings.';

  @override
  String get noCameraAvailable => 'No available camera found.';

  @override
  String cameraInitError(String error) {
    return 'Camera initialization error: $error';
  }

  @override
  String takePictureError(String error) {
    return 'Failed to take picture: $error';
  }

  @override
  String get retake => 'Retake';

  @override
  String get useThisPhoto => 'Use this photo';

  @override
  String get alignFaceInCircle => 'Align face inside the circle';

  @override
  String get toggleFlash => 'Toggle flash';

  @override
  String get switchCamera => 'Switch camera';

  @override
  String get nameRequiredOnline => 'Please enter a display name (2–25 characters) before joining Online match!';

  @override
  String get nameInvalidNotice => 'Invalid name. Please use 2–25 characters and avoid default names.';

  @override
  String foundRivalEnteringMatch(String rivalName) {
    return 'Found rival $rivalName! Entering match...';
  }

  @override
  String enteredRoomCode(String code) {
    return 'Entered battle room #$code!';
  }

  @override
  String get randomBattle => 'Random Battle';

  @override
  String get autoTopicSubtitle => 'System auto-selects topics';

  @override
  String get dailyLifeSubtitle => 'Daily life & routines';

  @override
  String get schoolSubtitle => 'School & studying';

  @override
  String get travelSubtitle => 'Travel & exploration';

  @override
  String get foodSubtitle => 'Food & dining';

  @override
  String get familySubtitle => 'Family & relationships';

  @override
  String get bodySubtitle => 'Body & health';

  @override
  String get clothesSubtitle => 'Clothing & accessories';

  @override
  String get shoppingSubtitle => 'Shopping & money';

  @override
  String get townSubtitle => 'Places in town';

  @override
  String get directionsSubtitle => 'Directions & positions';

  @override
  String get jobsSubtitle => 'Jobs & workplaces';

  @override
  String get hobbiesSubtitle => 'Hobbies & leisure';

  @override
  String get sportsSubtitle => 'Sports & fitness';

  @override
  String get animalsSubtitle => 'Animals & pets';

  @override
  String get timeSubtitle => 'Time & calendar';

  @override
  String get shapesSubtitle => 'Colors & shapes';

  @override
  String get celebrationsSubtitle => 'Festivals & celebrations';

  @override
  String get feelingsSubtitle => 'Feelings & personality';

  @override
  String get environmentSubtitle => 'Nature & environment';

  @override
  String get technologySubtitle => 'Technology & digital';

  @override
  String get communicationSubtitle => 'Communication & social';

  @override
  String get toeicSubtitle => 'Workplace TOEIC vocabulary';

  @override
  String get ieltsSubtitle => 'Core IELTS vocabulary';

  @override
  String get topicVocabularySubtitle => 'Topic vocabulary';

  @override
  String get privacyTab => 'Privacy';

  @override
  String get termsTab => 'Terms';

  @override
  String get cookiesTab => 'Cookies';

  @override
  String get deletionTab => 'Delete Data';

  @override
  String get dataProtectionTag => 'Data Protection';

  @override
  String get codeOfConductTag => 'Code of Conduct';

  @override
  String get deviceStorageTag => 'Device Storage';

  @override
  String get yourRightsTag => 'Your Rights';

  @override
  String pointsCount(int count) {
    return '$count pts';
  }

  @override
  String questionsCount(int count) {
    return '$count questions';
  }

  @override
  String get adjustPhoto => 'Adjust Photo';

  @override
  String get done => 'Done';

  @override
  String get cropPhotoInstruction => 'Drag & pinch to fit the photo inside the square';

  @override
  String get findMatchOnline => 'FIND MATCH ONLINE';

  @override
  String get reviewVocabTitle => 'Review Vocabulary';

  @override
  String get defaultPlayerName => 'Player';

  @override
  String get connectedStatus => 'Connected';

  @override
  String get wordsNeedReview => 'words to review';

  @override
  String get noWeakWordsReviewTitle => 'Great! No weak words to review';

  @override
  String get noWeakWordsReviewSubtitle => 'All words you learned are in good shape.';

  @override
  String get wrongAnswer => 'Incorrect answer';

  @override
  String get slowResponse => 'Slow response';

  @override
  String get editWordBadge => 'EDIT WORD';

  @override
  String get newContributionBadge => 'NEW CONTRIBUTION';

  @override
  String dailyContributionLimit(int count) {
    return 'Max $count words/day';
  }

  @override
  String get addAnEnglishWord => 'Add an English word';

  @override
  String get editContributedWord => 'Edit contributed word';

  @override
  String get englishWordField => 'English word *';

  @override
  String get vietnameseMeaningField => 'Vietnamese meaning *';

  @override
  String get topicField => 'Topic *';

  @override
  String get partOfSpeechField => 'Part of speech';

  @override
  String get phoneticField => 'Phonetic transcription';

  @override
  String get exampleSentenceField => 'English example sentence';

  @override
  String get exampleSentenceHint => 'Example sentence must contain the contributed word';

  @override
  String get exampleTranslationField => 'Example translation';

  @override
  String get exampleTranslationHint => 'Vietnamese translation';

  @override
  String get contributionGuidelines => 'Contributions will be reviewed before being added to the vocabulary pool. Please provide clear meanings and examples, and do not submit personal info.';

  @override
  String get submitting => 'Submitting...';

  @override
  String get submitContribution => 'SUBMIT CONTRIBUTION';

  @override
  String get pleaseEnterEnglishWord => 'Please enter an English word!';

  @override
  String get pleaseEnterVietnameseMeaning => 'Please enter the Vietnamese meaning!';

  @override
  String nWordsCount(int count) {
    return '$count words';
  }

  @override
  String get refreshAction => 'REFRESH';

  @override
  String get noContributionsYet => 'You haven\'t submitted any words yet. Start with a useful word!';

  @override
  String get statusApproved => 'Approved';

  @override
  String get statusRejected => 'Rejected';

  @override
  String get statusChangesRequested => 'Changes requested';

  @override
  String get statusPending => 'Pending';

  @override
  String get reviewerFeedback => 'Reviewer feedback:';

  @override
  String get editAndResubmit => 'Edit & resubmit';

  @override
  String get randomPractice => 'Random practice';

  @override
  String get leavePracticeRoomTitle => 'LEAVE PRACTICE ROOM?';

  @override
  String get leavePracticeRoomConfirm => 'Are you sure you want to exit this practice session?';

  @override
  String get leave => 'LEAVE';

  @override
  String get endGameEarlyTitle => 'END GAME EARLY';

  @override
  String get endGameEarlyConfirm => 'Do you want to end practice early and see results?';

  @override
  String get continuePlaying => 'CONTINUE';

  @override
  String get endGame => 'END GAME';

  @override
  String wordRoundFoundCount(int round, int found) {
    return 'Word $round · $found found';
  }

  @override
  String wordRound(int round) {
    return 'Word $round';
  }

  @override
  String get meaningClue => 'MEANING CLUE';

  @override
  String get loadingClue => 'Loading clue...';

  @override
  String nLettersCount(int count) {
    return '$count letters';
  }

  @override
  String triedGuessesCount(int count) {
    return 'Tried ($count):';
  }

  @override
  String get noGuessesYet => 'Tried: No guesses yet';

  @override
  String get skipWordAction => 'SKIP';

  @override
  String get enterEnglishWordHint => 'Enter English word...';

  @override
  String get guessAction => 'GUESS';

  @override
  String get academicSubtitle => 'Academic & Education';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPhrase => 'Phrase';

  @override
  String get posUnknown => 'Unspecified';

  @override
  String get autoDifficulty => 'Auto';

  @override
  String get settingsFooterWish => '⭐ Have a wonderful experience with Bufopia! ⭐';

  @override
  String get guest => 'Guest';

  @override
  String get noPracticeQuestionsFound => 'No matching practice question set found.';

  @override
  String errorLoadingPracticeQuestions(String error) {
    return 'Error loading practice questions: $error';
  }

  @override
  String get incorrectTryAgain => 'Incorrect, please try again!';

  @override
  String correctAddXp(int count) {
    return 'Correct! +$count XP';
  }

  @override
  String errorSubmittingAnswer(String error) {
    return 'Error submitting answer: $error';
  }

  @override
  String correctWordIs(String word) {
    return 'Correct word: $word';
  }

  @override
  String get completedAllPracticeQuestions => 'You have completed all practice questions!';

  @override
  String cannotConnectMatchmaking(String error) {
    return 'Unable to connect to matchmaking: $error';
  }

  @override
  String cannotConnectRoom(String error) {
    return 'Unable to connect to the room: $error';
  }

  @override
  String opponentGuessedFirstScore(String name) {
    return '$name guessed correctly first · +1 point · next question!';
  }

  @override
  String opponentGuessedFirstNext(String name) {
    return '$name guessed correctly first. Moving to next question...';
  }

  @override
  String get wordIncorrect => 'Incorrect word';

  @override
  String messageBlocked(String reason) {
    return 'Message blocked: $reason';
  }

  @override
  String skipVoteEnded(String reason) {
    return 'Skip vote has ended ($reason)';
  }

  @override
  String rewardReceivedXp(int xp) {
    return 'Reward received: +$xp XP';
  }

  @override
  String get botRivalName => 'Bot';

  @override
  String errorInitPracticeSession(String error) {
    return 'Unable to initialize practice session: $error';
  }

  @override
  String errorConnectMatchmaking(String error) {
    return 'Connection error finding match: $error';
  }

  @override
  String errorEnteringRoom(String error) {
    return 'Error entering match room: $error';
  }

  @override
  String get wordChainLengthError => 'Word must be between 2 and 32 letters and contain only alphabet letters!';

  @override
  String wordChainStartLetterError(String letter) {
    return 'Word must start with letter \"$letter\"';
  }

  @override
  String wordAlreadyUsed(String word) {
    return 'Word \"$word\" has already been used!';
  }

  @override
  String get errorSendingWord => 'Error sending word, please try again!';

  @override
  String wordNotInDictionary(String word) {
    return 'Word \"$word\" is not in the dictionary!';
  }

  @override
  String invalidOrUsedWordPenalty(int penalty) {
    return 'Invalid or already used word — no lives lost (${penalty}s penalty)!';
  }

  @override
  String get invalidOrUsedWordNoHeart => 'Invalid or already used word — no lives lost';

  @override
  String get cannotLoadQuestionsFromServer => 'Unable to load questions from server';

  @override
  String errorSyncingQuestions(String error) {
    return 'Error syncing questions from server: $error';
  }

  @override
  String get enterValidRoomCode => 'Please enter a valid 6-digit room code!';

  @override
  String get roomCreatedSuccess => 'Challenge room created successfully!';

  @override
  String get contributeWordSuccess => 'Word contributed successfully';

  @override
  String get updateWordSuccess => 'Word updated successfully';
}

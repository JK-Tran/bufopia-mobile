import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

abstract class FirebaseAuthService {
  User? get currentUser;
  String? get currentUid;
  Future<String?> getIdToken();

  Future<UserCredential?> signInAnonymously();
  Future<({UserCredential credential, String idToken})?> signInWithGoogle();
  Future<void> signOut();
}

@LazySingleton(as: FirebaseAuthService)
class FirebaseAuthServiceImpl implements FirebaseAuthService {
  FirebaseAuthServiceImpl();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Web Client ID từ google-services.json (client_type: 3)
  /// Bắt buộc trên Android với google_sign_in: 7.x (Credential Manager)
  static const String _serverClientId =
      '350275604107-mvk43erer1mnqsonr4hck89vpt6jl79g'
      '.apps.googleusercontent.com';

  bool _isInitialized = false;

  Future<void> _ensureInitialized() async {
    if (_isInitialized) return;
    try {
      await GoogleSignIn.instance.initialize(
        serverClientId: _serverClientId,
      );
      _isInitialized = true;
    } on Object catch (e) {
      Log.e(
        'Failed to initialize GoogleSignIn: $e',
        name: 'FirebaseAuthService',
      );
    }
  }

  @override
  User? get currentUser => _auth.currentUser;

  @override
  String? get currentUid => _auth.currentUser?.uid;

  @override
  Future<String?> getIdToken() async {
    try {
      return await _auth.currentUser?.getIdToken();
    } on Exception catch (e) {
      Log.e('Failed to get Firebase ID token: $e', name: 'FirebaseAuthService');
      return null;
    }
  }

  @override
  Future<UserCredential?> signInAnonymously() async {
    try {
      final credential = await _auth.signInAnonymously();
      Log.d(
        'Signed in anonymously: ${credential.user?.uid}',
        name: 'FirebaseAuthService',
      );
      return credential;
    } on Exception catch (e) {
      Log.e('Failed anonymous sign-in: $e', name: 'FirebaseAuthService');
      return null;
    }
  }

  @override
  Future<({UserCredential credential, String idToken})?>
  signInWithGoogle() async {
    try {
      await _ensureInitialized();
      final account = await GoogleSignIn.instance.authenticate();
      final idToken = account.authentication.idToken;

      final credential = GoogleAuthProvider.credential(
        idToken: idToken,
      );

      UserCredential userCredential;
      final currentAnonUser = _auth.currentUser;
      if (currentAnonUser != null && currentAnonUser.isAnonymous) {
        try {
          userCredential = await currentAnonUser.linkWithCredential(credential);
        } on Exception catch (_) {
          userCredential = await _auth.signInWithCredential(credential);
        }
      } else {
        userCredential = await _auth.signInWithCredential(credential);
      }

      final fbIdToken =
          await userCredential.user?.getIdToken() ?? idToken ?? '';
      Log.d(
        'Google sign-in successful: uid=${userCredential.user?.uid}',
        name: 'FirebaseAuthService',
      );

      return (credential: userCredential, idToken: fbIdToken);
    } on Exception catch (e) {
      Log.e('Failed Google sign-in: $e', name: 'FirebaseAuthService');
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await GoogleSignIn.instance.signOut();
      await _auth.signOut();
      Log.d('Signed out successfully', name: 'FirebaseAuthService');
    } on Exception catch (e) {
      Log.e('Error during sign-out: $e', name: 'FirebaseAuthService');
    }
  }
}

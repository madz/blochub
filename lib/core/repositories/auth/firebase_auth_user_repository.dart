import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

///FirebaseAuthUserRepository repository
abstract class FirebaseAuthUserRepository {
  ///Called whn singing in with google account.
  Future<void> signInWithGoogle();

  ///Called whn singing in with facebook account.
  Future<void> signInWithFacebook();

  ///Called when singing in using [email] and [password]
  Future<void> signInWithCredentials(String email, String password);

  ///Called when a user is signing up using [email] and [password]
  Future<void> signUp({@required String email, @required String password});

  ///Called when a user is signing out.
  Future<void> signOut();

  ///Check if a user is signed in or not.
  Future<bool> isSignedIn();

  ///Get firebase user
  Future<FirebaseUser> getUser();

  Future<List<String>> fetchCredentialProviderList();

  Future<bool> isFacebookLinkedInProvider();

  Future<bool> isGoogleLinkedInProvider();

  Future<void> linkCredentialWithFacebook();

  Future<void> linkCredentialWithGoogle();

  Future<void> unlinkProvider({@required providerId});
}

@Injectable(as: FirebaseAuthUserRepository)
@lazySingleton
class FirebaseAuthUserRepositoryImpl implements FirebaseAuthUserRepository {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FacebookLogin facebookLogin;

  ///create a user auth remote data source
  FirebaseAuthUserRepositoryImpl({
    @required this.firebaseAuth,
    @required this.googleSignIn,
    @required this.facebookLogin,
  });

  ///Called when singing in with google account.
  Future<void> signInWithGoogle() async {
    final credential = await _googleSignIn();
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> _googleSignIn() async {
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return credential;
  }

  ///Called when singing in with facebook account.
  @override
  Future<void> signInWithFacebook() async {
    final credential = await _facebookSignIn();
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> _facebookSignIn() async {
    final result = await facebookLogin.logIn(['email']);
    AuthCredential credential;

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;

        credential = FacebookAuthProvider.getCredential(
          accessToken: accessToken.token,
        );
        break;
      case FacebookLoginStatus.cancelledByUser:
        throw Exception('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        Exception('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }

    return credential;
  }

  ///Called when singing in using [email] and [password]
  Future<void> signInWithCredentials(String email, String password) async {
    final credential = await emailPassSignIn(email, password);
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> emailPassSignIn(String email, String password) async {
    final credential = EmailAuthProvider.getCredential(
      email: email,
      password: password,
    );

    return credential;
  }

  ///Called when a user is signing up using [email] and [password]
  Future<void> signUp({String email, String password}) async {
    await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  ///Called when a user is signing out.
  Future<void> signOut() async {
    return Future.wait([
      firebaseAuth.signOut(),
      googleSignIn.signOut(),
      facebookLogin.logOut(),
    ]);
  }

  ///Check if a user is signed in or not.
  Future<bool> isSignedIn() async {
    final currentUser = await firebaseAuth.currentUser();
    return currentUser != null;
  }

  @override
  Future<FirebaseUser> getUser() async {
    return (await firebaseAuth.currentUser());
  }

  @override
  Future<void> linkCredentialWithFacebook() async {
    final currentUser = await getUser();
    final credential = await _facebookSignIn();
    final listOfProviders =
        await fetchCredentialProviderList(email: currentUser.email);

    if (listOfProviders.isNotEmpty) {
      if (!listOfProviders.contains(credential.providerId)) {
        await currentUser.linkWithCredential(credential);
      }
    }
  }

  @override
  Future<void> linkCredentialWithGoogle() async {
    final currentUser = await getUser();
    final credential = await _googleSignIn();
    final listOfProviders =
        await fetchCredentialProviderList(email: currentUser.email);

    if (listOfProviders.isNotEmpty) {
      if (!listOfProviders.contains(credential.providerId)) {
        await currentUser.linkWithCredential(credential);
      }
    }
  }

  ///
  /// Returns a list of sign-in methods that can be used to sign in a given
  ///
  Future<List<String>> fetchCredentialProviderList({@required email}) async {
    final currentUser = await getUser();
    final providerList =
        await firebaseAuth.fetchSignInMethodsForEmail(email: currentUser.email);

    return providerList;
  }

  Future<bool> isFacebookLinkedInProvider() async {
    final currentUser = await getUser();
    final listOfProviders =
        await fetchCredentialProviderList(email: currentUser.email);
    if (listOfProviders.contains(FacebookAuthProvider.providerId)) {
      return true;
    }
    return false;
  }

  Future<bool> isGoogleLinkedInProvider() async {
    final currentUser = await getUser();
    final listOfProviders =
        await fetchCredentialProviderList(email: currentUser.email);
    if (listOfProviders.contains(GoogleAuthProvider.providerId)) {
      return true;
    }
    return false;
  }

  Future<void> unlinkProvider({@required providerId}) async {
    final currentUser = await getUser();
    final listOfProviders =
        await fetchCredentialProviderList(email: currentUser.email);
    if (listOfProviders.contains(providerId)) {
      await currentUser.unlinkFromProvider(providerId);
    }
  }
}

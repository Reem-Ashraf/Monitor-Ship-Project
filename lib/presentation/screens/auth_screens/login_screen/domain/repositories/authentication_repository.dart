import 'package:firebase_auth/firebase_auth.dart' as auth;

abstract class AuthenticationRepositoryBase {
  Future<auth.User?> logInWithGoogle();

  Future<void> logOut();
}

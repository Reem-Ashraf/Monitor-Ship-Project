import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../repositories/authentication_repository.dart';

class LoginUseCase {
  final AuthenticationRepositoryBase _repository;

  LoginUseCase(this._repository);

  Future<auth.User?> logInWithGoogle() {
    return _repository.logInWithGoogle();
  }
  Future<void> logout(){
    return _repository.logOut();
  }
}

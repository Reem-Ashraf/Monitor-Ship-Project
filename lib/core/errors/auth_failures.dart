abstract class AuthFailure {
  final String message;
  AuthFailure(this.message);
}

class LogInWithGoogleFailure extends AuthFailure {
  LogInWithGoogleFailure(super.message);

  factory LogInWithGoogleFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return LogInWithGoogleFailure(
            'Account exists with different credential');
      case 'network-request-failed':
        return LogInWithGoogleFailure('Network error occurred');
      default:
        return LogInWithGoogleFailure('Login failed: $code');
    }
  }
}

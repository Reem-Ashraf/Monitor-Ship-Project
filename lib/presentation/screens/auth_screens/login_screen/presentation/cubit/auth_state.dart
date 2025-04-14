part of 'auth_cubit.dart';

@immutable
sealed class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}
class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final auth.User user;
  LoginSuccess(this.user);
  @override
  List<Object?> get props => [user];
}

class LoginFailure extends AuthState {
  final String message;
  LoginFailure(this.message);
  @override
  List<Object?> get props => [message];
}
class LogoutLoading extends AuthState {}
class LogoutSuccess extends AuthState {}
class LogoutFailure extends AuthState {
  final String message;
  LogoutFailure(this.message);
  @override
  List<Object?> get props => [message];
}

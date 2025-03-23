import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

import '../../domain/usecases/login_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  AuthCubit(this._loginUseCase) : super(AuthInitial());
  Future logInWithGoogle() async {
    emit(LoginLoading());
    try {
      final user = await _loginUseCase.logInWithGoogle();
      emit(LoginSuccess(user!));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}

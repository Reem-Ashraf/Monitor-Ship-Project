import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/utils/app_routes/routes_name.dart';
import '../../domain/usecases/login_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  AuthCubit(this._loginUseCase) : super(AuthInitial());
  Future logInWithGoogle() async {
    emit(LoginLoading());
    try {
      final user = await _loginUseCase.logInWithGoogle();
      CacheHelper.setSecureData(key: 'uid', value: user!.uid);
      emit(LoginSuccess(user));
    } catch (e) {
      log(e.toString());
      emit(LoginFailure(e.toString()));
    }
  }

  Future<void> logOut(BuildContext context) async {
    emit(LogoutLoading());
    try {
      await _loginUseCase.logout();
      emit(LogoutSuccess());
      if (context.mounted) {
        context.go(RoutesName.loginScreen);
      }
    } catch (e) {
      log(e.toString());
      emit(LogoutFailure(e.toString()));
    }
  }
}

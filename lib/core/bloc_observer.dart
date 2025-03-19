import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MyBlocObserver extends BlocObserver {
  // Log only in debug mode
  void _log(String message,
      {String? name, Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      final timestamp =
          DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
      developer.log(
        '[$timestamp] $message',
        name: name ?? 'BLOC',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  String _formatChange(Change change) {
    return '➡️ From: ${change.currentState} ➡️ To: ${change.nextState}';
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _log('🟢 Bloc Created', name: bloc.runtimeType.toString());
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _log('🔄 State Changed | ${_formatChange(change)}',
        name: bloc.runtimeType.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _log('❌ Bloc Error: $error',
        name: bloc.runtimeType.toString(),
        error: error,
        stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _log('🔴 Bloc Closed', name: bloc.runtimeType.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log(
      '🔁 Transition | Event: ${transition.event} | ${_formatChange(transition)}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _log('📊 Event: $event', name: bloc.runtimeType.toString());
  }
}

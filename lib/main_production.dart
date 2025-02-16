import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/bloc_opserver.dart';
import 'my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(
    MyApp(),
  );
}

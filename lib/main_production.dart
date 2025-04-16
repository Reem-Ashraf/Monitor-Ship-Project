import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/initializer/service_initializer.dart';
import 'my_app.dart';

void main() async {
  await ServiceInitializer.initializeServices();
  runApp(EasyLocalization(
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      path: 'assets/translations',
      startLocale: const Locale(
          'en'), // to test the app in English, change this to Locale('en')
      child: const MyApp()));
}

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
      startLocale: const Locale('ar'),
      child: const MyApp()));
}

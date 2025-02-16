
import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/app_routes/routes_page.dart';
import 'core/utils/constants/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log('Supported Locales: ${EasyLocalization.of(context)?.supportedLocales}');
    log('Current Locale: ${EasyLocalization.of(context)?.locale}');
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales, // Apply locale
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.white,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: GroupRoutes().router,
      ),
    );
  }
}


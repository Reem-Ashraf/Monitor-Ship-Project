
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/app_routes/routes_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          useInheritedMediaQuery: true, // Ensure it's true
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context), // Apply locale
          builder: DevicePreview.appBuilder, // Wrap the UI
          title: 'Flutter Demo',
          routerConfig: GroupRoutes().router,
        );
      },
    );
  }
}

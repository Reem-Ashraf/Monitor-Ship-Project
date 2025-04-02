import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../cache/cache_helper.dart';
import 'firebase_init.dart';
import 'injection_container.dart';

class ServiceInitializer {
  static Future<void> initializeServices() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await FirebaseInitializer.initializeFirebaseServices();
    await CacheHelper.init();
    setupDependencyInjector();
    await ScreenUtil.ensureScreenSize();
  }
}

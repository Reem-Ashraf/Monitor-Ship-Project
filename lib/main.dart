import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/bloc_observer.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/routes.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme:  AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

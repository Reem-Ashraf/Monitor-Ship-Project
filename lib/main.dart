import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/bottom_navigation_bar.dart';

import 'core/bloc_opserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(315, 819),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:BottomNavigationBarScreen(),
      ),
    );
  }
}
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/bloc_observer.dart';
import 'package:monitor_ship_project/features/checkout_process/screens/checkout1.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CheckoutFirst(),
    );
  }
}

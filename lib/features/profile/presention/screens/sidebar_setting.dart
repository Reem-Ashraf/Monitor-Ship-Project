import 'package:flutter/material.dart';
import 'package:hello_world/components/drawer.dart';


class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  HomeScreen({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      body: Center(
        child: Text("Main Screen", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

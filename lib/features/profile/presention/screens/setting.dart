import 'package:flutter/material.dart';
import 'package:hello_world/components/divider.dart';
import 'package:hello_world/components/drawer.dart';
import 'package:hello_world/components/settingItem.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      appBar: AppBar(title: Text("Setting"), centerTitle: true),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          settingsItem(Icons.language, "Language"),
          divider(),
          settingsItem(Icons.description, "Terms of Use"),
          divider(),
          settingsItem(Icons.privacy_tip, "Privacy Policy"),
          divider(),
        ],
      ),
    );
  }
}

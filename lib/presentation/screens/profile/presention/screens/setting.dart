import 'package:flutter/material.dart';

import '../../data/models/drawer.dart';

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
          _settingsItem(Icons.language, "Language"),
          _divider(),
          _settingsItem(Icons.description, "Terms of Use"),
          _divider(),
          _settingsItem(Icons.privacy_tip, "Privacy Policy"),
          _divider(),
        ],
      ),
    );
  }

  Widget _settingsItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(thickness: 1),
    );
  }
}

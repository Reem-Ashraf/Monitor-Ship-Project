import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';
import '../data/models/buildListTile.dart';
import 'buildHeader.dart';
import 'buildSectionTitle.dart';
import 'buildThemeOption.dart';

class CustomDrawer extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const CustomDrawer({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(context),
          Spacer(),
          buildSectionTitle("Other"),
          buildListTile(Icons.settings, "Setting", () {
            context.push(RoutesName.settingsScreen);
          }),
          buildListTile(Icons.support, "Support", () {}),
          buildListTile(Icons.info, "About us", () {}),
          buildThemeToggle(),
        ],
      ),
    );
  }

  Widget buildThemeToggle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 80, 0, 50),
      child: GestureDetector(
        onTap: toggleTheme,
        child: Container(
          width: 240,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey),
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                duration: Duration(milliseconds: 200),
                alignment:
                    isDarkMode ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildThemeOption(Icons.wb_sunny, "Light", !isDarkMode),
                  buildThemeOption(Icons.nightlight_round, "Dark", isDarkMode),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

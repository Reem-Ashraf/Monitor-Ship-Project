import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';
import '../data/models/buildListTile.dart';
import 'buildHeader.dart';
import 'buildSectionTitle.dart';

class CustomDrawer extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const CustomDrawer({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late bool isDarkMode;

  @override
  void initState() {
    super.initState();
    isDarkMode = widget.isDarkMode;
  }

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
    widget.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(context),
          const Spacer(),
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
        onTap: _toggleTheme,
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
              // الكلمتين ظاهرين دايماً
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.wb_sunny, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "LIGHT",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.nightlight_round, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            "DARK",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: isDarkMode ? 120 : 0,
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          isDarkMode ? "DARK" : "LIGHT",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

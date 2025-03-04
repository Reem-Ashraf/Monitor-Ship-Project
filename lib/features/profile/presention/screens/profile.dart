import 'package:flutter/material.dart';
import 'package:hello_world/components/buildBottomNavigationBar.dart';
import 'package:hello_world/components/profileHeader.dart';
import 'package:hello_world/components/profileOptions.dart';
import 'package:hello_world/screens/my_wishlist_board.dart';
import 'package:hello_world/screens/profile_setting.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            profileHeader(context),
            const SizedBox(height: 20),
            profileOptions(context),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(selectedIndex: 3),
    );
  }
}

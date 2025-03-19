import 'package:flutter/material.dart';

import '../../components/profileHeader.dart';
import '../../components/profileOptions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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
     
    );
  }
}

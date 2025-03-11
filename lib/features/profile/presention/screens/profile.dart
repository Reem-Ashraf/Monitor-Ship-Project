import 'package:flutter/material.dart';
import '../../components/profile_header.dart';
import '../../components/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            profileHeader(context),
            const SizedBox(height: 20),
            const ProfileOptions(), // استدعاء الـ Widget بدل الفانكشن
          ],
        ),
      ),
    );
  }
}

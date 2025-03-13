import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateScreen extends StatelessWidget {
  UpdateScreen({super.key});
  final Uri playStoreUrl = Uri.parse("https://play.google.com");
  final Uri appStoreUrl = Uri.parse("https://apps.apple.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.h,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Update Your App For  An Imporved Experience!',
              style: TextStyles.appBarText,
            ),
            if (Platform.isAndroid)
              GestureDetector(
                onTap: () => _launchURL(playStoreUrl),
                child:
                    Image.asset("assets/images/google_play.png", width: 100.w),
              ),
            if (Platform.isIOS) 
              GestureDetector(
                onTap: () => _launchURL(appStoreUrl),
                child:
                    Image.asset("assets/images/apple_stor.png", width: 100.w),
              ),
          ],
        ),
      ),
    );
  }

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}

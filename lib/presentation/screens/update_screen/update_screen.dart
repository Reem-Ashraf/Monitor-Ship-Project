import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/helpers/app_update_functions.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

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
            GestureDetector(
              onTap: () => launchURL(),
              child: Platform.isAndroid
                  ? Image.asset("assets/images/google_play.png", width: 100.w)
                  : Image.asset("assets/images/apple_stor.png", width: 100.w),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateScreen extends StatefulWidget {
  UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}
class _UpdateScreenState extends State<UpdateScreen> {
  final _remoteConfig = FirebaseRemoteConfig.instance;
  @override
  void initState() {
    super.initState();
    initRemoteConfig();
  }

  initRemoteConfig() async {
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 10),
      ),
    );
    await _remoteConfig.fetchAndActivate();
  }

  final int minimumBuild =
      FirebaseRemoteConfig.instance.getInt("min_required_build");

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
                onTap: () => _launchURL(),
                child: Platform.isAndroid
                    ? Image.asset("assets/images/google_play.png", width: 100.w)
                    : Image.asset("assets/images/apple_stor.png", width: 100.w),
              ),
            
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    final Uri appStoreUrl = Uri.parse(Platform.isAndroid
        ? "https://play.google.com"
        : "https://apps.apple.com");
    if (await canLaunchUrl(appStoreUrl)) {
      await launchUrl(appStoreUrl, mode: LaunchMode.externalApplication);
    }
  }
}

Future<int> getBuildNumber() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return int.parse(packageInfo.buildNumber);
}

Future<bool> isUpdateRequired() async {
  int currentBuild = 5; //await getBuildNumber();
  int minimumBuild = FirebaseRemoteConfig.instance.getInt("min_required_build");

  return currentBuild < minimumBuild; // لو أقل، المستخدم لازم يحدّث
}

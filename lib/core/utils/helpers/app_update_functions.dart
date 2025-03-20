import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL() async {
  final Uri appStoreUrl = Uri.parse(Platform.isAndroid
      ? "https://play.google.com"
      : "https://apps.apple.com");
  if (await canLaunchUrl(appStoreUrl)) {
    await launchUrl(appStoreUrl, mode: LaunchMode.externalApplication);
  }
}

Future<int> getBuildNumber() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return int.parse(packageInfo.buildNumber);
}

Future<bool> isUpdateRequired() async {
  int currentBuild = 9; //await getBuildNumber();
  int minRequiredBuild =
      FirebaseRemoteConfig.instance.getInt("min_required_build");

  return currentBuild < minRequiredBuild; // لو أقل، المستخدم لازم يحدّث
}

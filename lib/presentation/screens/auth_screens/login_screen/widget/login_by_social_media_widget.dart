import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/app_assets.dart';

class LoginBySocialMediaWidget extends StatelessWidget {
  LoginBySocialMediaWidget(
      {super.key,
      required this.appleIconTap,
      required this.faceBookIconTap,
      required this.googleIconTap});
  VoidCallback appleIconTap;
  VoidCallback googleIconTap;
  VoidCallback faceBookIconTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: appleIconTap,
            child: Image.asset(
              AppAssets.appleIcon,
              width: 40.w,
            )),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: googleIconTap,
          child: Image.asset(
            AppAssets.googleIcon,
            width: 40.w,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: faceBookIconTap,
          child: Image.asset(
            AppAssets.faceBookIcon,
            width: 40.w,
          ),
        ),
      ],
    );
  }
}

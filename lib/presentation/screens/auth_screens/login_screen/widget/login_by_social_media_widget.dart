import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_by_social_media_model.dart';

class LoginBySocialMediaWidget extends StatelessWidget {
  const LoginBySocialMediaWidget({
    super.key,
    required this.socialMediaButtons,
  });
  final List<SocialMediaModel> socialMediaButtons;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: socialMediaButtons
            .map((socialMedia) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: InkWell(
                    onTap: socialMedia.onTap,
                    child: Image.asset(
                      socialMedia.iconPath,
                      width: 40.w,
                    ),
                  ),
                ))
            .toList());
  }
}

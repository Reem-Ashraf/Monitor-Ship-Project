import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/constants/app_assets.dart';
import 'login_by_social_media_model.dart';
import 'login_by_social_media_widget.dart';

class LoginBySocialMediaImplement extends StatelessWidget {
  const LoginBySocialMediaImplement({super.key});

  @override
  Widget build(BuildContext context) {
    return  LoginBySocialMediaWidget(
      socialMediaButtons: [
        SocialMediaModel(
            iconPath: AppAssets.appleIcon,
            onTap: () => print("Apple Login")),
        SocialMediaModel(
            iconPath: AppAssets.googleIcon,
            onTap: () => print("Google Login")),
        SocialMediaModel(
            iconPath: AppAssets.faceBookIcon,
            onTap: () => print("Facebook Login")),
      ],
    );
  }
}

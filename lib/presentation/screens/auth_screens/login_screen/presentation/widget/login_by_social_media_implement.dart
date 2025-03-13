import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/constants/app_assets.dart';
import '../cubit/auth_cubit.dart';
import 'login_by_social_media_model.dart';
import 'login_by_social_media_widget.dart';

class LoginBySocialMediaImplement extends StatelessWidget {
  const LoginBySocialMediaImplement({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return LoginBySocialMediaWidget(
          socialMediaButtons: [
            SocialMediaModel(
                iconPath: AppAssets.appleIcon,
                onTap: () => print("Apple Login")),
            SocialMediaModel(
                iconPath: AppAssets.googleIcon,
                onTap: () => context.read<AuthCubit>().logInWithGoogle() ),
            SocialMediaModel(
                iconPath: AppAssets.faceBookIcon,
                onTap: () => print("Facebook Login")),
          ],
        );
      },
    );
  }
}

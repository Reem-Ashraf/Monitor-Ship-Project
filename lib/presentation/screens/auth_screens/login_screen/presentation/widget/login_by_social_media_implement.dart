import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../../core/utils/constants/app_assets.dart';
import '../cubit/auth_cubit.dart';
import 'login_by_social_media_model.dart';
import 'login_by_social_media_widget.dart';

class LoginBySocialMediaImplement extends StatelessWidget {
  const LoginBySocialMediaImplement({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          // TODO: Create a custom snack bar and use it
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
        if (state is LoginSuccess) {
          context.go(RoutesName.bottomNavigationBarScreen);
        }
      },
      builder: (context, state) {
        return LoginBySocialMediaWidget(
          socialMediaButtons: [
            SocialMediaModel(
                iconPath: AppAssets.appleIcon,
                onTap: () => print("Apple Login")),
            SocialMediaModel(
                iconPath: AppAssets.googleIcon,
                onTap: () => context.read<AuthCubit>().logInWithGoogle()),
            SocialMediaModel(
                iconPath: AppAssets.faceBookIcon,
                onTap: () => print("Facebook Login")),
          ],
        );
      },
    );
  }
}

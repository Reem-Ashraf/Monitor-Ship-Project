import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/helpers/regx.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/widget/forget_password_widget.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/widget/login_by_social_media_implement.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/widget/login_text_widget.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/widget/or_login_with_widget.dart';
import '../../../../core/language/app_translation_key.dart';
import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';
import '../../../../core/utils/helpers/spacing.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool isObscureText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTextWidget(),
              verticalSpace(
                24.h,
              ),
              AppTextFormField(
                hintText: context.tr(AppTranslationKeys.emailAddress),
                validator: (email) {
                  AppRegex.isEmailValid(email!);
                },
              ),
              verticalSpace(
                24.h,
              ),
              AppTextFormField(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: Icon(
                    isObscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                isObscureText: isObscureText,
                hintText: context.tr(AppTranslationKeys.password),
                validator: (password) {
                  AppRegex.isPasswordValid(password!);
                },
              ),
              verticalSpace(
                12.h,
              ),
              ForgetPasswordWidget(
                onTap: () {
                  // context.push(RoutesName.) //TODO: add forget password screen
                },
              ),
              verticalSpace(
                30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                    child: AppButton(
                  onTap: () {
                    context.go(RoutesName.bottomNavigationBarScreen);
                  },
                  text: context.tr(AppTranslationKeys.login),
                )),
              ),
              verticalSpace(
                12.h,
              ),
              OrLoginWithWidget(),
              verticalSpace(
                20.h,
              ),
              LoginBySocialMediaImplement()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/login_screen/widget/login_by_social_media_widget.dart';

import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';

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
              Text(
                "Log into your account",
                style: TextStyle(color: AppColors.black, fontSize: 24.sp),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Email Address',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
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
                hintText: 'Password',
                validator: (String) {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password?',
                  // style: TextStyles.font13BlueRegular,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                    child: AppButton(
                  onTap: () {},
                  text: 'Log In',
                )),
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Or Login with ",
                  style: TextStyle(fontSize: 12.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              LoginBySocialMediaWidget(
                appleIconTap: () {},
                faceBookIconTap: () {},
                googleIconTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

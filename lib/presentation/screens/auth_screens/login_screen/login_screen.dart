import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import 'widget/login_by_social_media_widget.dart';

import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
// TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log into your account",
                // TODO: Use TextStyles class
                style: TextStyle(color: AppColors.black, fontSize: 24.sp),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Email Address',
                // TODO: Later, extract validation functions and call them here to improve code clarity and maintainability.
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _isObscureText = !_isObscureText;
                    });
                  },
                  child: Icon(
                    _isObscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                isObscureText: _isObscureText,
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

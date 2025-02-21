import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_routes/routes_name.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/colors.dart';

import '../../widget/blur_button.dart';

class WelcomeScreen extends StatelessWidget {
  // TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            AppAssets.welcomeScreenBackGround, // Change this to your image path
            fit: BoxFit.cover,
          ),

          // Dark Overlay for better text visibility
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.only(bottom: 65, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                // Title
                Text(
                  "Welcome to GemStore!",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Subtitle
                SizedBox(height: 3.h),
                Text(
                  "The home for a fashionista",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                // Get Started Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: BlurButton(
                    text: 'Get Started',
                    onTap: () {
                      context.goNamed(RoutesName.onBoardingScreen1);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

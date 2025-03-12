import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/onBoarding_screen/widget/build_dots.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/onBoarding_screen/widget/page_view_content.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/onBoarding_screen/widget/rectangle_assets.dart';
import 'package:monitor_ship_project/presentation/widget/blur_button.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/app_routes/routes_name.dart';
import '../../../../core/utils/helpers/spacing.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RectangleAssets(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PageViewContent(),
              verticalSpace(5.h),
              BuildDots(),
              verticalSpace(15.h),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 80, right: 50, left: 50), // Reduced from 80
                child: BlurButton(
                    text: context.tr(AppTranslationKeys.shoppingNow),
                    onTap: () {
                      context.goNamed(RoutesName.loginScreen);
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/app_routes/routes_name.dart';
import '../../../../core/utils/helpers/spacing.dart';
import '../../../widget/blur_button.dart';
import 'widget/build_dots.dart';
import 'widget/page_view_content.dart';
import 'widget/rectangle_assets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  void _updatePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RectangleAssets(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PageViewContent(onPageChanged: _updatePage),
              verticalSpace(5.h),
              BuildDots(currentPage: currentPage),
              verticalSpace(15.h),
              Padding(
                padding: EdgeInsets.only(bottom: 80.h, right: 50.w, left: 50.w),
                child: BlurButton(
                  text: context.tr(AppTranslationKeys.shoppingNow),
                  onTap: () {
                    context.goNamed(RoutesName.loginScreen);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

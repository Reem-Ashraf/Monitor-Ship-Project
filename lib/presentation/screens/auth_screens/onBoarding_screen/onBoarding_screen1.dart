import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/constants/app_assets.dart';
import 'widget/build_dots.dart';
import 'widget/onBoarding_content.dart';
import '../../../widget/blur_button.dart';

import '../../../../core/utils/app_routes/routes_name.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.75);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(AppAssets.rectangle),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingData.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      // TODO: In line with Clean Code guidelines (preferably <2 function arguments), create a model with onTap, rate, and index to streamline argument handling.
                      title: onboardingData[index]["title"]!,
                      subtitle: onboardingData[index]["subtitle"]!,
                      image: onboardingData[index]["image"]!,
                    );
                  },
                ),
              ),

              /// 🔽 Reduce space between dots & PageView
              SizedBox(height: 5.h),

              /// Dots Indicator
              BuildDots(),

              /// 🔽 Reduce space between dots & button
              SizedBox(height: 15.h),

              /// Button with less bottom padding
              Padding(
                padding: EdgeInsets.only(
                    bottom: 80.h, right: 50.w, left: 50.w), // Reduced from 80
                child: BlurButton(
                    text: "Shopping now",
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

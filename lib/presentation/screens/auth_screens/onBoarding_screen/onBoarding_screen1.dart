
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/onBoarding_screen/widget/build_dots.dart';
import 'package:monitor_ship_project/presentation/screens/auth_screens/onBoarding_screen/widget/onBoarding_content.dart';
import 'package:monitor_ship_project/presentation/widget/blur_button.dart';

import '../../../../core/utils/app_routes/routes_name.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.75); // Slightly wider view

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
                      title: onboardingData[index]["title"]!,
                      subtitle: onboardingData[index]["subtitle"]!,
                      image: onboardingData[index]["image"]!,
                    );
                  },
                ),
              ),

              /// 🔽 Reduce space between dots & PageView
              SizedBox(height: 5),

              /// Dots Indicator
              BuildDots(),

              /// 🔽 Reduce space between dots & button
              SizedBox(height: 15),

              /// Button with less bottom padding
              Padding(
                padding: const EdgeInsets.only(bottom: 80,right: 50,left: 50), // Reduced from 80
                child: BlurButton(text: "Shopping now", onTap: () {

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




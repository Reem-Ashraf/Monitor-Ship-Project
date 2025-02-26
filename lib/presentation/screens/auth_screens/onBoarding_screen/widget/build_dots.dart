import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/colors.dart';

//TODO In line with Clean Code guidelines (preferably <2 function arguments), create a model to streamline argument handling.
List<Map<String, String>> onboardingData = [
  {
    "title": "Discover something new",
    "subtitle": "Special new arrivals just for you",
    "image": AppAssets.onBoardingAsset1, // Replace with your asset images
  },
  {
    "title": "Update trendy outfit",
    "subtitle": "Favorite brands and hottest trends",
    "image": AppAssets.onBoardingAsset2,
  },
  {
    "title": "Explore your true style",
    "subtitle": "Relax and let us bring the style to you",
    "image": AppAssets.onBoardingAsset3,
  },
];
int currentPage = 0;

class BuildDots extends StatelessWidget {
  const BuildDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: currentPage == index ? 6 : 6,
          height: 6,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            color: currentPage == index ? Colors.white : Colors.grey,
            borderRadius: BorderRadius.circular(3.r),
            // TODO: Focus On Responsive Design, check the following links:
            //! https://docs.flutter.dev/ui/layout
            //! https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
            //! https://docs.flutter.dev/ui/layout/constraints
            //! https://pub.dev/packages/flutter_screenutil
          ),
        ),
      ),
    );
  }
}

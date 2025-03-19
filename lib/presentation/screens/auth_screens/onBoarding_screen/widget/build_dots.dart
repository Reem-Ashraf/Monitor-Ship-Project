import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

import 'on_boarding_model.dart';

int currentPage = 0;

class BuildDots extends StatelessWidget {
  final int currentPage;

  const BuildDots({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: currentPage == index ? 6.w : 6.w,
          height: 6.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            color: currentPage == index ? AppColors.white : AppColors.grey,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
    );
  }
}

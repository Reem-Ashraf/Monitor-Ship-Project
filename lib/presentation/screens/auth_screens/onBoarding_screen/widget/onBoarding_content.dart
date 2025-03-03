import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../../core/utils/helpers/spacing.dart';
import 'on_boarding_model.dart';
import 'package:easy_localization/easy_localization.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingModel onboardingItem;

  const OnboardingContent({super.key, required this.onboardingItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr(onboardingItem.title), // Localized title
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingTitleStyle,
          ),
          verticalSpace(10.h),
          Text(
            context.tr(onboardingItem.subtitle), // Localized subtitle
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSupTitleStyle,
          ),
          verticalSpace(30.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              onboardingItem.image,
              width: 261.w,
            ),
          ),
        ],
      ),
    );
  }
}

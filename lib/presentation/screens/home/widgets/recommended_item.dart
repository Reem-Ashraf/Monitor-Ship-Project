import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/text_style.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60.w,
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).r,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.productTest),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Turtleneck Sweater ',
                textScaler: TextScaler.noScaling,
                style: TextStyles.textw500,
              ),
              Text(
                r'$ 39.99 ',
                textScaler: TextScaler.noScaling,
                style: TextStyles.textw700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/text_style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 126.w,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).r,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.productTest),
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
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
    );
  }
}

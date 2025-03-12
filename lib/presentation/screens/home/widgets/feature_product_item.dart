import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_routes/routes_name.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/text_style.dart';

class FeatureProductItem extends StatelessWidget {
  const FeatureProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutesName.productDetails);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
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
    );
  }
}

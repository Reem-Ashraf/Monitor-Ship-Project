import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 126.w,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.productTest),
            ),
          ),
        ),
        Positioned(
          right: 5.w,
          top: 8.h,
          child: Container(
            height: 30.h,
            width: 30.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }
}

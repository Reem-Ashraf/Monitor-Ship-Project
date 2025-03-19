import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';

class DiscountOff extends StatelessWidget {
  const DiscountOff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          borderRadius: BorderRadius.circular(
            25,
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "50% off",
            textScaler: TextScaler.noScaling,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(Icons.close),
        ],
      ),
    );
  }
}

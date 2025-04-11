import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';

class QuantitySelectorCart extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelectorCart({super.key, 
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63.w,
      height: 22.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            color: Colors.black.withValues(alpha: 128),
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 18.sp,
              color: AppColors.blackGray,
            ),
          ),
          Text(quantity.toString(),
              style:
                  TextStyles.text10w500.copyWith(color: AppColors.blackGray)),
          InkWell(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 18.sp,
              color: AppColors.blackGray,
            ),
          ),
        ],
      ),
    );
  }
}

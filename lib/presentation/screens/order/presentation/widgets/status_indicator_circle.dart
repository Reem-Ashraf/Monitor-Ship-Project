import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';

class StatusIndicatorCircle extends StatelessWidget {
  const StatusIndicatorCircle({super.key, required this.isCompleted});
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      radius: 10.r,
      child: Container(
        decoration: ShapeDecoration(
          shape: OvalBorder(
            side: BorderSide(width: 1.w, color: AppColors.tabBarColor),
          ),
        ),
        child: Center(
          child: Icon(
            isCompleted ? Icons.check_circle_rounded : Icons.circle,
            color: AppColors.black,
            size: 14.sp,
          ),
        ),
      ),
    );
  }
}

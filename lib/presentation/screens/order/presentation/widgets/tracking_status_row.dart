import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingStatusRow extends StatelessWidget {
  const TrackingStatusRow({
    super.key,
    required this.isCompleted,
    required this.isLast,
    required this.statusText,
    required this.dateText,
  });

  final bool isCompleted;
  final bool isLast;
  final String statusText;
  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
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
            ),
            if (!isLast)
              ...List.generate(
                3,
                (index) => Container(
                  width: 5.w,
                  height: 5.h,
                  margin: EdgeInsets.only(top: 6.h),
                  decoration: ShapeDecoration(
                    color: AppColors.tabBarColor,
                    shape: OvalBorder(),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            statusText,
            style: TextStyles.product11W400,
          ),
        ),
        Text(
          dateText,
          style: TextStyles.product12W400.copyWith(color: AppColors.coolGray),
        ),
      ],
    );
  }
}

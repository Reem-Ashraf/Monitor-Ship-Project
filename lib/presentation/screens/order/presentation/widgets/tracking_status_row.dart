import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/track_status_model.dart';
import 'status_indicator_circle.dart';

class TrackingStatusRow extends StatelessWidget {
  const TrackingStatusRow({
    super.key,
    required this.trackStatusModel,
  });

  final TrackStatusModel trackStatusModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            StatusIndicatorCircle(isCompleted: trackStatusModel.isCompleted),
            if (trackStatusModel.isLast)
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
            trackStatusModel.statusText,
            style: TextStyles.product11W400,
          ),
        ),
        Text(
          trackStatusModel.dateText,
          style: TextStyles.product12W400.copyWith(color: AppColors.coolGray),
        ),
      ],
    );
  }
}

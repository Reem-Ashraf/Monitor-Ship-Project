import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class RecentSearchWidget extends StatelessWidget {
  const RecentSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.offwhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hoodie',
              textScaler: TextScaler.noScaling,
              style: TextStyles.textw700Gray,
            ),
            Icon(
              Icons.close,
              color: AppColors.gray,
            ),
          ],
        ),
      ),
    );
  }
}

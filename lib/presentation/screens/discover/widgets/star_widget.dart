import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(Icons.star, color: AppColors.darkGreen, size: 12.r),
        SizedBox(
          width: 4.w,
        ),
        const Text('(56)'),
      ],
    );
  }
}

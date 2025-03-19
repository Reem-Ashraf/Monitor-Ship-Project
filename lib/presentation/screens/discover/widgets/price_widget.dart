import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          r'$ 39.99 ',
          textScaler: TextScaler.noScaling,
          style: TextStyles.textw700,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          r'$ 39.99 ',
          textScaler: TextScaler.noScaling,
          style: TextStyles.text13.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.gray),
        ),
      ],
    );
  }
}

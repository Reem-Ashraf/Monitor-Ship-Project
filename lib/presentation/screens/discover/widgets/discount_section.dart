import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/discount_off.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discount',
          textScaler: TextScaler.noScaling,
          style: TextStyles.text20,
        ),
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: [
            DiscountOff(),
            DiscountOff(),
            DiscountOff(),
            DiscountOff(),
          ],
        ),
      ],
    );
  }
}

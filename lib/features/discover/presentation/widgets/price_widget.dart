
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

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
          style: TextStyles.textw700,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          r'$ 39.99 ',
          style: TextStyles.text13.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.gray),
        ),
      ],
    );
  }
}



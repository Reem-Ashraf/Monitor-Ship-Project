import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../data/models/summary_cart_item.dart';

class SummaryRow extends StatelessWidget {
  final SummaryItem item;

  const SummaryRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item.label,
          style: TextStyles.textStyle14W400.copyWith(
            color: item.isTotal
                ? AppColors.blackGray
                : AppColors.accessorySmallCircle,
          ),
        ),
        Text(
          item.value,
          style: TextStyles.textw700.copyWith(
            color: AppColors.blackGray,
            fontWeight: item.isTotal ? FontWeight.w700 : FontWeight.w200,
          ),
        ),
      ],
    );
  }
}

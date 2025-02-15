import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
class StarWidget extends StatelessWidget {
  const StarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(Icons.star, color: AppColors.darkGreen, size: 12),
          const SizedBox(width: 4,),
        const Text('(56)'),
      ],
    );
  }
}
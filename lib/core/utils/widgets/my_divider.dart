import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      height: 1,
      decoration: BoxDecoration(color: AppColors.paleGray),
    );
  }
}

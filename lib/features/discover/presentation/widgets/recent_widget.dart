import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class RecentSearchWidget extends StatelessWidget {
  const RecentSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.offwhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sunglasses',
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

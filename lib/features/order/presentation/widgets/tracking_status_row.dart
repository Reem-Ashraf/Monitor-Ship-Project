import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class TrackingStatusRow extends StatelessWidget {
  const TrackingStatusRow({
    super.key,
    required this.isCompleted,
    required this.isLast,
    required this.statusText,
    required this.dateText,
  });

  final bool isCompleted;
  final bool isLast;
  final String statusText;
  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: AppColors.tabBarColor),
                ),
              ),
              child: Center(
                child: Icon(
                  isCompleted ? Icons.check_circle_rounded : Icons.circle,
                  color: AppColors.black,
                  size: 14,
                ),
              ),
            ),
            if (!isLast)
              Column(
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.only(top: 6),
                    decoration: ShapeDecoration(
                      color: AppColors.tabBarColor,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            statusText,
            style: TextStyles.product11W400,
          ),
        ),
        Text(
          dateText,
          style: TextStyles.product12W400.copyWith(color: AppColors.coolGray),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class CheckoutProgressIndicator extends StatelessWidget {
  const CheckoutProgressIndicator({
    super.key,
    this.isDone = false,
  });
  final bool? isDone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 5,
        children: [
          Icon(
            Icons.location_on_rounded,
            color: AppColors.black,
          ),
          SizedBox(
            width: 5,
          ),
          ...List.generate(
            6,
            (index) => Container(
              height: 5,
              width: 9,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.systemGray),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          ...List.generate(
            6,
            (index) => Container(
              height: 5,
              width: 9,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.systemGray),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.check_circle_rounded,
              color: isDone! ? AppColors.black : AppColors.systemGray),
        ],
      ),
    );
  }
}

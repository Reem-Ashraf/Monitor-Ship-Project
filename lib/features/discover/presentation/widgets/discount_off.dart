import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class DiscountOff extends StatelessWidget {
  const DiscountOff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          borderRadius: BorderRadius.circular(
            25,
          )),
      child: Row(
        children: [
          Text("50% off"),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.close),
        ],
      ),
    );
  }
}

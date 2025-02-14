import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class AppButton extends StatelessWidget {
   AppButton({super.key,required this.onTap,required this.text});

  String text ;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 193, // Set width
        height: 50, // Set height
        alignment: Alignment.center, // Center text
        decoration: BoxDecoration(
          color: AppColors.black, // Frosted glass effect
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

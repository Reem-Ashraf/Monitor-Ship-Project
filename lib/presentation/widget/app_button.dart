import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/constants/colors.dart';

class AppButton extends StatelessWidget {
  AppButton({super.key, required this.onTap, required this.text});

  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 260.w, // Set width
        height: 40.h, // Set height
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

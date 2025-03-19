import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import '../constants/text_style.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.height,
  });
  final void Function() onPressed;
  final String text;
  final double? height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        minimumSize: Size(width, height ?? 50.h),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.buttonStyle,
      ),
    );
  }
}

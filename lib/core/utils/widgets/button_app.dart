import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.height = 55,
  });
  final void Function() onPressed;
  final String text;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        minimumSize: Size(width, height),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.buttonStyle,
      ),
    );
  }
}

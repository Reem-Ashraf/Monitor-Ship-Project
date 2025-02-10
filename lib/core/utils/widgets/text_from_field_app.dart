import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/text_rich_checking.dart';

class TextFromFieldApp extends StatelessWidget {
  const TextFromFieldApp({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: TextRichChecking(text1: label),
        fillColor: AppColors.darkGray,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGray),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGray),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGray),
        ),
      ),
    );
  }
}

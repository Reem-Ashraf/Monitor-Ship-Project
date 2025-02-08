import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class TextRichChecking extends StatelessWidget {
  const TextRichChecking({
    super.key,
    required this.text1,
  });
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyles.inputStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' *',
            style: TextStyles.inputStyle.copyWith(
              color: AppColors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

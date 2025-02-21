import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';

class TextRichOrder extends StatelessWidget {
  const TextRichOrder({
    super.key,
    required this.text1,
    required this.text2,
    this.style2,
  });

  final TextStyle? style2;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: TextStyles.textStyle14W400.copyWith(color: AppColors.lightGray),
        children: [
          TextSpan(
            text: text2,
            style: style2 ??
                TextStyles.textStyle14W400.copyWith(color: AppColors.black),
          )
        ],
      ),
    );
  }
}

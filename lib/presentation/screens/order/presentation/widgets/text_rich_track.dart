import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/text_style.dart';

class TextRichTrack extends StatelessWidget {
  const TextRichTrack({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.tr(text1),
            style: TextStyles.product12W400.copyWith(
              // letterSpacing: -0.12,
            ),
          ),
          TextSpan(
            text: Constants.convertNumToArabic('  $text2', false),
            style: TextStyles.textStyle14W400.copyWith(
              // letterSpacing: -0.12,
              color: AppColors.orderCardColor,
            ),
          ),
        ],
      ),
    );
  }
}

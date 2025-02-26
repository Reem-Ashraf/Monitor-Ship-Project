import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';

class OrderDetailsRow extends StatelessWidget {
  const OrderDetailsRow({
    super.key,
    required this.text1,
    required this.text2,
    this.style1,
    this.style2,
  });
  final String text1;
  final TextStyle? style1;
  final String text2;
  final TextStyle? style2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: style1 ??
              TextStyles.textStyle14W400.copyWith(color: AppColors.lightGray),
        ),
        Flexible(
          child: Text(
            text2,
            style: style2 ??
                TextStyles.textStyle14W400.copyWith(color: AppColors.black),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

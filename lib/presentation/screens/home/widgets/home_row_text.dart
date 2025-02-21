import 'package:flutter/material.dart';
import '../../../../core/utils/constants/text_style.dart';

class CustomFeatureProductsRow extends StatelessWidget {
  const CustomFeatureProductsRow({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          textScaler: TextScaler.noScaling,
          style: TextStyles.appBarText,
        ),
        const Spacer(),
        TextButton(
          child: Text('show all',
              textScaler: TextScaler.noScaling, style: TextStyles.text13),
          onPressed: () {},
        )
      ],
    );
  }
}

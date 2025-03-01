import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/text_style.dart';

class ShowAllRow extends StatelessWidget {
  const ShowAllRow({
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
          child: Text(context.tr('show all'),
              textScaler: TextScaler.noScaling, style: TextStyles.text13),
          onPressed: () {},
        )
      ],
    );
  }
}

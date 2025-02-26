import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class RecenSearchRow extends StatelessWidget {
  const RecenSearchRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recent Searches',
          textScaler: TextScaler.noScaling,
          style: TextStyles.textw700Gray,
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete_outline,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class NumberOfItemWidget extends StatelessWidget {
  const NumberOfItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'jackets',
          style: TextStyle(fontSize: 17,fontFamily: 'ProductSansLight'),
        ),
        Spacer(),
        Text(
          '143 items',
          style: TextStyles.text13,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}

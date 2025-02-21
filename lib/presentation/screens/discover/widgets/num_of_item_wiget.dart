import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

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
          textScaler: TextScaler.noScaling,
          style: TextStyle(fontSize: 17.sp, fontFamily: 'ProductSansLight'),
        ),
        Spacer(),
        Text(
          '143 items',
          textScaler: TextScaler.noScaling,
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

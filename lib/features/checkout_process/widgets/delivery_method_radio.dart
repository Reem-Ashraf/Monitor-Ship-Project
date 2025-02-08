import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class DeliveryMethodRadio extends StatelessWidget {
  const DeliveryMethodRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 23,
          height: 23,
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(width: 8, color: AppColors.mintGreen),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Free',
                    style: TextStyles.inputStyle.copyWith(
                      color: AppColors.darkGray,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '   Delivery to home',
                    style: TextStyles.inputStyle.copyWith(
                      color: AppColors.coolGray,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Text('Delivery from 3 to 7 business days',
                style: TextStyles.inputStyle.copyWith(
                  color: AppColors.silverGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ],
    );
  }
}

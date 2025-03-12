import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';
import 'order_list_model.dart';

class StatusAndDetailsButton extends StatelessWidget {
  StatusAndDetailsButton({super.key, required this.order, required this.onTap});
  final OrderModel order;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(order.status,
            style: TextStyle(color: order.statusColor, fontSize: 16.sp)),
        SizedBox(
          height: 30.h,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              foregroundColor: Colors.black,
              backgroundColor: AppColors.white,
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33)),
            ),
            child: Text(context.tr(AppTranslationKeys.details),
                style: TextStyles.fontSize16),
          ),
        ),
      ],
    );
  }
}

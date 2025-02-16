import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/order_details_row.dart';

class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({
    super.key,
    required this.order,
  });

  final String order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10.r),
      width: double.infinity,
      height: 114.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 13.r,
            offset: Offset(0, 4.h),
            spreadRadius: -8.r,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 13.h,
        children: [
          OrderDetailsRow(
            text1: context.tr('Order'),
            text2: order,
          ),
          OrderDetailsRow(
            text1: context.tr('Tracking number:'),
            text2: 'IK987362341',
          ),
          OrderDetailsRow(
            text1: context.tr('Delivery address'),
            text2: 'SBI Building, Software Park',
          ),
        ],
      ),
    );
  }
}

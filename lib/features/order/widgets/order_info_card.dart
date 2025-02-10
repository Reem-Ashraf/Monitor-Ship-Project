import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/order/widgets/order_details_row.dart';

class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({
    super.key,
    required this.order,
  });

  final String order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      width: double.infinity,
      height: 114,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 13,
            offset: Offset(0, 4),
            spreadRadius: -8,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 13,
        children: [
          OrderDetailsRow(
            text1: 'Order ',
            text2: order,
          ),
          OrderDetailsRow(
            text1: 'Tracking number: ',
            text2: 'IK987362341',
          ),
          OrderDetailsRow(
            text1: 'Delivery address ',
            text2: 'SBI Building, Software Park',
          ),
        ],
      ),
    );
  }
}

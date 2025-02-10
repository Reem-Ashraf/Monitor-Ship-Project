import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/my_divider.dart';
import 'package:monitor_ship_project/features/order/widgets/order_details_row.dart';
import 'package:monitor_ship_project/features/order/widgets/order_item_details_row.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 247,
      padding: EdgeInsetsDirectional.all(14),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 14,
            offset: Offset(0, 5),
            spreadRadius: -8,
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.separated(
                itemBuilder: (context, index) => OrderItemDetailsRow(
                    nameOrder: 'Maxi Dress',
                    quantity: (index + 1 * 2).toString(),
                    price: (index + 1 * 2) * 4.5),
                separatorBuilder: (context, index) => SizedBox(
                      height: 21,
                    ),
                itemCount: 50),
          ),
          // MyDivider(),
          const SizedBox(
            height: 32,
          ),
          OrderDetailsRow(
            text1: 'Subtotal ',
            text2: '120.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
          OrderDetailsRow(
            text1: 'Shipping ',
            text2: '0.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),

          SizedBox(
            height: 12,
          ),
          MyDivider(),
          OrderDetailsRow(
            text1: 'Total ',
            text2: '\$ 120.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
        ],
      ),
    );
  }
}

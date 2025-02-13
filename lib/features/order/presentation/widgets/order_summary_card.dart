import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/constants.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/my_divider.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/order_details_row.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/order_item_details_row.dart';

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
                    quantity:
                        Constants.convertNumToArabic('${index + 1 * 2}', true),
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
            text1: context.tr('Subtotal'),
            text2: '120.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
          OrderDetailsRow(
            text1: context.tr('Shipping'),
            text2: '0.00',
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),

          SizedBox(
            height: 12,
          ),
          MyDivider(),
          OrderDetailsRow(
            text1: context.tr('Total'),
            text2: Constants.convertNumToArabic('120.00', true),
            style1: TextStyles.product14LightW400,
            style2: TextStyles.productBold16,
          ),
        ],
      ),
    );
  }
}

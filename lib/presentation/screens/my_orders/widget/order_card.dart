import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/quantity_and_subtotal_widget.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/status_and_details_button_widget.dart';
import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/constants/text_style.dart';
import 'number_of_order_and_date.dart';
import 'order_list_model.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyShade2, width: .5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NumberOfOrderAndDate(
              order: order,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text("${AppTranslationKeys.trackingNumber}: ",
                    style: TextStyles.greyShade3FontSize14),
                Text(order.trackingNumber,
                    style: TextStyles.greyShade3FontSize14),
              ],
            ),
            SizedBox(height: 4.h),
            QuantityAndSubtotal(
              order: order,
            ),
            SizedBox(height: 8.h),
            StatusAndDetailsButton(
              order: order,
              onTap: () {
                context.push(RoutesName.orderDetails);
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/delivery_status_banner.dart';
import '../widgets/order_action_buttons.dart';
import '../widgets/order_info_card.dart';
import '../widgets/order_status_app_bar.dart';
import '../widgets/order_summary_card.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.order});
  final String order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: OrderStatusAppBar(
          title: context.tr(order),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 24.w,
              bottom: 24.h,
              end: 24.w,
            ),
            child: Column(
              children: [
                DeliveryStatusBanner(),
                SizedBox(
                  height: 22.h,
                ),
                OrderInfoCard(order: order),
                SizedBox(
                  height: 37.h,
                ),
                OrderSummaryCard(),
                SizedBox(
                  height: 36.h,
                ),
                OrderActionButtons(order: order),
              ],
            ),
          ),
        ));
  }
}

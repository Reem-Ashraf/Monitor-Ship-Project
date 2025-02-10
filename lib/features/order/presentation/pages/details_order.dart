import 'package:flutter/material.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/appbar_checking.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/widgets/delivery_status_banner.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/widgets/order_action_buttons.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/widgets/order_info_card.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/widgets/order_summary_card.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.order});
  final String order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarChecking(
          title: order,
        ),
        body: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 24, end: 24, top: 30),
          child: Column(
            children: [
            DeliveryStatusBanner(),
            const SizedBox(
              height: 26,
            ),
            OrderInfoCard(order: order),
            const SizedBox(
              height: 41,
            ),
            OrderSummaryCard(),
            const SizedBox(
              height: 40,
            ),
            OrderActionButtons(order: order),
          ]),
        ));
  }
}





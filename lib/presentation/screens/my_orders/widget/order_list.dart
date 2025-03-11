import 'package:flutter/material.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_list_model.dart';

import 'order_card.dart';

class OrdersList extends StatelessWidget {
  final List<OrderModel> orders;

  const OrdersList({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(order: orders[index]); // Display all filtered orders
      },
    );
  }
}

import 'package:flutter/cupertino.dart';

import 'order_screen.dart';

class OrdersList extends StatelessWidget {
  final String status;
  final Color color;

  OrdersList({super.key, required this.status, required this.color});

  final List<Map<String, dynamic>> orders = [
    {
      "id": "#1524",
      "tracking": "IK28736838",
      "quantity": 2,
      "subtotal": 110,
      "date": "13/05/2021"
    },
    {
      "id": "#1514",
      "tracking": "IK98736234",
      "quantity": 1,
      "subtotal": 50,
      "date": "12/05/2021"
    },
    {
      "id": "#1829",
      "tracking": "IK28736881",
      "quantity": 3,
      "subtotal": 150,
      "date": "10/05/2021"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(
          orderId: orders[index]["id"],
          trackingNumber: orders[index]["tracking"],
          quantity: orders[index]["quantity"],
          subtotal: orders[index]["subtotal"],
          date: orders[index]["date"],
          status: status,
          statusColor: color,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/features/order/widgets/card_order.dart';

class ProcessingOrdersView extends StatelessWidget {
  const ProcessingOrdersView(
      {super.key,
      required this.textState,
      required this.colorState,
      required this.orderNum});
  final String textState;
  final Color colorState;
  final int orderNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => CardOrder(
              textState: textState,
              colorState: colorState,
              orderNum: '${index + 1}',
            ),
            itemCount: orderNum,
          ),
        )
      ],
    );
  }
}

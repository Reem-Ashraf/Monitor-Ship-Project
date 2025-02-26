import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/text_style.dart';

class OrderItemDetailsRow extends StatelessWidget {
  const OrderItemDetailsRow({
    super.key,
    required this.nameOrder,
    required this.quantity,
    required this.price,
  });
  final String nameOrder;
  final String quantity;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            nameOrder,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.product14LightW400,
          ),
        ),
        Spacer(),
        Text(
          'X$quantity',
          style: TextStyles.nunito15W300,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          width: 38,
        ),
        // Spacer(),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyles.product16Medium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

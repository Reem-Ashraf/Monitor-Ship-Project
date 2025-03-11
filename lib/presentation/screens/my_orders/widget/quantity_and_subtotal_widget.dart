import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/constants/text_style.dart';
import 'order_list_model.dart';

class QuantityAndSubtotal extends StatelessWidget {
  QuantityAndSubtotal({super.key, required this.order});
  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("${context.tr(AppTranslationKeys.quantity)}: ",
                style: TextStyles.greyShade3FontSize16),
            Text(
              "${order.quantity}",
              style: TextStyles.blackFont16,
            )
          ],
        ),
        Row(
          children: [
            Text("${context.tr(AppTranslationKeys.subtotal)}: ",
                style: TextStyles.greyShade3FontSizeBold16),
            Text("\$${order.subtotal}", style: TextStyles.blackFont16),
          ],
        ),
      ],
    );
  }
}

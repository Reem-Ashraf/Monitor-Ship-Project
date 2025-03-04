import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/constants/colors.dart';
import 'order_list_model.dart';

class NumberOfOrderAndDate extends StatelessWidget {
  NumberOfOrderAndDate({
    super.key,
    required this.order,
  });
  final OrderModel order;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${context.tr(AppTranslationKeys.order)} ${order.orderId}",
            style: TextStyles.greyShade3FontSize18),
        Text(order.date, style: TextStyles.greyShade3FontSize16),
      ],
    );
  }
}

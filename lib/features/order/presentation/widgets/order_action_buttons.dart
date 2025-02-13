import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/routes.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({
    super.key,
    required this.order,
  });

  final String order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 24,
        children: [
          Expanded(
            child: OutlinedButton(
                style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      BorderSide(color: AppColors.lightGray)),
                ),
                onPressed: () {
                  context.push(AppRouter.orderDetails,
                      extra: '${context.tr('Order')} #$order');
                },
                child: Text(
                  'Return home'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyles.buttonStyle
                      .copyWith(color: AppColors.lightGray),
                )),
          ),
          SizedBox(
            width: 120,
            height: 44,
            child: ButtonApp(
              onPressed: () {
                context.push(AppRouter.rateProduct);
              },
              text: context.tr('Rate'),
            ),
          ),
        ],
      ),
    );
  }
}

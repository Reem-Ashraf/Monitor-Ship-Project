import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/routes.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/order/presentation/widgets/widgets/text_rich_order.dart';

class CardOrder extends StatelessWidget {
  const CardOrder({
    super.key,
    required this.textState,
    required this.colorState,
    required this.orderNum,
  });
  final String textState;
  final Color colorState;
  final String orderNum;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: AppColors.white,
      shadowColor: AppColors.shadowColor,
      child: Padding(
        padding:
            EdgeInsetsDirectional.only(start: 25, end: 12, top: 18, bottom: 15),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order #$orderNum',
                  style: TextStyles.appbarStyle
                      .copyWith(color: AppColors.orderCardColor),
                ),
                Text(
                  '9/02/2025',
                  style: TextStyles.textStyle14W400
                      .copyWith(color: AppColors.lightGray),
                )
              ],
            ),
            TextRichOrder(text1: 'Tracking number: ', text2: 'IK987362341'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextRichOrder(text1: 'Quantity: ', text2: '2'),
                TextRichOrder(
                  text1: 'Subtotal: ',
                  text2: '\$ 120.00',
                  style2: TextStyles.buttonStyle
                      .copyWith(color: AppColors.orderCardColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textState,
                  style: TextStyles.inputStyle.copyWith(color: colorState),
                ),
                OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                          BorderSide(color: AppColors.lightGray)),
                    ),
                    onPressed: () {
                      context.push(AppRouter.orderDetails,
                          extra: 'Order #$orderNum');
                    },
                    child: Text(
                      'Details',
                      style: TextStyles.inputStyle
                          .copyWith(color: AppColors.black),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

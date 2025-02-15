import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/routes.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';
import 'package:monitor_ship_project/core/utils/widgets/my_divider.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/appbar_checking.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/checkout_progress_indicator.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/delivery_method_radio.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/shipping_information_form.dart';

class CheckoutFirst extends StatelessWidget {
  const CheckoutFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarChecking(
          title: context.tr('Check out'),
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckoutProgressIndicator(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  context.tr('STEP 1'),
                  style: TextStyles.stepStyle,
                ),
                Text('Shipping', style: TextStyles.titleStyle).tr(),
                SizedBox(
                  height: 15,
                ),
                ShippingInformationForm(),
                SizedBox(
                  height: 30,
                ),
                Text('Shipping method'.tr(), style: TextStyles.titleStyle),
                MyDivider(),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 12),
                  child: DeliveryMethodRadio(),
                ),
                SizedBox(
                  height: 8,
                ),
                MyDivider(),
                SizedBox(
                  //
                  height: 60,
                ),
                ButtonApp(
                  onPressed: () {
                    context.push(AppRouter.checkoutSecond);
                  },
                  text: context.tr('Continue to payment'),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';
import 'package:monitor_ship_project/features/checkout_process/widgets/appbar_checking.dart';
import 'package:monitor_ship_project/features/checkout_process/widgets/checkout_progress_indicator.dart';
import 'package:monitor_ship_project/features/checkout_process/widgets/delivery_method_radio.dart';
import 'package:monitor_ship_project/features/checkout_process/widgets/shipping_information_form.dart';

class CheckoutFirst extends StatelessWidget {
  const CheckoutFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBarChecking(),
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
                  'STEP 1',
                  style: TextStyles.stepStyle,
                ),
                Text('Shipping', style: TextStyles.titleStyle),
                SizedBox(
                  height: 15,
                ),
                ShippingInformationForm(),
                SizedBox(
                  height: 30,
                ),
                Text('Shipping method', style: TextStyles.titleStyle),
                SizedBox(
                  height: 15,
                ),
                MyDivider(),
                SizedBox(
                  height: 10,
                ),
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
                  height: 60,
                ),
                ButtonApp(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      decoration: BoxDecoration(color: AppColors.paleGray),
    );
  }
}

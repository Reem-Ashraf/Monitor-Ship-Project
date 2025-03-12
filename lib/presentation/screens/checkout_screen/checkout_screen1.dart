import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/check_out_screen_text_fields.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/delivery_option_tile_widget.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/location_complete_mark_widget.dart';

import '../../../core/language/app_translation_key.dart';
import '../../widget/app_button.dart';

class CheckoutScreen1 extends StatefulWidget {
  CheckoutScreen1({super.key});
  bool isSelected = false;

  @override
  State<CheckoutScreen1> createState() => _CheckoutScreen1State();
}

class _CheckoutScreen1State extends State<CheckoutScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            child: Image.asset(AppAssets.arrowBack),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Check out",
          style: TextStyle(fontSize: 24.sp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationCompleteMarkWidget(
                isCheckout1Screen: true,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                context.tr(AppTranslationKeys.step1),
                style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              Text(
                context.tr(AppTranslationKeys.shipping),
                style: TextStyles.blackFont24,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              CheckOutScreenTextFields(),
              Text(
                context.tr(AppTranslationKeys.shippingMethod),
                style: TextStyles.blackFont14,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              DeliveryOptionTileWidget(),
              SizedBox(
                height: 24.h,
              ),
              Center(
                  child: AppButton(
                onTap: () {
                  context.pushNamed(RoutesName.checkOutScreen2);
                },
                text: context.tr(AppTranslationKeys.continueToPayment),
              )),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/location_complete_mark_widget.dart';

import '../../../core/language/app_translation_key.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../widget/app_button.dart';

class CheckOutScreen2 extends StatelessWidget {
  const CheckOutScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Image.asset(AppAssets.arrowBack),
          ),
        ),
        centerTitle: true,
        title: Text(
          context.tr(AppTranslationKeys.checkout),
          style: TextStyle(fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationCompleteMarkWidget(
                isCheckout1Screen: false,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                context.tr(AppTranslationKeys.orderCompleted),
                style: TextStyles.blackFont24,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                  child: Image.asset(
                AppAssets.completedOrder,
                height: 110.h,
                width: 110.w,
              )),
              SizedBox(
                height: 40.h,
              ),
              Text(
                context.tr(
                    AppTranslationKeys.thankYouForPurchaseViewOrderInMyOrders),
                style: TextStyles.greyFontSize14,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                  child: AppButton(
                onTap: () {},
                text: context.tr(AppTranslationKeys.continueToPayment),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

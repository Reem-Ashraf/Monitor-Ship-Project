import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/location_complete_mark_widget.dart';


import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/colors.dart';
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
          "Check out",
          style: TextStyle(fontSize: 24.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationCompleteMarkWidget(isCheckout1Screen: false,),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Order Completed",
                style: TextStyle(color: AppColors.black, fontSize: 24.sp),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(child: Image.asset(AppAssets.completedOrder,height: 110.h,width: 110.w,)),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Thank you for your purchase.You can view your order in ‘My Orders’ section.",
                style: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                  child: AppButton(
                    onTap: () {

                    },
                    text: 'Continue To Payment',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

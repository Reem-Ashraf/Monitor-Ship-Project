import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/drop_down_menue.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/location_complete_mark_widget.dart';
import 'package:monitor_ship_project/presentation/screens/checkout_screen/widget/selected_radio_button.dart';

import '../../widget/app_button.dart';
import '../../widget/app_text_field.dart';

class CheckoutScreen1 extends StatefulWidget {
   CheckoutScreen1({super.key});
   bool isSelected = false;
  @override
  State<CheckoutScreen1> createState() => _CheckoutScreen1State();
}

class _CheckoutScreen1State extends State<CheckoutScreen1> {
  int selectedOption = 0;

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
              LocationCompleteMarkWidget(isCheckout1Screen: true,),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "STEP1",
                style: TextStyle( fontSize: 8,fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              Text(
                "Shipping",
                style: TextStyle(color: AppColors.black, fontSize: 24),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'First name *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Last name *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              DropDownMenu(),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Street name *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'City *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'State / Province',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Zip-code *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              AppTextFormField(
                hintText: 'Phone number *',
                validator: (String) {},
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Shipping method",
                style: TextStyle(color: AppColors.black, fontSize: 14),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              DeliveryOptionTile(
                isSelected: selectedOption == 1,
                title: "\$5.99",
                subtitle: "Express delivery within 1-2 business days",
                onTap: () {
                  setState(() {
                    selectedOption = 1;
                  });
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              Center(
                  child: AppButton(
                    onTap: () {
                      context.pushNamed(RoutesName.checkOutScreen2);
                    },
                    text: 'Continue To Payment',
                  )),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 20.h,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

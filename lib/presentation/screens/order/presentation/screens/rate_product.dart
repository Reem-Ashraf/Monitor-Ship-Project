import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';
import 'package:monitor_ship_project/core/utils/widgets/rate_star.dart';

import '../widgets/order_status_app_bar.dart';
import '../widgets/rating_submitted_dialog.dart';
import '../widgets/text_from_field_rate.dart';

class RateProduct extends StatelessWidget {
  const RateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrderStatusAppBar(
        title: context.tr('Rate Product'),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 30.w,
          vertical: 30.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StarScore(),
              SizedBox(
                height: 20.h,
              ),
              TextFromFieldRate(),
              SizedBox(
                height: 125.h,
              ),
              ButtonApp(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => RatingSubmittedDialog(),
                    );
                  },
                  text: context.tr('Submit Review')),
            ],
          ),
        ),
      ),
    );
  }
}

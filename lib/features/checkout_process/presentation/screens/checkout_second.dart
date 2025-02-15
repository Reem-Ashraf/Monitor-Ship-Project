import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/core/utils/widgets/button_app.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/appbar_checking.dart';
import 'package:monitor_ship_project/features/checkout_process/presentation/widgets/checkout_progress_indicator.dart';

class CheckoutSecond extends StatelessWidget {
  const CheckoutSecond({super.key});

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
                CheckoutProgressIndicator(
                  isDone: true,
                ),
                SizedBox(
                  height: 43,
                ),
                Text(
                  context.tr('Order Completed'),
                  style: TextStyles.titleStyle,
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                    child: SvgPicture.asset(
                        height: 120, width: 120, AppAssets.assetsImageOrder)),
                SizedBox(
                  height: 55,
                ),
                Center(
                  child: Text(
                    context.tr('thank_you_message'),
                    textAlign: TextAlign.center,
                    style: TextStyles.textStyle14W400,
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                ButtonApp(
                  onPressed: () {
                    context.push(RoutesName.myOrder);
                  },
                  text: context.tr('Continue shopping'),
                ),
                SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/order/widgets/processing_orders_view.dart';
import 'package:monitor_ship_project/features/order/widgets/tab_bar_app.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Orders',
              style: TextStyles.appbarStyle,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: SvgPicture.asset(
                Assets.assetsImageMore,
                width: 20,
                height: 20,
              ),
              onPressed: () {},
            ),
            bottom: TabBarApp(),
          ),
          body: Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 32, start: 20, end: 20),
            child: TabBarView(
              children: [
                ProcessingOrdersView(
                  textState: 'PENDING',
                  colorState: AppColors.pendingColor,
                  orderNum: 100,
                ),
                ProcessingOrdersView(
                  textState: 'DELIVERED',
                  colorState: AppColors.deliveredColor,
                  orderNum: 100,
                ),
                ProcessingOrdersView(
                  textState: 'CANCELED',
                  colorState: AppColors.cancelledColor,
                  orderNum: 100,
                ),
              ],
            ),
          ),
        ));
  }
}


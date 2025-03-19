import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_list_model.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_status.dart';

import '../../../core/language/app_translation_key.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OrderStatus.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${context.tr(AppTranslationKeys.myOrders)}",
          style: TextStyles.appBarText,
        ).tr(), // Localization support
        elevation: 0,
        leading: Icon(Icons.menu, color: AppColors.black),
        bottom: TabBar(
          labelStyle: TextStyles.fontSize15,
          dividerColor: Colors.transparent,
          controller: _tabController,
          labelColor: AppColors.white,
          indicatorPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          unselectedLabelColor: AppColors.black,
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: AppColors.black, // Selected tab background color
            borderRadius: BorderRadius.circular(20), // Rounded container
          ),
          tabs: OrderStatus.values
              .map((status) =>
                  Tab(text: status.localizedKey.tr())) // Localization applied
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: OrderStatus.values.map((status) {
          // Filter orders by status
          List<OrderModel> filteredOrders = orderList
              .where((order) =>
                  order.status.toLowerCase() == status.name.toLowerCase())
              .toList();

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: OrdersList(orders: filteredOrders), // Pass filtered list
          );
        }).toList(),
      ),
    );
  }
}

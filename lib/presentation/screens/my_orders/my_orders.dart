import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_list.dart';
import 'package:monitor_ship_project/presentation/screens/my_orders/widget/order_screen.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Orders",
          style: TextStyle(fontSize: 24.sp),
        ),

        elevation: 0,
        leading: Icon(Icons.menu, color: AppColors.black),
        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 15.sp),
          dividerColor: Colors.transparent,
          controller: _tabController,
          labelColor: AppColors.white,
          indicatorPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
          unselectedLabelColor: AppColors.black,
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Colors.black, // Selected tab background color
            borderRadius: BorderRadius.circular(20), // Rounded container
          ),
          tabs: [
            Tab(text: "Pending",),
            Tab(text: "Delivered"),
            Tab(text: "Cancelled"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrdersList(status: "PENDING", color:AppColors.orange),
          OrdersList(status: "DELIVERED", color: AppColors.green),
          OrdersList(status: "CANCELLED", color: AppColors.red),
        ],
      ),
    );
  }
}





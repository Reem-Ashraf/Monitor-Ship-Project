import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class TabBarApp extends StatelessWidget implements PreferredSizeWidget {
  const TabBarApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(86),
      child: TabBar(
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Delivered'),
            Tab(text: 'Cancelled'),
          ],
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          indicatorColor: AppColors.darkBrown,
          dividerColor: AppColors.white,
          overlayColor: WidgetStateProperty.all(AppColors.white),
          indicator: BoxDecoration(
            color: AppColors.tabBarColor,
            borderRadius: BorderRadius.circular(30),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: AppColors.white,
          unselectedLabelColor: AppColors.black,
          labelStyle: TextStyles.inputStyle,
          unselectedLabelStyle: TextStyles.inputStyle),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(86);
}

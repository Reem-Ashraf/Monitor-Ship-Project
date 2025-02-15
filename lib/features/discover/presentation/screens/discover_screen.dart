import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/custom_search_bar.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/discover_product_item.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/custom_app_bar.dart';

class FoundResultScreen extends StatelessWidget {
  const FoundResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(
              text: 'Discover',
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomSearchBar(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Found',
               textScaler: TextScaler.noScaling,
              style: TextStyles.textw700,
            ),
            Text(
              '152 Results',
               textScaler: TextScaler.noScaling,
              style: TextStyles.textw700,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 5.5, crossAxisCount: 2),
                  itemBuilder: (context, indx) {
                    return const DiscoverProductItem();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

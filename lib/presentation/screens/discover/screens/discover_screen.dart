import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/text_style.dart';

import '../../home/widgets/custom_app_bar.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/list_view_Discover_product_item.dart';

class FoundResultScreen extends StatelessWidget {
  const FoundResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ListViewDiscoverProductItem()
          ],
        ),
      ),
    );
  }
}

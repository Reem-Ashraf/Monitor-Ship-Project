import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/sidebar_widget.dart';

import '../../../../../core/utils/constants/text_style.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/list_view_search_result_product_item.dart';

class FoundResultScreen extends StatelessWidget {
  const FoundResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterSidBar(),
      appBar: AppBar(
        leading: Transform.scale(
          scale: .35,
          child: SvgPicture.asset(
            AppAssets.menu,
            height: 18.h,
            width: 17.w,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text(context.tr('Discover')),
        actions: [Container()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchBar(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Found\n152 Results',
              textScaler: TextScaler.noScaling,
              style: TextStyles.textw700,
            ),
            SizedBox(
              height: 20.h,
            ),
            ListViewSearchResultProductItem()
          ],
        ),
      ),
    );
  }
}

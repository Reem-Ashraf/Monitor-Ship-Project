import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/discover_category_widgets/list_view_discover_category.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/sidebar_filter_widgets/sidebar_widget.dart';

class DiscoverFullScreen extends StatelessWidget {
  const DiscoverFullScreen({super.key});

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
        padding: EdgeInsets.all(25.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(),
            ListViewDiscoverCategory(),
          ],
        ),
      ),
    );
  }
}

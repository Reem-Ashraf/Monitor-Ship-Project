import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/list_view_num_of_item.dart';
import '../widgets/search_category_item.dart';
import '../widgets/sidebar_widget.dart';

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
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //i shoud use appBar to use drawer so dont need it
              // CustomAppBar(
              //   text: 'Discover',
              //   appBarIcon: Icons.notifications_outlined,
              // ),
              CustomSearchBar(),
              SearchCategoryItem(
                text1: 'CLOTHING',
                image: AppAssets.thirdHomeImage,
                backgroundColor: Color(0xFF999E87),
                smallCircleColor: Color(0xFF8A8F7A),
                bigCircleColor: Color(0xFFA4AC8A),
              ),
              ListViewNumberOfItem(),
              SearchCategoryItem(
                text1: 'COLLECTION',
                image: AppAssets.thirdHomeImage,
                backgroundColor: Color(0xFF999E87),
                smallCircleColor: Color(0xFF8A8F7A),
                bigCircleColor: Color(0xFFA4AC8A),
              ),
              SearchCategoryItem(
                text1: 'ACCESSORIE',
                image: AppAssets.thirdHomeImage,
                backgroundColor: Color(0xFFA79F9D),
                smallCircleColor: Color(0xFF8D8785),
                bigCircleColor: Color(0xFFA79F9D),
              ),
              SearchCategoryItem(
                text1: 'SHOES',
                image: AppAssets.thirdHomeImage,
                backgroundColor: Color(0xFFA79F9D),
                smallCircleColor: Color(0xFF8D8785),
                bigCircleColor: Color(0xFFA79F9D),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

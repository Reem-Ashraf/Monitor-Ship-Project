import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/custom_search_bar.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/list_view_num_of_item.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/search_category_item.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/sidebar_widget.dart';

class DiscoverFullScreen extends StatelessWidget {
  const DiscoverFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      endDrawer: FilterSidBar(),
      appBar: AppBar(
        leading: Transform.scale(
          scale: .35,
          child: SvgPicture.asset(
            AppAssets.icon,
            height: 18,
            width: 17,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text('Discover'),
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
                image: 'assets/images/image 48.png',
                backgroundColor: Color(0xFF999E87),
                smallCircleColor: Color(0xFF8A8F7A),
                bigCircleColor: Color(0xFFA4AC8A),
              ),
              ListViewNumberOfItem(),
              SearchCategoryItem(
                text1: 'CLOTHING',
                image: 'assets/images/image 54.png',
                backgroundColor: Color(0xFF999E87),
                smallCircleColor: Color(0xFF8A8F7A),
                bigCircleColor: Color(0xFFA4AC8A),
              ),
              SearchCategoryItem(
                text1: 'ACCESSORIES',
                image: 'assets/images/image 54.png',
                backgroundColor: Color(0xFFA79F9D),
                smallCircleColor: Color(0xFF8D8785),
                bigCircleColor: Color(0xFFA79F9D),
              ),
              SearchCategoryItem(
                text1: 'ACCESSORIES',
                image: 'assets/images/image 54.png',
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

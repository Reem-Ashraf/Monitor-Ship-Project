import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/recent_widget.dart';
import '../widgets/sidebar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      endDrawer: FilterSidBar(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Padding(
          padding: const EdgeInsets.all(25.0),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        actions: [Container()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchBar(),
            Row(
              children: [
                Text(
                  'Recent Searches',
                  textScaler: TextScaler.noScaling,
                  style: TextStyles.textw700Gray,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outline,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: [
                RecentSearchWidget(),
                RecentSearchWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

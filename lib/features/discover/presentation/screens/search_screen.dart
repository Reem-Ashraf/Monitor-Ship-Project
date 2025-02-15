import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/custom_search_bar.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/recent_widget.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/sidebar_widget.dart';

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
          child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
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
                  style: TextStyles.textw700Gray,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outline,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 15,
              children: [
                RecentSearchWidget(),
                RecentSearchWidget(),
              ],
            ),
            RecentSearchWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/data/models/discover_category_model.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/discover_category_widgets/discover_category_item.dart';

class ListViewDiscoverCategory extends StatelessWidget {
  const ListViewDiscoverCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: DiscoverCategoryModel.discoverCategoryModellist.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: EdgeInsets.all(10.0.w),
              child: GestureDetector(
                onTap: () {},
                child: DiscoverCategoryItem(
                  discoverCategoryModel:
                      DiscoverCategoryModel.discoverCategoryModellist[indx],
                ),
              ),
            );
          }),
    );
  }
}

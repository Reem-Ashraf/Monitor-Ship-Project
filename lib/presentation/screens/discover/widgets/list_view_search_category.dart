import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/data/models/search_category_model.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/search_category_item.dart';

class ListViewSearchCategory extends StatelessWidget {
  const ListViewSearchCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: SearchCategoryModel.searchCategoryModellist.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: EdgeInsets.all(10.0.w),
              child: GestureDetector(
                onTap: () {},
                child: SearchCategoryItem(
                  searchCategoryModel:
                      SearchCategoryModel.searchCategoryModellist[indx],
                ),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/presentation/screens/discover/data/models/search_category_model.dart';

import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../core/utils/constants/text_style.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({
    super.key,
    required this.searchCategoryModel,
  });
  final SearchCategoryModel searchCategoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutesName.searchScreen);
      },
      child: Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: searchCategoryModel.backgroundColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      searchCategoryModel.text1,
                      textScaler: TextScaler.noScaling,
                      style: TextStyles.text22,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 65.r,
                    backgroundColor: searchCategoryModel.smallCircleColor,
                  ),
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: searchCategoryModel.bigCircleColor,
                  ),
                  Image.asset(
                    searchCategoryModel.image,
                    width: 90.w,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

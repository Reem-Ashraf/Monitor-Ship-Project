import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../core/language/app_translation_key.dart';
import 'category_item.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: In line with Clean Code guidelines (preferably <2 function arguments), create a model to streamline argument handling.

    List<Map<String, dynamic>> categoryList = [
      {
        'categoryname': context.tr(AppTranslationKeys.woman),
        'image': AppAssets.femaleIcon,
      },
      {
        'categoryname': context.tr(AppTranslationKeys.man),
        'image': AppAssets.maleIcon,
      },
      {
        'categoryname': context.tr(AppTranslationKeys.accesory),
        'image': AppAssets.acessoryIcon,
      },
      {
        'categoryname': context.tr(AppTranslationKeys.beauty),
        'image': AppAssets.beautyIcon,
      },
    ];
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categoryList.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: EdgeInsets.only(right: 15.0.w),
              child: CategoryItem(
                categoryname: categoryList[indx]['categoryname'],
                image: categoryList[indx]['image'],
                isActive: indx == 0 ? true : false,
              ),
            );
          }),
    );
  }
}

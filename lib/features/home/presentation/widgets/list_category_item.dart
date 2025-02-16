import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/app_assets.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/category_item.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryList = [
      {
        'categoryname': context.tr('woman'),
        'image': AppAssets.femaleIcon,
        
      },
      {
        'categoryname': context.tr('man'),
        'image': AppAssets.maleIcon,
      },
       {
        'categoryname': context.tr('Accesory'),
        'image': AppAssets.acessoryIcon,
      },
      {
        'categoryname': context.tr('beauty'),
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
              padding:  EdgeInsets.only(right: 8.0.w),
              child: CategoryItem(
                  categoryname: categoryList[indx]['categoryname'],
                  image: categoryList[indx]['image'],
                  isActive: indx==0?true:false,
                  ),
            );
          }),
    );
  }
}

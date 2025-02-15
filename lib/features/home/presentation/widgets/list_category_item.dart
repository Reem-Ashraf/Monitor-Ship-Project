import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/category_item.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryList = [
      {
        'categoryname': 'woman',
        'image': 'assets/images/femalicon.svg',
        
      },
      {
        'categoryname': 'man',
        'image': 'assets/images/maleicon.svg',
      },
       {
        'categoryname': 'Accesory',
        'image': 'assets/images/Vector (2).svg',
      },
      {
        'categoryname': 'beauty',
        'image': 'assets/images/Frame 33153.svg',
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

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/home/data/models/category_model.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import 'category_item.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({super.key});

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  int selectedCategory = 0;
  List<CategoryModel> categoryList = [
    CategoryModel(categoryname: 'woman', image: AppAssets.femaleIcon),
    CategoryModel(categoryname: 'man', image: AppAssets.maleIcon),
    CategoryModel(categoryname: 'Accesory', image: AppAssets.acessoryIcon),
    CategoryModel(categoryname: 'beauty', image: AppAssets.beautyIcon),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categoryList.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: EdgeInsets.only(right: 15.0.w),
              child: GestureDetector(
                onTap: () {
                  selectedCategory = indx;
                  setState(() {});
                },
                child: CategoryItem(
                  categoryModel: categoryList[indx],
                  isActive: selectedCategory == indx,
                ),
              ),
            );
          }),
    );
  }
}

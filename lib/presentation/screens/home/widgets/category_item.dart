import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/presentation/screens/home/data/models/category_model.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
    required this.isActive,
  });
  final CategoryModel categoryModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 1.w,
                    color: isActive == true ? AppColors.brown : Colors.white),
              ),
              child: Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isActive == true ? AppColors.brown : AppColors.lightgray,
                  border: Border.all(width: 2.w, color: Colors.white),
                ),
                child: Transform.scale(
                  scale: .6.r,
                  child: SvgPicture.asset(
                    categoryModel.image,
                    colorFilter: ColorFilter.mode(
                        isActive != true ? AppColors.gray : AppColors.white,
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          context.tr(categoryModel.categoryname),
          textScaler: TextScaler.noScaling,
          style: TextStyles.categoryTextStyle,
        )
      ],
    );
  }
}

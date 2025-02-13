import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class CategoryItem extends StatelessWidget {
 const CategoryItem({
    super.key,
    required this.categoryname,
    required this.image,
    this.isActive = false,
  });
  final String categoryname;
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color:isActive == true ?  AppColors.brown:Colors.white),
                 
              ),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive == true ? AppColors.brown : AppColors.lightgray,
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Transform.scale(
                  scale: .6,
                  child: SvgPicture.asset(
                    image,
                  colorFilter:ColorFilter.mode(isActive!=true? AppColors.gray:AppColors.white, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          categoryname,
          style: TextStyles.categoryTextStyle,
        )
      ],
    );
  }
}

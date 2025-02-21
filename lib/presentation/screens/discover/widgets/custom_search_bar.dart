import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  // TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.

  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.offwhite,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100, offset: const Offset(0, 4)),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              decoration: InputDecoration(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: AppColors.gray),
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .04,
                ), // Prevents scaling),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          decoration: BoxDecoration(
            color: AppColors.offwhite,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade100, offset: const Offset(0, 4)),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            icon: SizedBox(
              width: 25.w,
              height: 25.h,
              child: SvgPicture.asset(
                AppAssets.filterIcon,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ),
      ],
    );
  }
}

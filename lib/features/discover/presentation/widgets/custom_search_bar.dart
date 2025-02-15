import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/features/discover/presentation/screens/search_screen.dart';

class CustomSearchBar extends StatelessWidget {
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchScreen();
                    }));
                  },
                  icon: Icon(Icons.search, color: AppColors.gray),
                ),
                hintText: "Search",
                hintStyle: TextStyle(fontSize:  MediaQuery.of(context).size.width*.02,), // Prevents scaling),
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
                'assets/images/page_info.svg',
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

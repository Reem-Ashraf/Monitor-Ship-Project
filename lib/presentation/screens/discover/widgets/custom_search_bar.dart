import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/search_textfield.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchTextField(),
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

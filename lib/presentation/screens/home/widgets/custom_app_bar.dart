import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, this.appBarIcon});
  final String text;
  final IconData? appBarIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Row(
        children: [
          SvgPicture.asset(
            AppAssets.menu,
            height: 18.h,
            width: 17.w,
          ),
          SizedBox(
            width: 90.w,
          ),
          Text(
            text,
            style: TextStyles.appBarText,
          ),
          SizedBox(
            width: 55.w,
          ),
          Icon(appBarIcon)
        ],
      ),
    );
  }
}

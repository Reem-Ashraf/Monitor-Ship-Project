import 'package:easy_localization/easy_localization.dart' as contxt;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:monitor_ship_project/core/utils/app_routes/routes_name.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.offwhite,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: AppColors.greyShade2, offset: const Offset(0, 4)),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          decoration: InputDecoration(
            icon: IconButton(
              onPressed: () {
                context.push(RoutesName.foundResultScreen);
              },
              icon: Icon(Icons.search, color: AppColors.gray),
            ),
            hintText: contxt.tr("Search"),
            hintStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.width * .04,
            ), 
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/text_style.dart';

class OrderStatusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrderStatusAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      title: Text(
        title,
        style: TextStyles.appBarText,
      ),
      centerTitle: true,
      leadingWidth: 65.w,
      leading: AppBarBackButton(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 20.w),
      child: SizedBox(
        width: 36.w,
        height: 36.h,
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: () {
            context.pop();
          },
          child: Card(
            elevation: 1,
            color: AppColors.white,
            shape: CircleBorder(),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 18.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

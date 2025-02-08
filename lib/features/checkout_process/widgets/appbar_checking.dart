import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class AppBarChecking extends StatelessWidget implements PreferredSizeWidget {
  const AppBarChecking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.white,
      title: Text(
        'Check out',
        style: TextStyles.appbarStyle,
      ),
      centerTitle: true,
      leadingWidth: 65,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: SizedBox(
          width: 36,
          height: 36,
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              Navigator.pop(context);
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
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';

import 'num_of_item_wiget.dart';

class ListViewNumberOfItem extends StatelessWidget {
  const ListViewNumberOfItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, indx) {
            return NumberOfItemWidget();
          },
          separatorBuilder: (context, indx) => Divider(
                thickness: 1,
                color: AppColors.lightgray,
              ),
          itemCount: 7),
    );
  }
}

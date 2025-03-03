import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

import 'DeliveryOptionModel.dart';

class DeliveryOptionTile extends StatelessWidget {
  final DeliveryOptionModel option;
  final VoidCallback onTap;

  const DeliveryOptionTile({
    super.key,
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Divider(height: 2, color: AppColors.greyShade2),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteShade2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom Radio Button
                Container(
                  width: 18.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: option.isSelected ? AppColors.green : AppColors.greyShade2,
                      width: 6.w,
                    ),
                  ),
                  child: option.isSelected
                      ? Center(
                    child: Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  )
                      : SizedBox(),
                ),
                SizedBox(width: 12),

                // Texts with Expanded to prevent overflow
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        option.title,
                        style: TextStyles.blackFont14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        option.subtitle,
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.greyShade3,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 2, color: AppColors.greyShade2),
        ],
      ),
    );
  }
}

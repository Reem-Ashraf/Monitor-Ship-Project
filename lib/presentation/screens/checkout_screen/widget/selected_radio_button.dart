import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';

class DeliveryOptionTile extends StatelessWidget {
  // TODO: In line with Clean Code guidelines (preferably <2 function arguments), create a model with onTap, rate, and index to streamline argument handling.
// TODO: Refactor this code, Note: Keep file, class, or function under 50 lines.
  final bool isSelected;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const DeliveryOptionTile({
    super.key,
    required this.isSelected,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Divider(
            height: 2,
            color: AppColors.greyShade2,
          ),
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: AppColors.whiteShade2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom Radio Button
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      // TODO: Use Colors class
                      color: Colors.green,
                      width: 6.w,
                    ),
                  ),
                  child: isSelected
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
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                              overflow:
                                  TextOverflow.ellipsis, // Prevent overflow
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Expanded(
                            child: Text(
                              "Delivery to home",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                              overflow:
                                  TextOverflow.ellipsis, // Prevent overflow
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.greyShade3,
                        ),
                        overflow: TextOverflow.ellipsis, // Prevent overflow
                        maxLines: 2, // Limit number of lines
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2,
            color: AppColors.greyShade2,
          ),
        ],
      ),
    );
  }
}

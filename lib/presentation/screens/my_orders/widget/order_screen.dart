import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/language/app_translation_key.dart';
import '../../../../core/utils/constants/colors.dart';
import 'order_list_model.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyShade2, width: .5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${context.tr(AppTranslationKeys.order)} ${order.orderId}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp)),
                Text(order.date,
                    style: TextStyle(
                        color: AppColors.greyShade3, fontSize: 16.sp)),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(context.tr(AppTranslationKeys.trackingNumber),
                    style: TextStyle(
                        color: AppColors.greyShade3, fontSize: 14.sp)),
                Text(order.trackingNumber,
                    style: TextStyle(color: AppColors.black, fontSize: 14.sp)),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(context.tr(AppTranslationKeys.quantity),
                        style: TextStyle(
                            color: AppColors.greyShade3, fontSize: 16.sp)),
                    Text("$order.quantity",
                        style:
                            TextStyle(color: AppColors.black, fontSize: 16.sp)),
                  ],
                ),
                Row(
                  children: [
                    Text(context.tr(AppTranslationKeys.subtotal),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.greyShade3)),
                    Text("\$$order.subtotal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(order.status,
                    style:
                        TextStyle(color: order.statusColor, fontSize: 16.sp)),
                SizedBox(
                  height: 30.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: AppColors.white,
                      side: BorderSide(color: Colors.grey.shade400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33)),
                    ),
                    child: Text(context.tr(AppTranslationKeys.details),
                        style: TextStyle(fontSize: 16.sp)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

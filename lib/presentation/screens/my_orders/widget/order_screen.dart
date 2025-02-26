import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';

class OrderCard extends StatelessWidget {
  // TODO: In line with Clean Code guidelines (preferably <2 function arguments), create a model to streamline argument handling.
  final String orderId;
  final String trackingNumber;
  final int quantity;
  final int subtotal;
  final String date;
  final String status;
  final Color statusColor;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.date,
    required this.status,
    required this.statusColor,
  });

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
                Text("Order $orderId",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp)),
                Text(date,
                    style: TextStyle(
                        color: AppColors.greyShade3, fontSize: 16.sp)),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text("Tracking number: ",
                    style: TextStyle(
                        color: AppColors.greyShade3, fontSize: 14.sp)),
                Text(trackingNumber,
                    style: TextStyle(color: AppColors.black, fontSize: 14.sp)),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Quantity: ",
                        style: TextStyle(
                            color: AppColors.greyShade3, fontSize: 16.sp)),
                    Text("$quantity",
                        style:
                            TextStyle(color: AppColors.black, fontSize: 16.sp)),
                  ],
                ),
                Row(
                  children: [
                    Text("Subtotal: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.greyShade3)),
                    Text("\$$subtotal",
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
                Text(status,
                    style: TextStyle(color: statusColor, fontSize: 16.sp)),
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
                    child: Text("Details", style: TextStyle(fontSize: 16.sp)),
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

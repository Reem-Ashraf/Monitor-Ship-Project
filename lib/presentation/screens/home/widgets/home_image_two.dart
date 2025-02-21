import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class HomeImage2 extends StatelessWidget {
  const HomeImage2({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
    required this.text3,
  });
  final String text1;
  final String text2;
  final String text3;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170.h,
        width: double.infinity,
        color: AppColors.offwhite,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  // TODO: Try to reduce repetition (Search about DRY principle) and how to handle repetitive code/widgets.
                  Text(
                    text1,
                    textScaler: TextScaler.noScaling,
                    style: TextStyles.text13,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    text2,
                    textScaler: TextScaler.noScaling,
                    style: TextStyles.text20,
                  ),
                  Text(
                    text3,
                    textScaler: TextScaler.noScaling,
                    style: TextStyles.text20,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: AppColors.lightgray,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.offwhite,
                ),
                Image.asset(image),
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

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
        height: 170,
        width: double.infinity,
        color: AppColors.offwhite,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    text1,
                    style: TextStyles.text13,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    text2,
                    style: TextStyles.text20,
                  ),
                  Text(
                    text3,
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
                  radius: 70,
                  backgroundColor: AppColors.lightgray,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.offwhite,
                ),
                Image.asset(image),
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/text_style.dart';

class HomeImage2 extends StatelessWidget {
  const HomeImage2({
    super.key,
    required this.image,
    required this.textList,
  });

  final List<String> textList;
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
                  for (int i = 0; i < textList.length; i++) ...[
                    Text(
                      textList[i],
                      textScaler: TextScaler.noScaling,
                      style: i == 0 ? TextStyles.text13 : TextStyles.text20,
                    ),
                    if (i == 0)
                      SizedBox(
                        height: 20.h,
                      ),
                  ]
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

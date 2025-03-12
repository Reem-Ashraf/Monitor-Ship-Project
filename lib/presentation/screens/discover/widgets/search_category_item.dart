import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routes/routes_name.dart';
import '../../../../../core/utils/constants/text_style.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({
    // TODO: In line with Clean Code guidelines (preferably <2 function arguments), create a model with onTap, rate, and index to streamline argument handling.

    super.key,
    required this.text1,
    required this.image,
    required this.backgroundColor,
    required this.smallCircleColor,
    required this.bigCircleColor,
  });
  final String text1;
  final String image;
  final Color backgroundColor;
  final Color smallCircleColor;
  final Color bigCircleColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RoutesName.searchScreen);
      },
      child: Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: backgroundColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      textScaler: TextScaler.noScaling,
                      style: TextStyles.text22,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 65.r,
                    backgroundColor: smallCircleColor,
                  ),
                  CircleAvatar(
                    radius: 45.r,
                    backgroundColor: bigCircleColor,
                  ),
                  Image.asset(
                    image,
                    width: 90.w,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

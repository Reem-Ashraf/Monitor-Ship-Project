import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({
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
      onTap: (){},
      child: Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: backgroundColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyles.text22,
                    ),
                    const SizedBox(
                      height: 20,
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
                    radius: 65,
                    backgroundColor: smallCircleColor,
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: bigCircleColor,
                  ),
                  Positioned(right: -3, child: Image.asset(image)),
                ],
              ),
            ],
          )),
    );
  }
}

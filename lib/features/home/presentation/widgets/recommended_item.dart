import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/image 55.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(
                'Turtleneck Sweater ',
                style: TextStyles.textw500,
              ),
              Text(
                r'$ 39.99 ',
                style: TextStyles.textw700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

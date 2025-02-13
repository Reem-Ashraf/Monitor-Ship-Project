import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/Mask Group@2x.png'),
        Positioned(
          right: 5,
          top: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Autumn',
                style: TextStyles.text22,
              ),
              Text(
                'Collection',
                style: TextStyles.text22,
              ),
              Text(
                '2022',
                style: TextStyles.text22,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

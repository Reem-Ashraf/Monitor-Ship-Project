import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/text_style.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> textList = [
      'Autum',
      'Collection',
      '2025',
    ];
    return Stack(
      children: [
        Image.asset(AppAssets.firstHomeImage),
        Positioned(
          right: 5,
          top: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < textList.length; i++)
                Text(
                  textList[i],
                  textScaler: TextScaler.noScaling,
                  style: TextStyles.text22,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

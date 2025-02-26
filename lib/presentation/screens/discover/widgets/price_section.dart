import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/range_price.dart';

class Pricesection extends StatelessWidget {
  const Pricesection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price',
          textScaler: TextScaler.noScaling,
          style: TextStyles.text20,
        ),
        RangeWidget(),
      ],
    );
  }
}


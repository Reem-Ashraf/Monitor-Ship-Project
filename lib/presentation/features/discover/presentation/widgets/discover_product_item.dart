import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/price_widget.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/product_image.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/star_widget.dart';
import 'package:monitor_ship_project/presentation/features/discover/presentation/widgets/price_widget.dart';
import 'package:monitor_ship_project/presentation/features/discover/presentation/widgets/product_image.dart';
import 'package:monitor_ship_project/presentation/features/discover/presentation/widgets/star_widget.dart';

class DiscoverProductItem extends StatelessWidget {
  const DiscoverProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductImage(),
         SizedBox(
          height: 16.h,
        ),
        Text(
          'Turtleneck Sweater ',
           textScaler: TextScaler.noScaling,
          style: TextStyles.textw500,
        ),
        const PriceWidget(),
        const StarWidget()
      ],
    );
  }
}

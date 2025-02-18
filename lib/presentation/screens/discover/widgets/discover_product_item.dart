

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/price_widget.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/product_image.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/star_widget.dart';

import '../../../../../core/utils/constants/text_style.dart';

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

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'sidebar_filter_widgets/price_rang_widgets/price_widget.dart';
import 'product_image.dart';
import 'sidebar_filter_widgets/star_rating_widgets/star_widget.dart';

import '../../../../../core/utils/constants/text_style.dart';

class SearchResultProductItem extends StatelessWidget {
  const SearchResultProductItem({
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

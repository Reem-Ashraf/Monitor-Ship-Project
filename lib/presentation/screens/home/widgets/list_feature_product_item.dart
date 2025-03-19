import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'feature_product_item.dart';

class FeatureProductItemListView extends StatelessWidget {
  const FeatureProductItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: FeatureProductItem(),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/product_item.dart';
import 'package:monitor_ship_project/presentation/features/home/presentation/widgets/product_item.dart';

class ProductItemListView extends StatelessWidget {
  const ProductItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: ProductItem(),
            );
          }),
    );
  }
}

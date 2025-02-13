import 'package:flutter/material.dart';
import 'package:monitor_ship_project/features/home/presentation/widgets/product_item.dart';

class ProductItemListView extends StatelessWidget {
  const ProductItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, indx) {
            return const Padding(
              padding: EdgeInsets.only(right: 50.0),
              child: ProductItem(),
            );
          }),
    );
  }
}

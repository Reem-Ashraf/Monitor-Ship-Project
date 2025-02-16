import 'package:flutter/material.dart';
import 'package:monitor_ship_project/features/discover/presentation/widgets/discover_product_item.dart';

import 'discover_product_item.dart';

class ListViewDiscoverProductItem extends StatelessWidget {
  const ListViewDiscoverProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 5.5, crossAxisCount: 2),
          itemBuilder: (context, indx) {
            return const DiscoverProductItem();
          }),
    );
  }
}

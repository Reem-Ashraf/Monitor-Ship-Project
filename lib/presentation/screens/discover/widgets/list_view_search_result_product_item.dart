import 'package:flutter/cupertino.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/search_result_product_item.dart';


class ListViewSearchResultProductItem extends StatelessWidget {
  const ListViewSearchResultProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 5.5, crossAxisCount: 2),
          itemBuilder: (context, indx) {
            return const SearchResultProductItem();
          }),
    );
  }
}

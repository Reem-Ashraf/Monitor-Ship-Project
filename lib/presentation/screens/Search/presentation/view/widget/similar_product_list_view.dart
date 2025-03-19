import 'package:flutter/material.dart';
import 'package:monitor_ship_project/presentation/screens/Search/presentation/view/widget/similar_product_item.dart';
class SimilarProductListView extends StatelessWidget {
  const SimilarProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.33,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index){
            return const Padding(
              padding: EdgeInsets.all(6.0),
              child: SimilarProductItem(),
            );
          }
      ),
    );
  }
}

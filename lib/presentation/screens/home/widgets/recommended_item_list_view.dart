import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'recommended_item.dart';

class RecommendedItemListView extends StatelessWidget {
  const RecommendedItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: RecommendedItem(),
            );
          }),
    );
  }
}

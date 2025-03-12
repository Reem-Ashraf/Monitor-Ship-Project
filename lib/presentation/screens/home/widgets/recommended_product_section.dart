import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/recommended_item_list_view.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/show_all_row.dart';

class RecommendedProductSection extends StatelessWidget {
  const RecommendedProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
        const ShowAllRow(text: 'Recommended'),
        const RecommendedItemListView(),
      ],
    );
  }
}

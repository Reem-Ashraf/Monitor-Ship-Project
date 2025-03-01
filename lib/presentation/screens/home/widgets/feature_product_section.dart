import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/list_feature_product_item.dart';
import 'package:monitor_ship_project/presentation/screens/home/widgets/show_all_row.dart';

class FeatureProductSection extends StatelessWidget {
  const FeatureProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
        ShowAllRow(text: context.tr('Feature Products')),
        const FeatureProductItemListView(),
      ],
    );
  }
}

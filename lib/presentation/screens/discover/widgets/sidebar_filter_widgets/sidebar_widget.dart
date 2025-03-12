import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/category_selection_widgets/category_section.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/color_selection_widgets/color_selection_section.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/discount_widgets/discount_section.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/price_rang_widgets/price_section.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/star_rating_widgets/star_rating_section.dart';
import 'rest_or_apply_btn.dart';
import 'side_bar_header.dart';
import '../../../../../../core/utils/constants/colors.dart';
class FilterSidBar extends StatelessWidget {
  const FilterSidBar({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 15.h,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                SidBarHeader(),
                SizedBox(
                  height: 20.h,
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.lightgray,
                ),
                Pricesection(),
                ColorSelectionSection(),
                StarRatingSection(),
                CategorySection(),
                DiscountSection(),
                RestOrApply()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/sidebar_filter_widgets/star_rating_widgets/star_rating.dart';

class StarRatingSection extends StatelessWidget {
  const StarRatingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.h,
      children: [
        Text(
          'Star Rating',
          textScaler: TextScaler.noScaling,
          style: TextStyles.textw500,
        ),
        StarRating(selectedRating: 3),
      ],
    );
  }
}

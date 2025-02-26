import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';
import 'package:monitor_ship_project/presentation/screens/discover/widgets/star_rating.dart';

class StarRatingSection extends StatelessWidget {
  const StarRatingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Star Rating',
          textScaler: TextScaler.noScaling,
          style: TextStyles.text20,
        ),
        StarRating(selectedRating: 3),
      ],
    );
  }
}

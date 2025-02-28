import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';
import 'rating_star_model.dart';

class RatingStar extends StatelessWidget {
  final RatingStarModel model;

  const RatingStar({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (model.index < model.rate) {
      child = Icon(
        Icons.star_rounded,
        color: AppColors.mintGreen,
        size: 40.r,
      );
    } else {
      child = Icon(
        Icons.star_rounded,
        color: AppColors.neutralGray,
        size: 40.r,
      );
    }

    return GestureDetector(onTap: model.onTap, child: child);
  }
}

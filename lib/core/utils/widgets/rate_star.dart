import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class StarScore extends StatefulWidget {
  const StarScore({
    super.key,
  });

  @override
  State<StarScore> createState() => _StarScoreState();
}

int indexRate = 4;

class _StarScoreState extends State<StarScore> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return RatingStar(
          index: index,
          rate: indexRate,
          onTap: () {
            setState(() {
              indexRate = index + 1;
            });
          },
        );
      }),
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({
    super.key,
    required this.index,
    required this.rate,
    this.onTap,
  });
  final int index;
  final int rate;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (index < rate) {
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
    return GestureDetector(onTap: onTap, child: child);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
    required this.selectedRating,
  });

  final int selectedRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        int star = index;
        return GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(11),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectedRating == star ? Colors.black : Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              children: [
                Icon(Icons.star,
                    color: selectedRating == star ? Colors.white : Colors.black,
                    size: 18.r),
                Text(
                  (index + 1).toString(),
                  textScaler: TextScaler.noScaling,
                  style: TextStyle(
                    color: selectedRating == star ? Colors.white : Colors.black,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCollectionRow extends StatelessWidget {
  const TopCollectionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12).r,
            ),
            child: Image.asset('assets/images/banner 3.png'),
          ),
        ),
        Expanded(
          child: Container(
            height: 200.h,
            // width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12).r,
            ),
            child: Image.asset('assets/images/banner 4.png'),
          ),
        ),
      ],
    );
  }
}

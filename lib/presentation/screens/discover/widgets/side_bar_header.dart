import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/constants/app_assets.dart';

class SidBarHeader extends StatelessWidget {
  const SidBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Filter",
            textScaler: TextScaler.noScaling,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
        SizedBox(
          width: 25.w,
          height: 25.h,
          child: SvgPicture.asset(
            AppAssets.femaleIcon,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text_rich_track.dart';

class BuildOrderInfo extends StatelessWidget {
  const BuildOrderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextRichTrack(
          text1: 'Delivered on',
          text2: '15.02.25',
        ),
        SizedBox(height: 12.h),
        TextRichTrack(
          text1: 'Tracking Number :',
          text2: 'IK287368838',
        ),
      ],
    );
  }
}

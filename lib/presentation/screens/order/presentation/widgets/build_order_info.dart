import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/language/app_translation_key.dart';
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
          text1: context.tr(AppTranslationKeys.deliveredOn),
          text2: '15.02.25',
        ),
        SizedBox(height: 12.h),
        TextRichTrack(
          text1: context.tr(AppTranslationKeys.trackingNumberColon),
          text2: 'IK287368838',
        ),
      ],
    );
  }
}

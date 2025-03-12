import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/language/app_translation_key.dart';

class OrLoginWithWidget extends StatelessWidget {
  const OrLoginWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Text(
          context.tr(AppTranslationKeys.loginWith),
        style: TextStyle(fontSize: 12.sp),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/language/app_translation_key.dart';

class ForgetPasswordWidget extends StatelessWidget {
  ForgetPasswordWidget({super.key, required this.onTap});
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: onTap,
        child: Text(
          context.tr(AppTranslationKeys.forgotPassword),
          // style: TextStyles.font13BlueRegular,
        ),
      ),
    );
  }
}

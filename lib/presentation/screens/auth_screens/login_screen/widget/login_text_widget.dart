import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/text_style.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(AppTranslationKeys.logIntoAccount),
      style: TextStyles.loginIntoStyle,
      textAlign: TextAlign.start,
    );
  }
}

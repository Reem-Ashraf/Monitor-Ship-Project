import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../../../widget/app_text_field.dart';

class TextFromFieldRate extends StatelessWidget {
  const TextFromFieldRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField.card(
      hintText: context
          .tr(AppTranslationKeys.wouldYouLikeToWriteAnythingAboutThisProduct),
      hintStyle: TextStyles.product12W400,
      maxLines: 6,
      maxLength: 50,
    );
  }
}

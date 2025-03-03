import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/language/app_translation_key.dart';
import '../../../widget/app_text_field.dart';
import 'drop_down_menue.dart';

class CheckOutScreenTextFields extends StatelessWidget {
  const CheckOutScreenTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.firstName)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.lastName)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        DropDownMenu(),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.streetName)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.city)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.stateProvince)}',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.zipCode)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
        AppTextFormField(
          hintText: '${context.tr(AppTranslationKeys.phoneNumber)} *',
          validator: (String) {},
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}

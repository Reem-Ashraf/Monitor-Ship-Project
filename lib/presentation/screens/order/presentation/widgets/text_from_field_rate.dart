

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/text_style.dart';

class TextFromFieldRate extends StatelessWidget {
  const TextFromFieldRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      color: AppColors.white,
      child: TextFormField(
        onTapOutside: (v) {
          FocusScope.of(context).unfocus();
        },
        buildCounter: (BuildContext context,
                {required int currentLength,
                required int? maxLength,
                required bool isFocused}) =>
            Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Text(
            Constants.convertNumToArabic(context.tr('50 characters'), false),
            style: TextStyles.product12W400,
          ),
        ),
        decoration: InputDecoration(
            hintText: context
                .tr('Would you like to write anything about this product?'),
            hintStyle: TextStyles.product12W400,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.white),
            )),
        maxLines: 6,
        maxLength: 50,
      ),
    );
  }
}

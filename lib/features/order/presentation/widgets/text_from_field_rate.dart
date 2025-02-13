import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/constants.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class TextFromFieldRate extends StatelessWidget {
  const TextFromFieldRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: AppColors.white,
      child: TextFormField(
        onTapUpOutside: (v) {
          FocusScope.of(context).unfocus();
        },
        buildCounter: (BuildContext context,
                {required int currentLength,
                required int? maxLength,
                required bool isFocused}) =>
            Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
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
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.white),
            )),
        maxLines: 6,
        maxLength: 50,
      ),
    );
  }
}

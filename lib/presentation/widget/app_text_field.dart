import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/text_style.dart';
import '../../core/language/app_translation_key.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Function(String?)? validator;
  final bool isObscureText;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextStyle? counterStyle;
  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isDense;
  final bool filled;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool showCounter;
  final String? counterText;
  final bool unfocusOnTapOutside;
  final Function()? onTap;
  final Function(String)? onChanged;

  const AppTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.validator,
    this.isObscureText = false,
    this.inputTextStyle,
    this.hintStyle,
    this.counterStyle,
    this.backgroundColor,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.borderRadius = 16.0,
    this.contentPadding,
    this.suffixIcon,
    this.prefixIcon,
    this.isDense = false,
    this.filled = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.showCounter = false,
    this.counterText,
    this.unfocusOnTapOutside = true,
    this.onTap,
    this.onChanged,
  });

  factory AppTextFormField.card({
    Key? key,
    TextEditingController? controller,
    required String hintText,
    Function(String?)? validator,
    TextStyle? hintStyle,
    int maxLines = 6,
    int? maxLength = 50,
    String? counterText,
    TextStyle? counterStyle,
    double borderRadius = 20.0,
    Function(String)? onChanged,
  }) {
    return AppTextFormField(
      key: key,
      controller: controller,
      hintText: hintText,
      validator: validator,
      hintStyle: hintStyle,
      maxLines: maxLines,
      maxLength: maxLength,
      counterText: counterText,
      counterStyle: counterStyle,
      borderRadius: borderRadius,
      onChanged: onChanged,
      filled: true,
      backgroundColor: AppColors.white,
      showCounter: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: AppColors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: AppColors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget textField = TextFormField(
      controller: controller,
      obscureText: isObscureText,
      style: inputTextStyle ?? TextStyle(fontSize: 14),
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      onTap: onTap,
      onChanged: onChanged,
      onTapOutside:
          unfocusOnTapOutside ? (v) => FocusScope.of(context).unfocus() : null,
      buildCounter: (showCounter && (maxLength != null))
          ? (
              BuildContext context, {
              required int currentLength,
              required int? maxLength,
              required bool isFocused,
            }) =>
              Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Text(
                  counterText ??
                      Constants.convertNumToArabic(
                          context.tr(' ${AppTranslationKeys.charactersLimit}'),
                          false),
                  style: counterStyle ?? TextStyles.product12W400,
                ),
              )
          : null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        isDense: isDense,
        filled: filled,
        fillColor: backgroundColor,
        contentPadding: contentPadding,
        enabledBorder: enabledBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greyShade2,
                width: 1.5,
              ),
            ),
        focusedBorder: focusedBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greyShade2,
                width: 2,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
      ),
      validator: validator != null ? (value) => validator!(value) : null,
    );

    if (filled && backgroundColor == AppColors.white) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: AppColors.white,
        child: textField,
      );
    }

    return textField;
  }
}

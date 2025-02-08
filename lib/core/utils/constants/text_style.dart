import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/constants.dart';

class TextStyles {
  static TextStyle appbarStyle = TextStyle(
    color: AppColors.darkGray,
    fontSize: 18,
    fontFamily: Constants.productSansFont,
    fontWeight: FontWeight.w700,
  );
  static TextStyle stepStyle = TextStyle(
    color: AppColors.darkGray,
    fontSize: 11,
    fontFamily: Constants.productSansFont,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.06,
  );
  static TextStyle titleStyle = TextStyle(
    color: AppColors.darkGray,
    fontSize: 25,
    fontFamily: Constants.productSansFont,
    fontWeight: FontWeight.w700,
  );
  static TextStyle inputStyle = TextStyle(
    color: AppColors.lightGray,
    fontSize: 14,
    fontFamily: Constants.productSansFont,
    fontWeight: FontWeight.w500,
  );
  static TextStyle buttonStyle = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontFamily: Constants.productSansFont,
    fontWeight: FontWeight.w700,
  );
}

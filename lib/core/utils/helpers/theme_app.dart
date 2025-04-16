import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';
import 'package:monitor_ship_project/core/utils/constants/text_style.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    // Main colors
    primaryColor: AppColors.mintGreen,
    scaffoldBackgroundColor: AppColors.white,

    // Text themes
    textTheme: TextTheme(
      displayLarge: TextStyles.titleStyle,
      displayMedium: TextStyles.textw700,
      bodyLarge: TextStyles.product16Medium,
      bodyMedium: TextStyles.product14LightW400,
      labelLarge: TextStyles.buttonStyle,
    ),

    // Component themes
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyles.appBarText,
      iconTheme: IconThemeData(color: AppColors.black),
    ),

    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mintGreen,
        foregroundColor: AppColors.white,
        textStyle: TextStyles.buttonStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
    ),

    // Input decoration themes
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteShade2,
      hintStyle: TextStyles.inputStyle,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.lightGray),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.paleGray),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.mintGreen),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red),
      ),
    ),

    // Card theme
    cardTheme: CardTheme(
      color: AppColors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Color scheme
    colorScheme: ColorScheme.light(
      primary: AppColors.mintGreen,
      secondary: AppColors.darkGreen,
      error: AppColors.red,
      surface: AppColors.whiteShade2,
    ),

    // Other customizations
    dividerTheme: DividerThemeData(
      color: AppColors.paleGray,
      thickness: 1,
    ),

    // Bottom navigation bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.mintGreen,
      unselectedItemColor: AppColors.silverGray,
      type: BottomNavigationBarType.fixed,
    ),
  );

  // Dark theme could be added later as needed
  static ThemeData darkTheme = ThemeData(
    // Dark theme implementation would go here
    // For now, using the light theme
    brightness: Brightness.dark,
    primaryColor: AppColors.mintGreen,
  );
}

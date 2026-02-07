import 'package:flutter/material.dart';
import 'package:notes_app/constants/appColors.dart';

class Apptheme{

   static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
      colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: Colors.black),
      checkColor: WidgetStateProperty.all(Colors.white),
      fillColor: WidgetStateProperty.all(AppColors.lightPrimary),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.lightText),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
    ),
    // primaryColor: AppColors.darkPrimary,
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: Colors.white),
      checkColor: WidgetStateProperty.all(Colors.white),
      fillColor: WidgetStateProperty.all(AppColors.darkPrimary),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.darkText),
    ),
  );
}
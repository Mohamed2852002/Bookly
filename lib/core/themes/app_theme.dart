import 'package:bookly_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: AppColors.primaryColor,
    brightness: Brightness.dark,
  );
}

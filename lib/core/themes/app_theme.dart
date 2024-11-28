import 'package:bookly_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: AppColors.primaryColor,
    brightness: Brightness.dark,
  );
}

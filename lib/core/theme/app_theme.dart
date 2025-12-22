import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsManager.white,
    colorScheme: const ColorScheme.light(
      primary: ColorsManager.rubyOrange,
      secondary: ColorsManager.oceanTeal,
      surface: ColorsManager.white,
      onSurface: ColorsManager.black,
      onPrimary: ColorsManager.white,
      
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    colorScheme: const ColorScheme.dark(
      primary: ColorsManager.rubyOrange,
      secondary: ColorsManager.oceanTeal,
      surface: ColorsManager.black,
      onSurface: ColorsManager.white,
      onPrimary: ColorsManager.white,
    ),
  );
}

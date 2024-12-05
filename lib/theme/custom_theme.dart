
import 'package:flutter/material.dart';

class CustomTheme {

  // colors
  static const Color primaryColor = Colors.green;
  static const Color secondaryColor = Colors.white;

  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
      ),
    );
  }
}
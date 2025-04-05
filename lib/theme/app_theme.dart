import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF6E00FF);
  static const Color scaffoldBackgroundColor = Color(0xFF121212);
  static const Color cardColor = Color(0xFF252525);
  static const Color textColorPrimary = Colors.white;
  static const Color textColorSecondary = Colors.white70;

  // Text Styles
  static const TextStyle headingStyle = TextStyle(
    color: textColorPrimary,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subheadingStyle = TextStyle(
    color: textColorPrimary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyStyle = TextStyle(
    color: textColorPrimary,
    fontSize: 16,
  );

  static const TextStyle captionStyle = TextStyle(
    color: textColorSecondary,
    fontSize: 14,
  );

  static const TextStyle smallStyle = TextStyle(
    color: textColorSecondary,
    fontSize: 12,
  );

  // Theme Data
  static ThemeData getTheme() {
    return ThemeData(
      fontFamily: 'Pretendard',
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      cardColor: cardColor,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: textColorPrimary),
        bodyLarge: TextStyle(color: textColorPrimary),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textColorPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: textColorPrimary,
        unselectedItemColor: textColorSecondary,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

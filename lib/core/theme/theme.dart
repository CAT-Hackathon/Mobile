import 'package:flutter/material.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';

class AppTheme {
  static _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      );

  // Dark theme
  static final darkThemeMode = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: AppPalette.darkBackgroundColor,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppPalette.darkBackgroundColor, elevation: 0),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppPalette.gradient1),
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPalette.darkBackgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      border: _border(AppPalette.borderDarkColor),
      enabledBorder: _border(AppPalette.borderDarkColor),
      focusedBorder: _border(AppPalette.gradient2),
      errorBorder: _border(AppPalette.errorColor),
    ),
  );

  //Light theme

  static final lightThemeMode = ThemeData(
    fontFamily: 'Noto',
    scaffoldBackgroundColor: AppPalette.lightBackgroundColor,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppPalette.lightBackgroundColor, elevation: 0),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppPalette.gradient2),
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPalette.lightBackgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: _border(AppPalette.primary),
      enabledBorder: _border(AppPalette.primary),
      focusedBorder: _border(AppPalette.gradient2),
      errorBorder: _border(AppPalette.errorColor),
    ),
  );
}

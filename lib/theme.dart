import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFBB86FC); // Light Purple
  static const Color primaryVariant = Color(0xFF3700B3); // Dark Purple
  static const Color secondary = Color(0xFF03DAC6); // Teal
  static const Color secondaryVariant = Color(0xFF018786); // Dark Teal
  static const Color background = Color(0xFF121212); // Dark Background
  static const Color surface = Color(0xFF1E1E1E); // Darker Surface
  static const Color error = Color(0xFFCF6679); // Error Red
  static const Color onPrimary = Color(0xFFFFFFFF); // White on Primary
  static const Color onSecondary = Color(0xFF000000); // Black on Secondary
  static const Color onBackground =
      Color(0xFFE0E0E0); // Light Grey on Background
  static const Color onSurface = Color(0xFFE0E0E0); // Light Grey on Surface
  static const Color onError = Color(0xFF000000); // Black on Error
  static const Color accent = Color(0xFF03A9F4); // Light Blue Accent
  static const Color highlight = Color(0xFFFBC02D); // Amber Highlight
  static const Color mutedText = Color(0xFFB0BEC5); // Muted Grey Text
}

ThemeData primaryTheme = ThemeData(
  //seed color
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
  //scaffold color
  scaffoldBackgroundColor: AppColors.background,

  // App bar theme
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.surface,
    foregroundColor: AppColors.onSurface,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.onBackground,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.onSurface,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.onSurface,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
  ),

//card theme
  cardTheme: CardTheme(
    color: AppColors.surface.withOpacity(0.8),
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 16),
  ),
);

import 'package:flutter/material.dart';
import 'package:home_haven/core/utils/app_typrography.dart';
import 'app_colors.dart';

class AppTheme {
  // 🌞 Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      surface: AppColors.lightSurface,
      onSurface: AppColors.onLightSurface,
      primaryContainer: AppColors.lightSurface,
      onPrimaryContainer: AppColors.onLightSurface,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.onPrimary,
      ),
    ),

    // Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // Text
    textTheme: TextTheme(
      displayLarge: AppTypography.h1.copyWith(color: AppColors.onLightSurface),
      displayMedium: AppTypography.h2.copyWith(color: AppColors.onLightSurface),
      displaySmall: AppTypography.h3.copyWith(color: AppColors.onLightSurface),
      headlineMedium: AppTypography.h4.copyWith(
        color: AppColors.onLightSurface,
      ),
      headlineSmall: AppTypography.h5.copyWith(color: AppColors.onLightSurface),
      bodyLarge: AppTypography.body.copyWith(color: AppColors.onLightSurface),
      bodyMedium: AppTypography.bodySmall.copyWith(
        color: AppColors.onLightSurface,
      ),
      bodySmall: AppTypography.caption.copyWith(
        color: AppColors.onLightSurface,
      ),
      titleMedium: AppTypography.bodyBold.copyWith(
        color: AppColors.onLightSurface,
      ),
    ),

    // Input Fields
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
    ),

    // SnackBar
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.secondary,
      contentTextStyle: TextStyle(color: AppColors.onSecondary),
      behavior: SnackBarBehavior.floating,
    ),
  );

  // 🌙 Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.onDarkSurface,
      primaryContainer: AppColors.darkSurface,
      onPrimaryContainer: AppColors.onDarkSurface,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.onPrimary,
      ),
    ),

    // Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: AppTypography.h1.copyWith(color: AppColors.onDarkSurface),
      displayMedium: AppTypography.h2.copyWith(color: AppColors.onDarkSurface),
      displaySmall: AppTypography.h3.copyWith(color: AppColors.onDarkSurface),
      headlineMedium: AppTypography.h4.copyWith(color: AppColors.onDarkSurface),
      headlineSmall: AppTypography.h5.copyWith(color: AppColors.onDarkSurface),
      bodyLarge: AppTypography.body.copyWith(color: AppColors.onDarkSurface),
      bodyMedium: AppTypography.bodySmall.copyWith(color: Colors.white70),
      bodySmall: AppTypography.caption.copyWith(color: Colors.white70),
      titleMedium: AppTypography.bodyBold.copyWith(
        color: AppColors.onDarkSurface,
      ),
    ),

    // Input Fields
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E1E1E),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
    ),

    // SnackBar
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.secondary,
      contentTextStyle: TextStyle(color: AppColors.onSecondary),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

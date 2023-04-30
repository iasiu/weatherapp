import 'package:flutter/material.dart';
import 'package:weatherapp/resources/colors.dart';

class AppTheme {
  static ThemeData light(BuildContext context) {
    return _build(
      context: context,
      primary: AppColors.of(context).primary,
      secondary: AppColors.of(context).secondary,
      lighterText: AppColors.of(context).textLight,
      darkerText: AppColors.of(context).text,
      surface: AppColors.of(context).white,
      background: AppColors.of(context).background,
      error: AppColors.of(context).accent,
      onError: AppColors.of(context).error,
      brightness: Brightness.light,
    );
  }

  static ThemeData dark(BuildContext context) {
    return _build(
      context: context,
      primary: AppColors.of(context).primary,
      secondary: AppColors.of(context).secondary,
      lighterText: AppColors.of(context).textLight,
      darkerText: AppColors.of(context).text,
      surface: AppColors.of(context).white,
      background: AppColors.of(context).background,
      error: AppColors.of(context).accent,
      onError: AppColors.of(context).error,
      brightness: Brightness.dark,
    );
  }

  static ThemeData _build({
    required BuildContext context,
    required Brightness brightness,
    required AppColor primary,
    required AppColor secondary,
    required AppColor lighterText,
    required AppColor darkerText,
    required AppColor surface,
    required AppColor background,
    required AppColor error,
    required AppColor onError,
  }) {
    final defaultTextColor = AppColors.of(context).text;

    return ThemeData.from(
      colorScheme: ColorScheme(
        primary: primary,
        secondary: secondary,
        error: error,
        background: background,
        surface: surface,
        onPrimary: lighterText,
        onSecondary: darkerText,
        onSurface: darkerText,
        onBackground: darkerText,
        onError: onError,
        brightness: brightness,
      ),
    ).copyWith(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
        ),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: defaultTextColor,
          fontSize: 57,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: defaultTextColor,
          fontSize: 45,
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: defaultTextColor,
          fontSize: 36,
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: defaultTextColor,
          fontSize: 32,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: defaultTextColor,
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: defaultTextColor,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: defaultTextColor,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: defaultTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: defaultTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: defaultTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: defaultTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: defaultTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

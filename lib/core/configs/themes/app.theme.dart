import 'package:flutter/material.dart';
import 'package:gitali2/core/configs/themes/app.colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    focusColor: Colors.black87,
    scaffoldBackgroundColor: AppColors.lightBackground,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.darkBackground,
      hintStyle:
          TextStyle(color: Color(0xffA7A7A7), fontWeight: FontWeight.w500),
      filled: true,
      contentPadding: const EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.black, width: 0.4),
      ),
    ),
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle:
          TextStyle(color: Color(0xffA7A7A7), fontWeight: FontWeight.w500),
      fillColor: AppColors.darkBackground,
      filled: true,
      contentPadding: const EdgeInsets.all(13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.white, width: 0.4),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.white, width: 0.4),
      ),
    ),
    brightness: Brightness.dark,
    focusColor: Colors.white,
    fontFamily: "Satoshi",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}

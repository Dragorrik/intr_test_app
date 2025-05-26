import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intr_test_app/core/constants/app_colours.dart';

class AppStyle {
  static TextTheme textTheme = TextTheme(
    // Title styles
    titleLarge: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: AppColours.white,
    ),
    titleMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
      color: AppColours.white,
    ),
    titleSmall: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: AppColours.white,
    ),

    // Body styles
    bodyLarge: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: AppColours.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
      color: AppColours.white,
    ),
    bodySmall: TextStyle(
      fontSize: 8.sp,
      fontWeight: FontWeight.normal,
      color: AppColours.white,
    ),

    // Label styles
    labelLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
  );

  static ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: AppColours.scaffoldBackgroundColor,
    fontFamily: 'Lufga',
    textTheme: textTheme,
    primarySwatch: Colors.blue,
  );
}

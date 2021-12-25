import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  Styles._();

  static TextStyle button = GoogleFonts.spaceMono(
    fontSize: 14.sp,
    letterSpacing: -0.25.w,
  );
  static TextStyle headline3 = GoogleFonts.anonymousPro(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subtitle1 = GoogleFonts.spaceMono(
    fontSize: 20.sp,
  );
  static TextStyle bodyText1 = GoogleFonts.spaceMono(
    fontSize: 14.sp,
  );
  static TextStyle bodyText2 = GoogleFonts.robotoMono(
    fontSize: 12.sp,
  );

  static TextTheme lightTextTheme = TextTheme(
    button: button.copyWith(color: Colors.black),
    headline3: headline3.copyWith(color: Colors.black),
    subtitle1: subtitle1.copyWith(color: Colors.black),
    bodyText1: bodyText1.copyWith(color: Colors.black87),
    bodyText2: bodyText2.copyWith(color: Colors.black87),
  );
  static TextTheme darkTextTheme = TextTheme(
    button: button.copyWith(color: Colors.white),
    headline3: headline3.copyWith(color: Colors.white),
    subtitle1: subtitle1.copyWith(color: Colors.white),
    bodyText1: bodyText1.copyWith(color: Colors.white70),
    bodyText2: bodyText2.copyWith(color: Colors.white70),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color primaryColorDark = const Color(0xFF141A2E);
  static Color blackColor = const Color(0xFF242424);
  static Color yellowColor = const Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryColor,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: Color(0xffB7935F),
          onSecondary: Colors.black,
          error: Colors.redAccent,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w400, color: blackColor),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: const Color(0xFFFFFFFF)),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: blackColor)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: primaryColor, size: 30),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white,
          backgroundColor: primaryColor));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryColorDark,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: primaryColorDark,
          onPrimary: Colors.white,
          secondary: Color(0xff141A2E),
          onSecondary: Colors.white,
          error: Colors.redAccent,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: yellowColor,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: const Color(0xFFFFFFFF)),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: primaryColor, size: 30),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.white,
          backgroundColor: primaryColorDark));
}

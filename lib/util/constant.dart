import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_PRIMARY = Color.fromARGB(255, 245, 42, 42);
const COLOR_ACCENT = Color.fromARGB(255, 250, 204, 76);
const COLOR_BACKGROUND_DARK = Color(0xFF171822);
const COLOR_BACKGROUND = Color.fromARGB(255, 170, 170, 170);
const COLOR_BACKGROUND_LIGHT = Color.fromARGB(255, 255, 255, 255);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: COLOR_BACKGROUND,
  primaryColor: COLOR_PRIMARY,
  cardColor: Color.fromARGB(255, 255, 255, 255),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 3, 3, 3),
  ),
  textTheme: TextTheme(
    button: GoogleFonts.poppins(
      fontSize: 15,
      height: 1.6,
      color: const Color(0xff212330),
      fontWeight: FontWeight.w600,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 12,
      color: const Color(0xff1B1D28),
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.poppins(
      height: 1.6,
      fontSize: 12,
      color: Color.fromARGB(255, 13, 13, 14),
      fontWeight: FontWeight.w400,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 24,
      color: const Color(0xff171822),
      fontWeight: FontWeight.w600,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 22,
      color: Color.fromARGB(255, 12, 12, 12),
      fontWeight: FontWeight.w800,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: COLOR_BACKGROUND_LIGHT),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: COLOR_BACKGROUND_DARK,
  iconTheme: const IconThemeData(
    color: Color(0xff7b7f9e),
  ),
  cardColor: const Color(0xFF212330),
  textTheme: TextTheme(
    bodyText2: GoogleFonts.poppins(
      fontSize: 12,
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.poppins(
      height: 1.6,
      fontSize: 12,
      color: const Color(0xff7b7f9e),
      fontWeight: FontWeight.w400,
    ),
    button: GoogleFonts.poppins(
      fontSize: 15,
      height: 1.6,
      color: const Color(0xff212330),
      fontWeight: FontWeight.w600,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 24,
      color: const Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 22,
      color: const Color(0xFFFFFFFF),
      fontWeight: FontWeight.w800,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 15,
      color: const Color(0xff7b7f9e),
      fontWeight: FontWeight.w600,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
  ),
);

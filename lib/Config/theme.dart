import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    
    scaffoldBackgroundColor: const Color(0XFFDFCCF1),
    fontFamily: GoogleFonts.righteous().fontFamily,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 38, fontWeight: FontWeight.w400, color: Colors.black),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
  );
}

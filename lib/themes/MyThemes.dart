import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static Color grayText = const Color(0xFF505050);
  static Color deepPurple = const Color(0xFF3A0CA3);
  static Color lightPurple = const Color(0xFF851FC8);
  static Color pink = const Color(0xFFB5179E);
  static Color lightBlue = Color.fromARGB(255, 58, 133, 219);
  static Color superLightBlue = const Color(0xFFE9FCFF);
  static Color infoLightBlue = const Color(0xFFE4F7FF);
  static Color red = Color.fromARGB(255, 158, 17, 36);
  static Color lightRed = Color.fromARGB(255, 240, 182, 190);
  static Color Green = Color.fromARGB(255, 30, 133, 51);
  static Color lightGreen = Color.fromARGB(255, 215, 250, 222);

  static List<Color> medalColors = [
    const Color(0xFF7A612F),
    const Color(0xFFB1B4C5),
    const Color(0xFFDFAE31),
    const Color(0xFFAD0505),
    const Color(0xFF32D4CB)
  ];
  static List<String> medalImgPaths = [
    'assets/images/CopperMedal.png',
    'assets/images/SilverMedal.png',
    'assets/images/GoldMedal.png',
    'assets/images/RubyMedal.png',
    'assets/images/DiamondMedal.png'
  ];

  static TextStyle josefinSansBold(
      {Color textColor = const Color(0xFF505050), required double fontSize}) {
    return GoogleFonts.josefinSans(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  static TextStyle josefinSansRegular(
      {Color textColor = const Color(0xFF535353), required double fontSize}) {
    return GoogleFonts.josefinSans(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: textColor,
    );
  }

  static TextStyle josefinSansLight(
      {Color textColor = const Color(0xFF535353), required double fontSize}) {
    return GoogleFonts.josefinSans(
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      color: textColor,
    );
  }
}

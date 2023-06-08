import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constant {
  static TextStyle popins_changeable_size(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400, required double fontSize } ) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: fontSize);

  static TextStyle popins_2xl(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 20);

  static TextStyle popins_xl(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 18);

  static TextStyle popins_lg(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 16);

  static TextStyle popins_base(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 14);

  static TextStyle popins_sm(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 12);

  static TextStyle popins_xs(
          {Color color = Colors.black,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.poppins(color: color, fontWeight: fontWeight, fontSize: 10);
}

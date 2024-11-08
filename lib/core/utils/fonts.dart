import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/resposive_font.dart';

abstract class AppFonts {
  static TextStyle getTitleFont(context,
      {double fontSize = 20,
      FontWeight fontweight = FontWeight.w600,
      Color color = const Color(0xff064061)}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontSize),
        fontWeight: fontweight,
        color: color);
  }

  static TextStyle getSubtitleFont(context,
      {double fontsize = 14,
      FontWeight fontweight = FontWeight.w400,
      Color color = const Color(0xffAAAAAA)}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontsize),
        fontWeight: fontweight,
        color: color);
  }

  static TextStyle getPrimaryFont(context,
      {double fontSize = 16,
      FontWeight fontweight = FontWeight.w400,
      Color color = const Color(0xff064061)}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontSize),
        fontWeight: fontweight,
        color: color);
  }

  static TextStyle getSelectedFont(context,
      {double fontSize = 18,
      FontWeight fontweight = FontWeight.w700,
      Color color = const Color(0xff4EB7F2)}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontSize),
        fontWeight: fontweight,
        color: color);
  }

  static TextStyle getWhiteFont(context,
      {double fontSize = 16,
      FontWeight fontweight = FontWeight.w600,
      Color color = Colors.white}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontSize),
        fontWeight: fontweight,
        color: color);
  }

  static TextStyle getGreyFont(context,
      {double fontSize = 14,
      FontWeight fontweight = FontWeight.w400,
      Color color = const Color(0xffAAAAAA)}) {
    return TextStyle(
        fontSize: resposiveFont(context, fontSize: fontSize),
        fontWeight: fontweight,
        color: color);
  }
}

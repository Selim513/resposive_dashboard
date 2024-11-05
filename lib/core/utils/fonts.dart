import 'package:flutter/material.dart';

TextStyle getTitleFont(
    {double fontsize = 20,
    FontWeight fontweight = FontWeight.w600,
    Color color = const Color(0xff064061)}) {
  return TextStyle(fontSize: fontsize, fontWeight: fontweight, color: color);
}

TextStyle getSubtitleFont(
    {double fontsize = 12,
    FontWeight fontweight = FontWeight.w400,
    Color color = const Color(0xffAAAAAA)}) {
  return TextStyle(fontSize: fontsize, fontWeight: fontweight, color: color);
}

TextStyle getPrimaryFont(
    {double fontsize = 16,
    FontWeight fontweight = FontWeight.w400,
    Color color = const Color(0xff064061)}) {
  return TextStyle(fontSize: fontsize, fontWeight: fontweight, color: color);
}

TextStyle getSelectedFont(
    {double fontsize = 18,
    FontWeight fontweight = FontWeight.w700,
    Color color = const Color(0xff4EB7F2)}) {
  return TextStyle(fontSize: fontsize, fontWeight: fontweight, color: color);
}

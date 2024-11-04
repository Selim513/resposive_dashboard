import 'package:flutter/material.dart';

double resposiveFont(context,
    {required double fontSize, required double width}) {
  double scaleFactor = getScaleFactor(context, width: width);
  double resposiveFontsize = fontSize * scaleFactor;
  return resposiveFontsize;
}

double getScaleFactor(BuildContext context, {required double width}) {
  if (width < 150) {
    return width / 100;
  } else if (width < 220) {
    return width / 150;
  } else {
    return width / 130;
  }
}

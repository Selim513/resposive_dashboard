import 'package:flutter/material.dart';

double resposiveFont(
  context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(
    context,
  );
  double resposiveFontsize = fontSize * scaleFactor;
  return resposiveFontsize;
}

double getScaleFactor(
  BuildContext context,
) {
  var width = MediaQuery.sizeOf(context).width;
  if (width < 500) {
    return width / 500;
  } else if (width < 900) {
    return width / 800;
  } else {
    return width / 1500;
  }
}

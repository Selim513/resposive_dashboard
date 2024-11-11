import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class AssetsPath {
  static SvgPicture iconsPath(
          {required String name, ColorFilter? colorFillter}) =>
      SvgPicture.asset(
        'assets/icons/$name.svg',
        colorFilter: colorFillter,
      );

  static SvgPicture imagePath(
          {required String name, ColorFilter? colorFillter}) =>
      SvgPicture.asset(
        'assets/images/$name.svg',
        colorFilter: colorFillter,
      );
}

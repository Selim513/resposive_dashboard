import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

SvgPicture iconsPath({required String name, ColorFilter? colorFillter}) =>
    SvgPicture.asset(
      'assets/icons/$name.svg',
      colorFilter: colorFillter,
    );

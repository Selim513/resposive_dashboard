import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resposive_dashboard/views/presentation/data/models/expenses_item_model.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

class AllexpensesItemHeader extends StatelessWidget {
  const AllexpensesItemHeader(
      {super.key,
      required this.items,
      required this.color,
      required this.bgColor});

  final ExpensesItemModel items;
  final Color color, bgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: bgColor,
          radius: min(MediaQuery.sizeOf(context).width * 0.04, 30),
          child: AssetsPath.iconsPath(
            name: items.icon,
            colorFillter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          FontAwesomeIcons.angleRight,
          color: Colors.white,
          size: min(MediaQuery.sizeOf(context).width * 0.04, 30),
        ),
      ],
    );
  }
}

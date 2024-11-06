import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';

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
          radius: 30,
          child: iconsPath(
            name: items.icon,
            colorFillter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.angleRight,
          color: Colors.white,
        ),
      ],
    );
  }
}

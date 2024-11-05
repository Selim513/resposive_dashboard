import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';

import 'all_expenses_header_item.dart';

class CustomActiveExpensesItem extends StatelessWidget {
  const CustomActiveExpensesItem({
    super.key,
    required this.items,
  });

  final ExpensesItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesItemHeader(
            items: items,
            color: Colors.white,
            bgColor: const Color(0xff5FBEF3),
          ),
          const Gap(30),
          Text(items.title, style: getWhiteFont()),
          Text(
            items.date,
            style: getWhiteFont(fontsize: 14, fontweight: FontWeight.w400),
          ),
          Text(
            items.amnount,
            style: getWhiteFont(fontsize: 24),
          )
        ],
      ),
    );
  }
}

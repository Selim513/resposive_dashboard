import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/all_expenses_header_item.dart';

class CustomInActiveExpensesItem extends StatelessWidget {
  const CustomInActiveExpensesItem({
    super.key,
    required this.items,
  });

  final ExpensesItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesItemHeader(
            items: items,
            color: const Color(0xff4EB7F2),
            bgColor: const Color(0xffFAFAFA),
          ),
          const Gap(30),
          Text(items.title, style: getTitleFont(fontsize: 16)),
          Text(
            items.date,
            style: getGreyFont(),
          ),
          Text(
            items.amnount,
            style: getSelectedFont(fontsize: 24),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/models/expenses_item_model.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/all_expenses_header_item.dart';

class CustomExpensesInActiveContainer extends StatelessWidget {
  const CustomExpensesInActiveContainer({
    super.key,
    required this.items,
  });

  final ExpensesItemModel items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllexpensesItemHeader(
          items: items,
          color: const Color(0xff4EB7F2),
          bgColor: const Color(0xffFAFAFA),
        ),
        const Gap(30),
        Text(items.title, style: AppFonts.getTitleFont(context, fontSize: 16)),
        Text(
          items.date,
          style: AppFonts.getGreyFont(context),
        ),
        Text(
          items.amnount,
          style: AppFonts.getSelectedFont(context, fontSize: 22),
        )
      ],
    );
  }
}

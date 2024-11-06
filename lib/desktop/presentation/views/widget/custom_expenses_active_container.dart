import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/all_expenses_header_item.dart';

class CustomEpensesActiveContainerItem extends StatelessWidget {
  const CustomEpensesActiveContainerItem({
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
    );
  }
}

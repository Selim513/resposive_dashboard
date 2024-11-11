import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/views/presentation/data/models/expenses_item_model.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/all_expenses_header_item.dart';

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
        Text(items.title, style: AppFonts.getWhiteFont(context)),
        Text(
          items.date,
          style: AppFonts.getWhiteFont(context,
              fontSize: 14, fontweight: FontWeight.w400),
        ),
        Text(
          items.amnount,
          style: AppFonts.getWhiteFont(context, fontSize: 24),
        )
      ],
    );
  }
}

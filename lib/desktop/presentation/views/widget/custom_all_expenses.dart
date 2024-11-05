import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_item.dart';

import 'custom_all_expenses_header.dart';

class CustomAllExpenses extends StatelessWidget {
  const CustomAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AllExpensesHeader(), Gap(10), CustomAllExpensesItem()],
    );
  }
}

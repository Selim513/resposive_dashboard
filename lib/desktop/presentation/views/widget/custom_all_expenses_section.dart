
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_header.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_item.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_monthly_elevated_button.dart';

class CustomAllexpensesSection extends StatelessWidget {
  const CustomAllexpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          title: 'All Expenses',
          action: CustomMonthlyElevatedButton(),
        ),
        Gap(10),
        CustomAllExpensesItem()
      ],
    );
  }
}

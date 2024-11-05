import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

import 'custom_monthly_elevated_button.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: getTitleFont(),
        ),
        const Spacer(),
        const CustomMonthlyElevatedButton()
      ],
    );
  }
}

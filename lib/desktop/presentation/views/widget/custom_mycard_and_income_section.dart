import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_header.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_monthly_elevated_button.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/my_card_view.dart';

class CustomMyCardAndIncomeSection extends StatelessWidget {
  const CustomMyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [MyCardSection(), Gap(10), IncomeSection()],
      ),
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      widgets: Column(
        children: [
          CustomHeader(
            title: 'Income',
            action: CustomMonthlyElevatedButton(),
          )
        ],
      ),
    );
  }
}

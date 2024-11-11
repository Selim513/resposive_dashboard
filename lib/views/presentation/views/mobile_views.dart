import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/all_expenses_and_quieck_invoice_section.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_drawer.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_mycard_and_income_section.dart';

class MobileViews extends StatelessWidget {
  const MobileViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: const [
          AllExpensesAndQuieckInvoiceSection(),
          CustomMyCardAndIncomeSection()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_all_expenses.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_quick_invoice_section.dart';

import 'custom_all_expenses_section.dart';

class AllExpensesAndQuieckInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuieckInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        children: [
          CustomContainer(
            widgets: CustomAllexpensesSection(),
          ),
          Gap(10),
          CustomContainer(widgets: CustomQuickInvoiceSection())
        ],
      ),
    );
  }
}

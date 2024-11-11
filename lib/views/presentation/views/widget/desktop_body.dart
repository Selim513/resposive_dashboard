import 'package:flutter/material.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/all_expenses_and_quieck_invoice_section.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_mycard_and_income_section.dart';

import 'custom_drawer.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AllExpensesAndQuieckInvoiceSection(),
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomMyCardAndIncomeSection(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

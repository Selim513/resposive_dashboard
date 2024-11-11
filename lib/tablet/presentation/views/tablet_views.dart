import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/all_expenses_and_quieck_invoice_section.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_drawer.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_mycard_and_income_section.dart';

class TabletViews extends StatelessWidget {
  const TabletViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: ListView(children: const [
              AllExpensesAndQuieckInvoiceSection(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomMyCardAndIncomeSection()),
            ])),
      ],
    );
  }
}

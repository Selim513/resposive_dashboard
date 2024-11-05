import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses.dart';

class AllExpensesAndQuieckInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuieckInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: const Column(
          children: [CustomAllExpenses()],
        ),
      ),
    );
  }
}

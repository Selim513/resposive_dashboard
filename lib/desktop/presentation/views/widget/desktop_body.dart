import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/all_expenses_and_quieck_invoice_section.dart';

import 'custom_drawer..dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: AllExpensesAndQuieckInvoiceSection(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 40,
                          ),
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
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

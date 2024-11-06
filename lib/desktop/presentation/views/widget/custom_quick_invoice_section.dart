import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_header.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_latest_transection_section.dart';

import 'custom_header_quick_invoice_icon_button.dart';

class CustomQuickInvoiceSection extends StatelessWidget {
  const CustomQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(
          title: 'Quick Invoice',
          action: CustomHeaderQuickInvoiceIconButton(),
        ),
        Gap(25),
        CustomLatestTransectionSection()
      ],
    );
  }
}

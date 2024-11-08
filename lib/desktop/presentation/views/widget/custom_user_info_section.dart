import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/my_card_view.dart';

class CustomUserInfoSection extends StatelessWidget {
  const CustomUserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: CustomContainer(
          items: Column(
        children: [
          MyCardSection(),
        ],
      )),
    );
  }
}

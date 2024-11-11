import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/models/expenses_item_model.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';

import 'custom_expenses_active_container.dart';

class CustomActiveExpensesItem extends StatelessWidget {
  const CustomActiveExpensesItem({
    super.key,
    required this.items,
  });

  final ExpensesItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: CustomEpensesActiveContainerItem(items: items),
    );
  }
}

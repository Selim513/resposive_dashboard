import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/models/expenses_item_model.dart';

import 'custom_expenses_inactive_container_item.dart';

class CustomInActiveExpensesItem extends StatelessWidget {
  const CustomInActiveExpensesItem({
    super.key,
    required this.items,
  });

  final ExpensesItemModel items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.offWhiteColor,
            width: 1,
          )),
      child: CustomExpensesInActiveContainer(items: items),
    );
  }
}

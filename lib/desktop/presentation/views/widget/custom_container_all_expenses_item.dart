import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_active_expenses_item.dart';

import 'custom_inactive_expenses_item.dart';

class CustomContainerAllExpensesItem extends StatelessWidget {
  const CustomContainerAllExpensesItem({
    super.key,
    required this.items,
    required this.isSelected,
  });
  final ExpensesItemModel items;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: isSelected
          ? CustomActiveExpensesItem(items: items)
          : CustomInActiveExpensesItem(items: items),
    );
  }
}

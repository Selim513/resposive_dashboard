import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/data/model/expenses_item_model.dart';

import 'custom_container_all_expenses_item.dart';

class CustomAllExpensesItem extends StatefulWidget {
  const CustomAllExpensesItem({super.key});

  @override
  State<CustomAllExpensesItem> createState() => _CustomAllExpensesItemState();
}

class _CustomAllExpensesItemState extends State<CustomAllExpensesItem> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(0);
            setState(() {});
          },
          child: CustomContainerAllExpensesItem(
              items: expensesItemList[0], isSelected: selectedIndex == 0),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(1);
            setState(() {});
          },
          child: CustomContainerAllExpensesItem(
            items: expensesItemList[1],
            isSelected: selectedIndex == 1,
          ),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(2);
            setState(() {});
          },
          child: CustomContainerAllExpensesItem(
            isSelected: selectedIndex == 2,
            items: expensesItemList[2],
          ),
        )),
      ],
    );
  }
}

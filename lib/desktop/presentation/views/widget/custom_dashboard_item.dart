import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';
import 'package:resposive_dashboard/desktop/data/model/dashboard_item_model.dart';

class CustomDashboardItem extends StatelessWidget {
  const CustomDashboardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dashboardItem.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: IconsPath(name: dashboardItem[index].icon),
          title: Text(
            dashboardItem[index].name,
            style: const TextStyle(
                fontSize: 16, color: primaryColor, fontWeight: FontWeight.w600),
          ),
          trailing: Container(
            height: 50,
            width: 3.3,
            color: primaryColor,
          ),
        );
      },
    );
  }
}

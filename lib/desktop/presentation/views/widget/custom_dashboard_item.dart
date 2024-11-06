import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';
import 'package:resposive_dashboard/desktop/data/model/dashboard_item_model.dart';

import '../../../../core/utils/colors.dart';

class CustomDashboardItem extends StatefulWidget {
  const CustomDashboardItem({
    super.key,
  });
  @override
  State<CustomDashboardItem> createState() => _CustomDashboardItemState();
}

class _CustomDashboardItemState extends State<CustomDashboardItem> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dashboardItem.length,
      itemBuilder: (context, index) {
        var item = dashboardItem[index];
        return GestureDetector(
          onTap: () {
            currentindex = index;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                AssetsPath.iconsPath(name: item.icon),
                const Gap(15),
                Text(
                  item.name,
                  style: currentindex == index
                      ? AppFonts.getSelectedFont(
                          context,
                          fontSize: 14,
                        )
                      : AppFonts.getPrimaryFont(
                          context,
                          fontSize: 11,
                        ),
                ),
                const Spacer(),
                currentindex == index
                    ? Container(
                        height: 50,
                        width: 3.3,
                        color: AppColors.primaryColor,
                      )
                    : const SizedBox()
              ],
            ),
          ),
        );
      },
    );
  }
}

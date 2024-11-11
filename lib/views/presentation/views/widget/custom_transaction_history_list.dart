
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

import '../../data/models/transection_history_model.dart';
import '../../../../core/utils/colors.dart';

class CustomTransactionHistoryItem extends StatelessWidget {
  const CustomTransactionHistoryItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transectionList.map(
        (item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: AppFonts.getTitleFont(context),
                      ),
                      const Gap(5),
                      Text(
                        item.date,
                        style: AppFonts.getGreyFont(context),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    item.amount,
                    style:
                        AppFonts.getSelectedFont(context, color: Colors.green),
                  )
                ],
              ),
            ),
          );
        },
      ).toList(),
     
    );
  }
}

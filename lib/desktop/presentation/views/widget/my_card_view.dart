import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_all_expenses_header.dart';

import 'custom_transaction_history_list.dart';
import 'my_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widgets: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: AppFonts.getTitleFont(context),
          ),
          const Gap(20),
          const CustomMyCard(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: AppColors.offWhiteColor,
            ),
          ),
          CustomHeader(
              title: 'Transection History',
              action: TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: AppFonts.getSelectedFont(context, fontSize: 16),
                  ))),
          Text(
            '13 April 2024',
            style: AppFonts.getGreyFont(context, fontSize: 16),
          ),
          const Gap(10),
          const CustomTransactionHistoryItem()
        ],
      ),
    );
  }
}

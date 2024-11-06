import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

import 'custom_user_details_listview.dart';
import 'send_money_section.dart';

class CustomLatestTransectionSection extends StatelessWidget {
  const CustomLatestTransectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transection',
          style: AppFonts.getTitleFont(context, fontSize: 16),
        ),
        const CustomUserDetailsListView(),
        const Gap(20),
        const Divider(
          color: AppColors.offWhiteColor,
        ),
        Gap(20),
        const SendMoneySection()
      ],
    );
  }
}

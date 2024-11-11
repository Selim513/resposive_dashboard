import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cusotm_user_info.dart';
import 'custom_dashboard_item.dart';
import 'custom_profile_settings.dart';
import 'cutom_profile_image.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      padding: const EdgeInsets.only(top: 40, left: 20, right: 10),
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          CustomProfileImage(),
          SliverToBoxAdapter(child: Gap(15)),
          CustomUserInfoDrawer(),
          SliverToBoxAdapter(child: Gap(30)),
          CustomDashboardItem(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(children: [
                Expanded(child: Gap(20)),
                CustomProfileSettings()
              ]))
        ],
      ),
    );
  }
}

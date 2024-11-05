import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/cusotm_user_info.dart';

import 'custom_dashboard_item.dart';
import 'custom_profile_settings.dart';
import 'cutom_profile_image.dart';

class CustomProfileView extends StatelessWidget {
  const CustomProfileView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      padding: const EdgeInsets.only(top: 40, left: 20, right: 10),
      color: Colors.white,
      child: Column(
        children: [
          const CustomProfileImage(),
          const Gap(15),
          CusotmUserInfo(
           
          ),
          const Gap(30),
          Flexible(
              child: CustomDashboardItem(
           
          )),
          CustomProfileSettings(
           
          )
        ],
      ),
    );
  }
}

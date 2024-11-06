
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';
import 'package:resposive_dashboard/desktop/data/model/user_detail_model.dart';

class CustomUserDetailLatestTransectionSection extends StatelessWidget {
  const CustomUserDetailLatestTransectionSection({
    super.key,
    required this.user,
  });
  final UserDetailModel user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: AppColors.bgColor),
        child: Row(
          children: [
            AssetsPath.imagePath(name: user.image),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.title,
                  style: AppFonts.getTitleFont(context),
                ),
                Text(
                  user.subtitle,
                  style: AppFonts.getSubtitleFont(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

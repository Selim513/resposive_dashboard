import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/fonts.dart';

class CustomUserDetails extends StatelessWidget {
  const CustomUserDetails({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.bgColor),
      child: Row(
        children: [
          AssetsPath.imagePath(name: '$image'),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: AppFonts.getTitleFont(
                      context,
                      fontSize: 16,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    subtitle,
                    style: AppFonts.getSubtitleFont(context),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

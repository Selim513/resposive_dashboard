import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

class CustomUserInfoDrawer extends StatelessWidget {
  const CustomUserInfoDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomUserDeetails(
      image: 'person1',
      title: 'Ahmed Selim',
      subtitle: 'ahmedshaabanselem@gmail.com',
    );
  }
}

class CustomUserDeetails extends StatelessWidget {
  const CustomUserDeetails({
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
          AssetsPath.imagePath(name: 'person1'),
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

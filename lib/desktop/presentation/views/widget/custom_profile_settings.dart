import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

class CustomProfileSettings extends StatelessWidget {
  const CustomProfileSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              AssetsPath.iconsPath(
                name: 'setting',
              ),
              const Gap(10),
              Text(
                'Settings System',
                style: AppFonts.getPrimaryFont(
                  context,
                  fontSize: 10,
                ),
              )
            ],
          ),
          const Gap(20),
          Row(
            children: [
              AssetsPath.iconsPath(name: 'logout'),
              const Gap(10),
              Text('Logout account',
                  style: AppFonts.getPrimaryFont(
                    context,
                    fontSize: 10,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

// class CustomResposiveText extends StatelessWidget {
//   const CustomResposiveText({
//     super.key,
//     required this.text,
//     required this.fontSize,
//   });
//   final String text;
//   final double fontSize;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: getPrimaryFont(
//         fontsize: resposiveFont(context, fontSize: fontSize, width: null),
//       ),
//     );
//   }
// }

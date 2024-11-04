import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/icon_path.dart';

import '../../../../core/utils/resposive_font.dart';

class CustomProfileSettings extends StatelessWidget {
  const CustomProfileSettings({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Row(
            children: [
              IconsPath(
                name: 'setting',
              ),
              const Gap(10),
              Text(
                'Settings System',
                style: getPrimaryFont(
                    fontsize:
                        resposiveFont(context, fontSize: 10, width: width)),
              )
            ],
          ),
          const Gap(20),
          Row(
            children: [
              IconsPath(name: 'logout'),
              const Gap(10),
              Text('Settings system',
                  style: getPrimaryFont(
                    fontsize:
                        resposiveFont(context, fontSize: 10, width: width),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/utils/resposive_font.dart';

class CusotmUserInfo extends StatelessWidget {
  const CusotmUserInfo({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: bgColor),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/person1.svg'),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmed Selim',
                style: getTitleFont(
                    fontsize:
                        resposiveFont(context, fontSize: 10,)),
              ),
              Text(
                'example@gmail.com',
                style: getSubtitleFont(
                    fontsize:
                        resposiveFont(context, fontSize: 8,)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

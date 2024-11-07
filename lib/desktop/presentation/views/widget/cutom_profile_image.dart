
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/colors.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color:AppColors. greyColor,
        width: 193,
        height: 53,
        child: SvgPicture.asset(
          'assets/icons/image.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

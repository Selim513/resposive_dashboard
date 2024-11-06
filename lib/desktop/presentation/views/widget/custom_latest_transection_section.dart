import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

class CustomLatestTransectionSection extends StatelessWidget {
  const CustomLatestTransectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transection',
          style: AppFonts.getTitleFont(context,fontSize: 16),
        ),

      ],
    );
  }
}

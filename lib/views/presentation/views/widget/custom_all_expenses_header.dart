import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    required this.action,
  });
  final String title;
  final Widget action;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:AppFonts. getTitleFont(context),
        ),
        const Spacer(),
        action
      ],
    );
  }
}

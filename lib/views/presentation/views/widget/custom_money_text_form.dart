
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/widgets/custom_text_form_field.dart';

import '../../../../core/utils/fonts.dart';

class CustomSendMoneyForm extends StatelessWidget {
  const CustomSendMoneyForm({
    super.key,
    required this.title,
    required this.hint,
    this.controller,
    this.validator,
  });
  final String title, hint;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.getPrimaryFont(context),
          ),
          const Gap(10),
          CustomTextFormField(
            hintText: hint,
            controller: controller,
            validator: validator,
          )
        ],
      ),
    );
  }
}

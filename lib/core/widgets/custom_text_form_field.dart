import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, required this.hintText, this.validator, this.controller});
  final String hintText;
  final String? Function(String? value)? validator;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          fillColor: AppColors.offWhiteColor,
          filled: true,
          enabledBorder: customOutLineBorder(),
          focusedBorder: customOutLineBorder(),
          errorBorder: customOutLineBorder(),
          focusedErrorBorder: customOutLineBorder(),
          hintText: hintText,
          hintStyle: AppFonts.getGreyFont(context)),
    );
  }

  OutlineInputBorder customOutLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    );
  }
}

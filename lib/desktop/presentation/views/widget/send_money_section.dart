import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';
import 'package:resposive_dashboard/core/widgets/custom_text_form_field.dart';

class SendMoneySection extends StatelessWidget {
  const SendMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomSendMoneyForm(
                title: 'Customer name',
                hint: 'Type Customer name',
              ),
            ),
            Expanded(
              child: CustomSendMoneyForm(
                title: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Expanded(
                child: CustomSendMoneyForm(
                  title: 'Item name',
                  hint: 'Type item name',
                ),
              ),
              Expanded(
                child: CustomSendMoneyForm(
                  title: 'USD ',
                  hint: 'Item mount',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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

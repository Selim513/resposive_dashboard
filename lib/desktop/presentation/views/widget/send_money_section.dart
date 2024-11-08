import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';

import '../../../../core/utils/fonts.dart';
import '../../../../core/utils/scaffold_messengers.dart';
import 'custom_money_text_form.dart';

class SendMoneySection extends StatelessWidget {
  const SendMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomSendMoneyForm(
                  title: 'Customer Name',
                  hint: 'Type Customer Name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Customer Name is required';
                    }
                    return null;
                  },
                ),
              ),
              Expanded(
                child: CustomSendMoneyForm(
                  title: 'Customer email',
                  hint: 'Type Customer Email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Customer Email is required';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          const Gap(15),
          Row(
            children: [
              Expanded(
                  child: CustomSendMoneyForm(
                title: 'Item Name',
                hint: 'Type Item Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Item Name is required';
                  }
                  return null;
                },
              )),
              Expanded(
                  child: CustomSendMoneyForm(
                title: 'Item amount',
                hint: 'USD',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Item Amount is required';
                  }
                  return null;
                },
              )),
            ],
          ),
          const Gap(15),
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add more details',
                      style: AppFonts.getSelectedFont(context),
                    )),
              ),
              Expanded(
                child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: AppColors.primaryColor),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            customSuccessMessage(context);
                          }
                        },
                        child: Text(
                          'Send Money',
                          style: AppFonts.getWhiteFont(context, fontSize: 18),
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}

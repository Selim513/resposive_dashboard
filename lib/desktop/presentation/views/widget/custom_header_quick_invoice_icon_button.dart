import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class CustomHeaderQuickInvoiceIconButton extends StatelessWidget {
  const CustomHeaderQuickInvoiceIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(backgroundColor: AppColors.offWhiteColor),
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: AppColors.primaryColor,
          size: 18,
        ));
  }
}

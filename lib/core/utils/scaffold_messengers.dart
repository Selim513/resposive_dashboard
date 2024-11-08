
import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

void customSuccessMessage(
  context,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Transaction Successful!',
        style: AppFonts.getWhiteFont(context),
      ),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 2),
    ),
  );
}

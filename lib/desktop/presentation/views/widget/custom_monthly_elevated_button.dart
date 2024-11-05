import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/fonts.dart';

class CustomMonthlyElevatedButton extends StatelessWidget {
  const CustomMonthlyElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xffF1F1F1)),
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {},
        child: Row(
          children: [
            Text(
              'Monthly',
              style: getPrimaryFont(fontweight: FontWeight.w500),
            ),
            const Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ));
  }
}
